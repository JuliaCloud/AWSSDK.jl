#==============================================================================#
# ElasticBeanstalk.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/elasticbeanstalk-2010-12-01.normal.json
#==============================================================================#

__precompile__()

module ElasticBeanstalk

using AWSCore


"""
    using AWSSDK.ElasticBeanstalk.abort_environment_update
    abort_environment_update([::AWSConfig], arguments::Dict)
    abort_environment_update([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "AbortEnvironmentUpdate", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "AbortEnvironmentUpdate", <keyword arguments>)

# AbortEnvironmentUpdate Operation

Cancels in-progress environment configuration update or application version deployment.

# Arguments

## `EnvironmentId = ::String`
This specifies the ID of the environment with the in-progress update that you want to cancel.


## `EnvironmentName = ::String`
This specifies the name of the environment with the in-progress update that you want to cancel.




# Exceptions

`InsufficientPrivilegesException`.

# Example: To abort a deployment

The following code aborts a running application version deployment for an environment named my-env:

Input:
```
[
    "EnvironmentName" => "my-env"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/AbortEnvironmentUpdate)
"""
@inline abort_environment_update(aws::AWSConfig=default_aws_config(); args...) = abort_environment_update(aws, args)

@inline abort_environment_update(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "AbortEnvironmentUpdate", args)

@inline abort_environment_update(args) = abort_environment_update(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.apply_environment_managed_action
    apply_environment_managed_action([::AWSConfig], arguments::Dict)
    apply_environment_managed_action([::AWSConfig]; ActionId=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "ApplyEnvironmentManagedAction", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "ApplyEnvironmentManagedAction", ActionId=, <keyword arguments>)

# ApplyEnvironmentManagedAction Operation

Applies a scheduled managed action immediately. A managed action can be applied only if its status is `Scheduled`. Get the status and action ID of a managed action with [DescribeEnvironmentManagedActions](@ref).

# Arguments

## `EnvironmentName = ::String`
The name of the target environment.


## `EnvironmentId = ::String`
The environment ID of the target environment.


## `ActionId = ::String` -- *Required*
The action ID of the scheduled managed action to execute.




# Returns

`ApplyEnvironmentManagedActionResult`

# Exceptions

`ElasticBeanstalkServiceException` or `ManagedActionInvalidStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplyEnvironmentManagedAction)
"""
@inline apply_environment_managed_action(aws::AWSConfig=default_aws_config(); args...) = apply_environment_managed_action(aws, args)

@inline apply_environment_managed_action(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "ApplyEnvironmentManagedAction", args)

@inline apply_environment_managed_action(args) = apply_environment_managed_action(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.check_dnsavailability
    check_dnsavailability([::AWSConfig], arguments::Dict)
    check_dnsavailability([::AWSConfig]; CNAMEPrefix=)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "CheckDNSAvailability", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "CheckDNSAvailability", CNAMEPrefix=)

# CheckDNSAvailability Operation

Checks if the specified CNAME is available.

# Arguments

## `CNAMEPrefix = ::String` -- *Required*
The prefix used when this CNAME is reserved.




# Returns

`CheckDNSAvailabilityResultMessage`

# Example: To check the availability of a CNAME

The following operation checks the availability of the subdomain my-cname:

Input:
```
[
    "CNAMEPrefix" => "my-cname"
]
```

Output:
```
Dict(
    "Available" => true,
    "FullyQualifiedCNAME" => "my-cname.us-west-2.elasticbeanstalk.com"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CheckDNSAvailability)
"""
@inline check_dnsavailability(aws::AWSConfig=default_aws_config(); args...) = check_dnsavailability(aws, args)

@inline check_dnsavailability(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "CheckDNSAvailability", args)

@inline check_dnsavailability(args) = check_dnsavailability(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.compose_environments
    compose_environments([::AWSConfig], arguments::Dict)
    compose_environments([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "ComposeEnvironments", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "ComposeEnvironments", <keyword arguments>)

# ComposeEnvironments Operation

Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named `env.yaml`. See [Compose Environments](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html) for details.

# Arguments

## `ApplicationName = ::String`
The name of the application to which the specified source bundles belong.


## `GroupName = ::String`
The name of the group to which the target environments belong. Specify a group name only if the environment name defined in each target environment's manifest ends with a + (plus) character. See [Environment Manifest (env.yaml)](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html) for details.


## `VersionLabels = [::String, ...]`
A list of version labels, specifying one or more application source bundles that belong to the target application. Each source bundle must include an environment manifest that specifies the name of the environment and the name of the solution stack to use, and optionally can specify environment links to create.




# Returns

`EnvironmentDescriptionsMessage`

# Exceptions

`TooManyEnvironmentsException` or `InsufficientPrivilegesException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ComposeEnvironments)
"""
@inline compose_environments(aws::AWSConfig=default_aws_config(); args...) = compose_environments(aws, args)

@inline compose_environments(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "ComposeEnvironments", args)

@inline compose_environments(args) = compose_environments(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.create_application
    create_application([::AWSConfig], arguments::Dict)
    create_application([::AWSConfig]; ApplicationName=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "CreateApplication", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "CreateApplication", ApplicationName=, <keyword arguments>)

# CreateApplication Operation

Creates an application that has one configuration template named `default` and no application versions.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application.

Constraint: This name must be unique within your account. If the specified name already exists, the action returns an `InvalidParameterValue` error.


## `Description = ::String`
Describes the application.


## `ResourceLifecycleConfig = [ ... ]`
Specify an application resource lifecycle configuration to prevent your application from accumulating too many versions.
```
 ResourceLifecycleConfig = [
        "ServiceRole" =>  ::String,
        "VersionLifecycleConfig" =>  [
            "MaxCountRule" =>  [
                "Enabled" => <required> ::Bool,
                "MaxCount" =>  ::Int,
                "DeleteSourceFromS3" =>  ::Bool
            ],
            "MaxAgeRule" =>  [
                "Enabled" => <required> ::Bool,
                "MaxAgeInDays" =>  ::Int,
                "DeleteSourceFromS3" =>  ::Bool
            ]
        ]
    ]
```



# Returns

`ApplicationDescriptionMessage`

# Exceptions

`TooManyApplicationsException`.

# Example: To create a new application

The following operation creates a new application named my-app:

Input:
```
[
    "ApplicationName" => "my-app",
    "Description" => "my application"
]
```

Output:
```
Dict(
    "Application" => Dict(
        "ApplicationName" => "my-app",
        "ConfigurationTemplates" => [

        ],
        "DateCreated" => "2015-02-12T18:32:21.181Z",
        "DateUpdated" => "2015-02-12T18:32:21.181Z",
        "Description" => "my application"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateApplication)
"""
@inline create_application(aws::AWSConfig=default_aws_config(); args...) = create_application(aws, args)

@inline create_application(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "CreateApplication", args)

@inline create_application(args) = create_application(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.create_application_version
    create_application_version([::AWSConfig], arguments::Dict)
    create_application_version([::AWSConfig]; ApplicationName=, VersionLabel=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "CreateApplicationVersion", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "CreateApplicationVersion", ApplicationName=, VersionLabel=, <keyword arguments>)

# CreateApplicationVersion Operation

Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows:

Specify a commit in an AWS CodeCommit repository with `SourceBuildInformation`.

Specify a build in an AWS CodeBuild with `SourceBuildInformation` and `BuildConfiguration`.

Specify a source bundle in S3 with `SourceBundle`

Omit both `SourceBuildInformation` and `SourceBundle` to use the default sample application.

**Note**
> Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application. If no application is found with this name, and `AutoCreateApplication` is `false`, returns an `InvalidParameterValue` error.


## `VersionLabel = ::String` -- *Required*
A label identifying this version.

Constraint: Must be unique per application. If an application version already exists with this label for the specified application, AWS Elastic Beanstalk returns an `InvalidParameterValue` error.


## `Description = ::String`
Describes this version.


## `SourceBuildInformation = [ ... ]`
Specify a commit in an AWS CodeCommit Git repository to use as the source code for the application version.
```
 SourceBuildInformation = [
        "SourceType" => <required> "Git" or "Zip",
        "SourceRepository" => <required> "CodeCommit" or "S3",
        "SourceLocation" => <required> ::String
    ]
```

## `SourceBundle = [ ... ]`
The Amazon S3 bucket and key that identify the location of the source bundle for this version.

**Note**
> The Amazon S3 bucket must be in the same region as the environment.

Specify a source bundle in S3 or a commit in an AWS CodeCommit repository (with `SourceBuildInformation`), but not both. If neither `SourceBundle` nor `SourceBuildInformation` are provided, Elastic Beanstalk uses a sample application.
```
 SourceBundle = [
        "S3Bucket" =>  ::String,
        "S3Key" =>  ::String
    ]
```

## `BuildConfiguration = [ ... ]`
Settings for an AWS CodeBuild build.
```
 BuildConfiguration = [
        "ArtifactName" =>  ::String,
        "CodeBuildServiceRole" => <required> ::String,
        "ComputeType" =>  "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM" or "BUILD_GENERAL1_LARGE",
        "Image" => <required> ::String,
        "TimeoutInMinutes" =>  ::Int
    ]
```

## `AutoCreateApplication = ::Bool`
Set to `true` to create an application with the specified name if it doesn't already exist.


## `Process = ::Bool`
Pre-processes and validates the environment manifest (`env.yaml`) and configuration files (`*.config` files in the `.ebextensions` folder) in the source bundle. Validating configuration files can identify issues prior to deploying the application version to an environment.

You must turn processing on for application versions that you create using AWS CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3, processing is optional.

**Note**
> The `Process` option validates Elastic Beanstalk configuration files. It doesn't validate your application's configuration files, like proxy server or Docker configuration.




# Returns

`ApplicationVersionDescriptionMessage`

# Exceptions

`TooManyApplicationsException`, `TooManyApplicationVersionsException`, `InsufficientPrivilegesException`, `S3LocationNotInServiceRegionException` or `CodeBuildNotInServiceRegionException`.

# Example: To create a new application

The following operation creates a new version (v1) of an application named my-app:

Input:
```
[
    "ApplicationName" => "my-app",
    "AutoCreateApplication" => true,
    "Description" => "my-app-v1",
    "Process" => true,
    "SourceBundle" => [
        "S3Bucket" => "my-bucket",
        "S3Key" => "sample.war"
    ],
    "VersionLabel" => "v1"
]
```

Output:
```
Dict(
    "ApplicationVersion" => Dict(
        "ApplicationName" => "my-app",
        "DateCreated" => "2015-02-03T23:01:25.412Z",
        "DateUpdated" => "2015-02-03T23:01:25.412Z",
        "Description" => "my-app-v1",
        "SourceBundle" => Dict(
            "S3Bucket" => "my-bucket",
            "S3Key" => "sample.war"
        ),
        "VersionLabel" => "v1"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateApplicationVersion)
"""
@inline create_application_version(aws::AWSConfig=default_aws_config(); args...) = create_application_version(aws, args)

@inline create_application_version(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "CreateApplicationVersion", args)

@inline create_application_version(args) = create_application_version(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.create_configuration_template
    create_configuration_template([::AWSConfig], arguments::Dict)
    create_configuration_template([::AWSConfig]; ApplicationName=, TemplateName=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "CreateConfigurationTemplate", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "CreateConfigurationTemplate", ApplicationName=, TemplateName=, <keyword arguments>)

# CreateConfigurationTemplate Operation

Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings.

Related Topics

*   [DescribeConfigurationOptions](@ref)

*   [DescribeConfigurationSettings](@ref)

*   [ListAvailableSolutionStacks](@ref)

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application to associate with this configuration template. If no application is found with this name, AWS Elastic Beanstalk returns an `InvalidParameterValue` error.


## `TemplateName = ::String` -- *Required*
The name of the configuration template.

Constraint: This name must be unique per application.

Default: If a configuration template already exists with this name, AWS Elastic Beanstalk returns an `InvalidParameterValue` error.


## `SolutionStackName = ::String`
The name of the solution stack used by this configuration. The solution stack specifies the operating system, architecture, and application server for a configuration template. It determines the set of configuration options as well as the possible and default values.

Use [ListAvailableSolutionStacks](@ref) to obtain a list of available solution stacks.

A solution stack name or a source configuration parameter must be specified, otherwise AWS Elastic Beanstalk returns an `InvalidParameterValue` error.

If a solution stack name is not specified and the source configuration parameter is specified, AWS Elastic Beanstalk uses the same solution stack as the source configuration template.


## `PlatformArn = ::String`
The ARN of the custom platform.


## `SourceConfiguration = [ ... ]`
If specified, AWS Elastic Beanstalk uses the configuration values from the specified configuration template to create a new configuration.

Values specified in the `OptionSettings` parameter of this call overrides any values obtained from the `SourceConfiguration`.

If no configuration template is found, returns an `InvalidParameterValue` error.

Constraint: If both the solution stack name parameter and the source configuration parameters are specified, the solution stack of the source configuration template must match the specified solution stack name or else AWS Elastic Beanstalk returns an `InvalidParameterCombination` error.
```
 SourceConfiguration = [
        "ApplicationName" =>  ::String,
        "TemplateName" =>  ::String
    ]
```

## `EnvironmentId = ::String`
The ID of the environment used with this configuration template.


## `Description = ::String`
Describes this configuration.


## `OptionSettings = [[ ... ], ...]`
If specified, AWS Elastic Beanstalk sets the specified configuration option to the requested value. The new value overrides the value obtained from the solution stack or the source configuration template.
```
 OptionSettings = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`ConfigurationSettingsDescription`

# Exceptions

`InsufficientPrivilegesException`, `TooManyBucketsException` or `TooManyConfigurationTemplatesException`.

# Example: To create a configuration template

The following operation creates a configuration template named my-app-v1 from the settings applied to an environment with the id e-rpqsewtp2j:

Input:
```
[
    "ApplicationName" => "my-app",
    "EnvironmentId" => "e-rpqsewtp2j",
    "TemplateName" => "my-app-v1"
]
```

Output:
```
Dict(
    "ApplicationName" => "my-app",
    "DateCreated" => "2015-08-12T18:40:39Z",
    "DateUpdated" => "2015-08-12T18:40:39Z",
    "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    "TemplateName" => "my-app-v1"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateConfigurationTemplate)
"""
@inline create_configuration_template(aws::AWSConfig=default_aws_config(); args...) = create_configuration_template(aws, args)

@inline create_configuration_template(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "CreateConfigurationTemplate", args)

@inline create_configuration_template(args) = create_configuration_template(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.create_environment
    create_environment([::AWSConfig], arguments::Dict)
    create_environment([::AWSConfig]; ApplicationName=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "CreateEnvironment", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "CreateEnvironment", ApplicationName=, <keyword arguments>)

# CreateEnvironment Operation

Launches an environment for the specified application using the specified configuration.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application that contains the version to be deployed.

If no application is found with this name, `CreateEnvironment` returns an `InvalidParameterValue` error.


## `EnvironmentName = ::String`
A unique name for the deployment environment. Used in the application URL.

Constraint: Must be from 4 to 40 characters in length. The name can contain only letters, numbers, and hyphens. It cannot start or end with a hyphen. This name must be unique within a region in your account. If the specified name already exists in the region, AWS Elastic Beanstalk returns an `InvalidParameterValue` error.

Default: If the CNAME parameter is not specified, the environment name becomes part of the CNAME, and therefore part of the visible URL for your application.


## `GroupName = ::String`
The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name parameter. See [Environment Manifest (env.yaml)](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html) for details.


## `Description = ::String`
Describes this environment.


## `CNAMEPrefix = ::String`
If specified, the environment attempts to use this value as the prefix for the CNAME. If not specified, the CNAME is generated automatically by appending a random alphanumeric string to the environment name.


## `Tier = [ ... ]`
This specifies the tier to use for creating this environment.
```
 Tier = [
        "Name" =>  ::String,
        "Type" =>  ::String,
        "Version" =>  ::String
    ]
```

## `Tags = [[ ... ], ...]`
This specifies the tags applied to resources in the environment.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `VersionLabel = ::String`
The name of the application version to deploy.

If the specified application has no associated application versions, AWS Elastic Beanstalk `UpdateEnvironment` returns an `InvalidParameterValue` error.

Default: If not specified, AWS Elastic Beanstalk attempts to launch the sample application in the container.


## `TemplateName = ::String`
The name of the configuration template to use in deployment. If no configuration template is found with this name, AWS Elastic Beanstalk returns an `InvalidParameterValue` error.


## `SolutionStackName = ::String`
This is an alternative to specifying a template name. If specified, AWS Elastic Beanstalk sets the configuration values to the default values associated with the specified solution stack.

For a list of current solution stacks, see [Elastic Beanstalk Supported Platforms](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html).


## `PlatformArn = ::String`
The ARN of the platform.


## `OptionSettings = [[ ... ], ...]`
If specified, AWS Elastic Beanstalk sets the specified configuration options to the requested value in the configuration set for the new environment. These override the values obtained from the solution stack or the configuration template.
```
 OptionSettings = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `OptionsToRemove = [[ ... ], ...]`
A list of custom user-defined configuration options to remove from the configuration set for this new environment.
```
 OptionsToRemove = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String
    ], ...]
```



# Returns

`EnvironmentDescription`

# Exceptions

`TooManyEnvironmentsException` or `InsufficientPrivilegesException`.

# Example: To create a new environment for an application

The following operation creates a new environment for version v1 of a java application named my-app:

Input:
```
[
    "ApplicationName" => "my-app",
    "CNAMEPrefix" => "my-app",
    "EnvironmentName" => "my-env",
    "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    "VersionLabel" => "v1"
]
```

Output:
```
Dict(
    "ApplicationName" => "my-app",
    "CNAME" => "my-app.elasticbeanstalk.com",
    "DateCreated" => "2015-02-03T23:04:54.479Z",
    "DateUpdated" => "2015-02-03T23:04:54.479Z",
    "EnvironmentId" => "e-izqpassy4h",
    "EnvironmentName" => "my-env",
    "Health" => "Grey",
    "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    "Status" => "Launching",
    "Tier" => Dict(
        "Name" => "WebServer",
        "Type" => "Standard",
        "Version" => " "
    ),
    "VersionLabel" => "v1"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateEnvironment)
"""
@inline create_environment(aws::AWSConfig=default_aws_config(); args...) = create_environment(aws, args)

@inline create_environment(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "CreateEnvironment", args)

@inline create_environment(args) = create_environment(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.create_platform_version
    create_platform_version([::AWSConfig], arguments::Dict)
    create_platform_version([::AWSConfig]; PlatformName=, PlatformVersion=, PlatformDefinitionBundle=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "CreatePlatformVersion", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "CreatePlatformVersion", PlatformName=, PlatformVersion=, PlatformDefinitionBundle=, <keyword arguments>)

# CreatePlatformVersion Operation

Create a new version of your custom platform.

# Arguments

## `PlatformName = ::String` -- *Required*
The name of your custom platform.


## `PlatformVersion = ::String` -- *Required*
The number, such as 1.0.2, for the new platform version.


## `PlatformDefinitionBundle = [ ... ]` -- *Required*
The location of the platform definition archive in Amazon S3.
```
 PlatformDefinitionBundle = [
        "S3Bucket" =>  ::String,
        "S3Key" =>  ::String
    ]
```

## `EnvironmentName = ::String`
The name of the builder environment.


## `OptionSettings = [[ ... ], ...]`
The configuration option settings to apply to the builder environment.
```
 OptionSettings = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreatePlatformVersionResult`

# Exceptions

`InsufficientPrivilegesException`, `ElasticBeanstalkServiceException` or `TooManyPlatformsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreatePlatformVersion)
"""
@inline create_platform_version(aws::AWSConfig=default_aws_config(); args...) = create_platform_version(aws, args)

@inline create_platform_version(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "CreatePlatformVersion", args)

@inline create_platform_version(args) = create_platform_version(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.create_storage_location
    create_storage_location([::AWSConfig])
    

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "CreateStorageLocation",)
    

# CreateStorageLocation Operation

Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, `CreateStorageLocation` still returns the bucket name but does not create a new bucket.

# Returns

`CreateStorageLocationResultMessage`

# Exceptions

`TooManyBucketsException`, `S3SubscriptionRequiredException` or `InsufficientPrivilegesException`.

# Example: To create a new environment for an application

The following operation creates a new environment for version v1 of a java application named my-app:

Output:
```
Dict(
    "S3Bucket" => "elasticbeanstalk-us-west-2-0123456789012"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateStorageLocation)
"""
@inline create_storage_location(aws::AWSConfig=default_aws_config(); args...) = create_storage_location(aws, args)

@inline create_storage_location(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "CreateStorageLocation", args)

@inline create_storage_location(args) = create_storage_location(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.delete_application
    delete_application([::AWSConfig], arguments::Dict)
    delete_application([::AWSConfig]; ApplicationName=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DeleteApplication", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DeleteApplication", ApplicationName=, <keyword arguments>)

# DeleteApplication Operation

Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.

**Note**
> You cannot delete an application that has a running environment.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application to delete.


## `TerminateEnvByForce = ::Bool`
When set to true, running environments will be terminated before deleting the application.




# Exceptions

`OperationInProgressException`.

# Example: To delete an application

The following operation deletes an application named my-app:

Input:
```
[
    "ApplicationName" => "my-app"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteApplication)
"""
@inline delete_application(aws::AWSConfig=default_aws_config(); args...) = delete_application(aws, args)

@inline delete_application(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DeleteApplication", args)

@inline delete_application(args) = delete_application(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.delete_application_version
    delete_application_version([::AWSConfig], arguments::Dict)
    delete_application_version([::AWSConfig]; ApplicationName=, VersionLabel=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DeleteApplicationVersion", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DeleteApplicationVersion", ApplicationName=, VersionLabel=, <keyword arguments>)

# DeleteApplicationVersion Operation

Deletes the specified version from the specified application.

**Note**
> You cannot delete an application version that is associated with a running environment.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application to which the version belongs.


## `VersionLabel = ::String` -- *Required*
The label of the version to delete.


## `DeleteSourceBundle = ::Bool`
Set to `true` to delete the source bundle from your storage bucket. Otherwise, the application version is deleted only from Elastic Beanstalk and the source bundle remains in Amazon S3.




# Exceptions

`SourceBundleDeletionException`, `InsufficientPrivilegesException`, `OperationInProgressException` or `S3LocationNotInServiceRegionException`.

# Example: To delete an application version

The following operation deletes an application version named 22a0-stage-150819_182129 for an application named my-app:

Input:
```
[
    "ApplicationName" => "my-app",
    "DeleteSourceBundle" => true,
    "VersionLabel" => "22a0-stage-150819_182129"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteApplicationVersion)
"""
@inline delete_application_version(aws::AWSConfig=default_aws_config(); args...) = delete_application_version(aws, args)

@inline delete_application_version(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DeleteApplicationVersion", args)

@inline delete_application_version(args) = delete_application_version(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.delete_configuration_template
    delete_configuration_template([::AWSConfig], arguments::Dict)
    delete_configuration_template([::AWSConfig]; ApplicationName=, TemplateName=)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DeleteConfigurationTemplate", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DeleteConfigurationTemplate", ApplicationName=, TemplateName=)

# DeleteConfigurationTemplate Operation

Deletes the specified configuration template.

**Note**
> When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application to delete the configuration template from.


## `TemplateName = ::String` -- *Required*
The name of the configuration template to delete.




# Exceptions

`OperationInProgressException`.

# Example: To delete a configuration template

The following operation deletes a configuration template named my-template for an application named my-app:

Input:
```
[
    "ApplicationName" => "my-app",
    "TemplateName" => "my-template"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteConfigurationTemplate)
"""
@inline delete_configuration_template(aws::AWSConfig=default_aws_config(); args...) = delete_configuration_template(aws, args)

@inline delete_configuration_template(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DeleteConfigurationTemplate", args)

@inline delete_configuration_template(args) = delete_configuration_template(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.delete_environment_configuration
    delete_environment_configuration([::AWSConfig], arguments::Dict)
    delete_environment_configuration([::AWSConfig]; ApplicationName=, EnvironmentName=)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DeleteEnvironmentConfiguration", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DeleteEnvironmentConfiguration", ApplicationName=, EnvironmentName=)

# DeleteEnvironmentConfiguration Operation

Deletes the draft configuration associated with the running environment.

Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using [DescribeConfigurationSettings](@ref) while the update is in progress or if the update fails. The `DeploymentStatus` for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application the environment is associated with.


## `EnvironmentName = ::String` -- *Required*
The name of the environment to delete the draft configuration from.




# Example: To delete a draft configuration

The following operation deletes a draft configuration for an environment named my-env:

Input:
```
[
    "ApplicationName" => "my-app",
    "EnvironmentName" => "my-env"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteEnvironmentConfiguration)
"""
@inline delete_environment_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_environment_configuration(aws, args)

@inline delete_environment_configuration(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DeleteEnvironmentConfiguration", args)

@inline delete_environment_configuration(args) = delete_environment_configuration(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.delete_platform_version
    delete_platform_version([::AWSConfig], arguments::Dict)
    delete_platform_version([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DeletePlatformVersion", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DeletePlatformVersion", <keyword arguments>)

# DeletePlatformVersion Operation

Deletes the specified version of a custom platform.

# Arguments

## `PlatformArn = ::String`
The ARN of the version of the custom platform.




# Returns

`DeletePlatformVersionResult`

# Exceptions

`OperationInProgressException`, `InsufficientPrivilegesException`, `ElasticBeanstalkServiceException` or `PlatformVersionStillReferencedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeletePlatformVersion)
"""
@inline delete_platform_version(aws::AWSConfig=default_aws_config(); args...) = delete_platform_version(aws, args)

@inline delete_platform_version(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DeletePlatformVersion", args)

@inline delete_platform_version(args) = delete_platform_version(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_account_attributes
    describe_account_attributes([::AWSConfig])
    

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeAccountAttributes",)
    

# DescribeAccountAttributes Operation

Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account.

The result currently has one set of attributes—resource quotas.

# Returns

`DescribeAccountAttributesResult`

# Exceptions

`InsufficientPrivilegesException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeAccountAttributes)
"""
@inline describe_account_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_account_attributes(aws, args)

@inline describe_account_attributes(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeAccountAttributes", args)

@inline describe_account_attributes(args) = describe_account_attributes(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_application_versions
    describe_application_versions([::AWSConfig], arguments::Dict)
    describe_application_versions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeApplicationVersions", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeApplicationVersions", <keyword arguments>)

# DescribeApplicationVersions Operation

Retrieve a list of application versions.

# Arguments

## `ApplicationName = ::String`
Specify an application name to show only application versions for that application.


## `VersionLabels = [::String, ...]`
Specify a version label to show a specific application version.


## `MaxRecords = ::Int`
For a paginated request. Specify a maximum number of application versions to include in each response.

If no `MaxRecords` is specified, all available application versions are retrieved in a single response.


## `NextToken = ::String`
For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request.

If no `NextToken` is specified, the first page is retrieved.




# Returns

`ApplicationVersionDescriptionsMessage`

# Example: To view information about an application version

The following operation retrieves information about an application version labeled v2:

Input:
```
[
    "ApplicationName" => "my-app",
    "VersionLabels" => [
        "v2"
    ]
]
```

Output:
```
Dict(
    "ApplicationVersions" => [
        Dict(
            "ApplicationName" => "my-app",
            "DateCreated" => "2015-07-23T01:32:26.079Z",
            "DateUpdated" => "2015-07-23T01:32:26.079Z",
            "Description" => "update cover page",
            "SourceBundle" => Dict(
                "S3Bucket" => "elasticbeanstalk-us-west-2-015321684451",
                "S3Key" => "my-app/5026-stage-150723_224258.war"
            ),
            "VersionLabel" => "v2"
        ),
        Dict(
            "ApplicationName" => "my-app",
            "DateCreated" => "2015-07-23T22:26:10.816Z",
            "DateUpdated" => "2015-07-23T22:26:10.816Z",
            "Description" => "initial version",
            "SourceBundle" => Dict(
                "S3Bucket" => "elasticbeanstalk-us-west-2-015321684451",
                "S3Key" => "my-app/5026-stage-150723_222618.war"
            ),
            "VersionLabel" => "v1"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeApplicationVersions)
"""
@inline describe_application_versions(aws::AWSConfig=default_aws_config(); args...) = describe_application_versions(aws, args)

@inline describe_application_versions(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeApplicationVersions", args)

@inline describe_application_versions(args) = describe_application_versions(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_applications
    describe_applications([::AWSConfig], arguments::Dict)
    describe_applications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeApplications", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeApplications", <keyword arguments>)

# DescribeApplications Operation

Returns the descriptions of existing applications.

# Arguments

## `ApplicationNames = [::String, ...]`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to only include those with the specified names.




# Returns

`ApplicationDescriptionsMessage`

# Example: To view a list of applications

The following operation retrieves information about applications in the current region:

Input:
```
[

]
```

Output:
```
Dict(
    "Applications" => [
        Dict(
            "ApplicationName" => "ruby",
            "ConfigurationTemplates" => [

            ],
            "DateCreated" => "2015-08-13T21:05:44.376Z",
            "DateUpdated" => "2015-08-13T21:05:44.376Z",
            "Versions" => [
                "Sample Application"
            ]
        ),
        Dict(
            "ApplicationName" => "pythonsample",
            "ConfigurationTemplates" => [

            ],
            "DateCreated" => "2015-08-13T19:05:43.637Z",
            "DateUpdated" => "2015-08-13T19:05:43.637Z",
            "Description" => "Application created from the EB CLI using "eb init"",
            "Versions" => [
                "Sample Application"
            ]
        ),
        Dict(
            "ApplicationName" => "nodejs-example",
            "ConfigurationTemplates" => [

            ],
            "DateCreated" => "2015-08-06T17:50:02.486Z",
            "DateUpdated" => "2015-08-06T17:50:02.486Z",
            "Versions" => [
                "add elasticache",
                "First Release"
            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeApplications)
"""
@inline describe_applications(aws::AWSConfig=default_aws_config(); args...) = describe_applications(aws, args)

@inline describe_applications(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeApplications", args)

@inline describe_applications(args) = describe_applications(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_configuration_options
    describe_configuration_options([::AWSConfig], arguments::Dict)
    describe_configuration_options([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeConfigurationOptions", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeConfigurationOptions", <keyword arguments>)

# DescribeConfigurationOptions Operation

Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.

# Arguments

## `ApplicationName = ::String`
The name of the application associated with the configuration template or environment. Only needed if you want to describe the configuration options associated with either the configuration template or environment.


## `TemplateName = ::String`
The name of the configuration template whose configuration options you want to describe.


## `EnvironmentName = ::String`
The name of the environment whose configuration options you want to describe.


## `SolutionStackName = ::String`
The name of the solution stack whose configuration options you want to describe.


## `PlatformArn = ::String`
The ARN of the custom platform.


## `Options = [[ ... ], ...]`
If specified, restricts the descriptions to only the specified options.
```
 Options = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String
    ], ...]
```



# Returns

`ConfigurationOptionsDescription`

# Exceptions

`TooManyBucketsException`.

# Example: To view configuration options for an environment

The following operation retrieves descriptions of all available configuration options for an environment named my-env:

Input:
```
[
    "ApplicationName" => "my-app",
    "EnvironmentName" => "my-env"
]
```

Output:
```
Dict(
    "Options" => [
        Dict(
            "ChangeSeverity" => "NoInterruption",
            "DefaultValue" => "30",
            "MaxValue" => 300,
            "MinValue" => 5,
            "Name" => "Interval",
            "Namespace" => "aws:elb:healthcheck",
            "UserDefined" => false,
            "ValueType" => "Scalar"
        ),
        Dict(
            "ChangeSeverity" => "NoInterruption",
            "DefaultValue" => "2000000",
            "MinValue" => 0,
            "Name" => "LowerThreshold",
            "Namespace" => "aws:autoscaling:trigger",
            "UserDefined" => false,
            "ValueType" => "Scalar"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeConfigurationOptions)
"""
@inline describe_configuration_options(aws::AWSConfig=default_aws_config(); args...) = describe_configuration_options(aws, args)

@inline describe_configuration_options(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeConfigurationOptions", args)

@inline describe_configuration_options(args) = describe_configuration_options(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_configuration_settings
    describe_configuration_settings([::AWSConfig], arguments::Dict)
    describe_configuration_settings([::AWSConfig]; ApplicationName=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeConfigurationSettings", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeConfigurationSettings", ApplicationName=, <keyword arguments>)

# DescribeConfigurationSettings Operation

Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment.

When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy.

Related Topics

*   [DeleteEnvironmentConfiguration](@ref)

# Arguments

## `ApplicationName = ::String` -- *Required*
The application for the environment or configuration template.


## `TemplateName = ::String`
The name of the configuration template to describe.

Conditional: You must specify either this parameter or an EnvironmentName, but not both. If you specify both, AWS Elastic Beanstalk returns an `InvalidParameterCombination` error. If you do not specify either, AWS Elastic Beanstalk returns a `MissingRequiredParameter` error.


## `EnvironmentName = ::String`
The name of the environment to describe.

Condition: You must specify either this or a TemplateName, but not both. If you specify both, AWS Elastic Beanstalk returns an `InvalidParameterCombination` error. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.




# Returns

`ConfigurationSettingsDescriptions`

# Exceptions

`TooManyBucketsException`.

# Example: To view configurations settings for an environment

The following operation retrieves configuration settings for an environment named my-env:

Input:
```
[
    "ApplicationName" => "my-app",
    "EnvironmentName" => "my-env"
]
```

Output:
```
Dict(
    "ConfigurationSettings" => [
        Dict(
            "ApplicationName" => "my-app",
            "DateCreated" => "2015-08-13T19:16:25Z",
            "DateUpdated" => "2015-08-13T23:30:07Z",
            "DeploymentStatus" => "deployed",
            "Description" => "Environment created from the EB CLI using "eb create"",
            "EnvironmentName" => "my-env",
            "OptionSettings" => [
                Dict(
                    "Namespace" => "aws:autoscaling:asg",
                    "OptionName" => "Availability Zones",
                    "ResourceName" => "AWSEBAutoScalingGroup",
                    "Value" => "Any"
                ),
                Dict(
                    "Namespace" => "aws:autoscaling:asg",
                    "OptionName" => "Cooldown",
                    "ResourceName" => "AWSEBAutoScalingGroup",
                    "Value" => "360"
                ),
                Dict(
                    "Namespace" => "aws:elb:policies",
                    "OptionName" => "ConnectionDrainingTimeout",
                    "ResourceName" => "AWSEBLoadBalancer",
                    "Value" => "20"
                ),
                Dict(
                    "Namespace" => "aws:elb:policies",
                    "OptionName" => "ConnectionSettingIdleTimeout",
                    "ResourceName" => "AWSEBLoadBalancer",
                    "Value" => "60"
                )
            ],
            "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeConfigurationSettings)
"""
@inline describe_configuration_settings(aws::AWSConfig=default_aws_config(); args...) = describe_configuration_settings(aws, args)

@inline describe_configuration_settings(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeConfigurationSettings", args)

@inline describe_configuration_settings(args) = describe_configuration_settings(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_environment_health
    describe_environment_health([::AWSConfig], arguments::Dict)
    describe_environment_health([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeEnvironmentHealth", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeEnvironmentHealth", <keyword arguments>)

# DescribeEnvironmentHealth Operation

Returns information about the overall health of the specified environment. The **DescribeEnvironmentHealth** operation is only available with AWS Elastic Beanstalk Enhanced Health.

# Arguments

## `EnvironmentName = ::String`
Specify the environment by name.

You must specify either this or an EnvironmentName, or both.


## `EnvironmentId = ::String`
Specify the environment by ID.

You must specify either this or an EnvironmentName, or both.


## `AttributeNames = ["Status", "Color", "Causes", "ApplicationMetrics", "InstancesHealth", "All", "HealthStatus" or "RefreshedAt", ...]`
Specify the response elements to return. To retrieve all attributes, set to `All`. If no attribute names are specified, returns the name of the environment.




# Returns

`DescribeEnvironmentHealthResult`

# Exceptions

`InvalidRequestException` or `ElasticBeanstalkServiceException`.

# Example: To view environment health

The following operation retrieves overall health information for an environment named my-env:

Input:
```
[
    "AttributeNames" => [
        "All"
    ],
    "EnvironmentName" => "my-env"
]
```

Output:
```
Dict(
    "ApplicationMetrics" => Dict(
        "Duration" => 10,
        "Latency" => Dict(
            "P10" => 0.001,
            "P50" => 0.001,
            "P75" => 0.002,
            "P85" => 0.003,
            "P90" => 0.003,
            "P95" => 0.004,
            "P99" => 0.004,
            "P999" => 0.004
        ),
        "RequestCount" => 45,
        "StatusCodes" => Dict(
            "Status2xx" => 45,
            "Status3xx" => 0,
            "Status4xx" => 0,
            "Status5xx" => 0
        )
    ),
    "Causes" => [

    ],
    "Color" => "Green",
    "EnvironmentName" => "my-env",
    "HealthStatus" => "Ok",
    "InstancesHealth" => Dict(
        "Degraded" => 0,
        "Info" => 0,
        "NoData" => 0,
        "Ok" => 1,
        "Pending" => 0,
        "Severe" => 0,
        "Unknown" => 0,
        "Warning" => 0
    ),
    "RefreshedAt" => "2015-08-20T21:09:18Z"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentHealth)
"""
@inline describe_environment_health(aws::AWSConfig=default_aws_config(); args...) = describe_environment_health(aws, args)

@inline describe_environment_health(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeEnvironmentHealth", args)

@inline describe_environment_health(args) = describe_environment_health(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_environment_managed_action_history
    describe_environment_managed_action_history([::AWSConfig], arguments::Dict)
    describe_environment_managed_action_history([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeEnvironmentManagedActionHistory", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeEnvironmentManagedActionHistory", <keyword arguments>)

# DescribeEnvironmentManagedActionHistory Operation

Lists an environment's completed and failed managed actions.

# Arguments

## `EnvironmentId = ::String`
The environment ID of the target environment.


## `EnvironmentName = ::String`
The name of the target environment.


## `NextToken = ::String`
The pagination token returned by a previous request.


## `MaxItems = ::Int`
The maximum number of items to return for a single request.




# Returns

`DescribeEnvironmentManagedActionHistoryResult`

# Exceptions

`ElasticBeanstalkServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentManagedActionHistory)
"""
@inline describe_environment_managed_action_history(aws::AWSConfig=default_aws_config(); args...) = describe_environment_managed_action_history(aws, args)

@inline describe_environment_managed_action_history(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeEnvironmentManagedActionHistory", args)

@inline describe_environment_managed_action_history(args) = describe_environment_managed_action_history(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_environment_managed_actions
    describe_environment_managed_actions([::AWSConfig], arguments::Dict)
    describe_environment_managed_actions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeEnvironmentManagedActions", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeEnvironmentManagedActions", <keyword arguments>)

# DescribeEnvironmentManagedActions Operation

Lists an environment's upcoming and in-progress managed actions.

# Arguments

## `EnvironmentName = ::String`
The name of the target environment.


## `EnvironmentId = ::String`
The environment ID of the target environment.


## `Status = "Scheduled", "Pending", "Running" or "Unknown"`
To show only actions with a particular status, specify a status.




# Returns

`DescribeEnvironmentManagedActionsResult`

# Exceptions

`ElasticBeanstalkServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentManagedActions)
"""
@inline describe_environment_managed_actions(aws::AWSConfig=default_aws_config(); args...) = describe_environment_managed_actions(aws, args)

@inline describe_environment_managed_actions(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeEnvironmentManagedActions", args)

@inline describe_environment_managed_actions(args) = describe_environment_managed_actions(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_environment_resources
    describe_environment_resources([::AWSConfig], arguments::Dict)
    describe_environment_resources([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeEnvironmentResources", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeEnvironmentResources", <keyword arguments>)

# DescribeEnvironmentResources Operation

Returns AWS resources for this environment.

# Arguments

## `EnvironmentId = ::String`
The ID of the environment to retrieve AWS resource usage data.

Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `EnvironmentName = ::String`
The name of the environment to retrieve AWS resource usage data.

Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.




# Returns

`EnvironmentResourceDescriptionsMessage`

# Exceptions

`InsufficientPrivilegesException`.

# Example: To view information about the AWS resources in your environment

The following operation retrieves information about resources in an environment named my-env:

Input:
```
[
    "EnvironmentName" => "my-env"
]
```

Output:
```
Dict(
    "EnvironmentResources" => Dict(
        "AutoScalingGroups" => [
            Dict(
                "Name" => "awseb-e-qu3fyyjyjs-stack-AWSEBAutoScalingGroup-QSB2ZO88SXZT"
            )
        ],
        "EnvironmentName" => "my-env",
        "Instances" => [
            Dict(
                "Id" => "i-0c91c786"
            )
        ],
        "LaunchConfigurations" => [
            Dict(
                "Name" => "awseb-e-qu3fyyjyjs-stack-AWSEBAutoScalingLaunchConfiguration-1UUVQIBC96TQ2"
            )
        ],
        "LoadBalancers" => [
            Dict(
                "Name" => "awseb-e-q-AWSEBLoa-1EEPZ0K98BIF0"
            )
        ],
        "Queues" => [

        ],
        "Triggers" => [

        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentResources)
"""
@inline describe_environment_resources(aws::AWSConfig=default_aws_config(); args...) = describe_environment_resources(aws, args)

@inline describe_environment_resources(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeEnvironmentResources", args)

@inline describe_environment_resources(args) = describe_environment_resources(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_environments
    describe_environments([::AWSConfig], arguments::Dict)
    describe_environments([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeEnvironments", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeEnvironments", <keyword arguments>)

# DescribeEnvironments Operation

Returns descriptions for existing environments.

# Arguments

## `ApplicationName = ::String`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that are associated with this application.


## `VersionLabel = ::String`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that are associated with this application version.


## `EnvironmentIds = [::String, ...]`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that have the specified IDs.


## `EnvironmentNames = [::String, ...]`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that have the specified names.


## `IncludeDeleted = ::Bool`
Indicates whether to include deleted environments:

`true`: Environments that have been deleted after `IncludedDeletedBackTo` are displayed.

`false`: Do not include deleted environments.


## `IncludedDeletedBackTo = timestamp`
If specified when `IncludeDeleted` is set to `true`, then environments deleted after this date are displayed.


## `MaxRecords = ::Int`
For a paginated request. Specify a maximum number of environments to include in each response.

If no `MaxRecords` is specified, all available environments are retrieved in a single response.


## `NextToken = ::String`
For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request.

If no `NextToken` is specified, the first page is retrieved.




# Returns

`EnvironmentDescriptionsMessage`

# Example: To view information about an environment

The following operation retrieves information about an environment named my-env:

Input:
```
[
    "EnvironmentNames" => [
        "my-env"
    ]
]
```

Output:
```
Dict(
    "Environments" => [
        Dict(
            "AbortableOperationInProgress" => false,
            "ApplicationName" => "my-app",
            "CNAME" => "my-env.elasticbeanstalk.com",
            "DateCreated" => "2015-08-07T20:48:49.599Z",
            "DateUpdated" => "2015-08-12T18:16:55.019Z",
            "EndpointURL" => "awseb-e-w-AWSEBLoa-1483140XB0Q4L-109QXY8121.us-west-2.elb.amazonaws.com",
            "EnvironmentId" => "e-rpqsewtp2j",
            "EnvironmentName" => "my-env",
            "Health" => "Green",
            "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
            "Status" => "Ready",
            "Tier" => Dict(
                "Name" => "WebServer",
                "Type" => "Standard",
                "Version" => " "
            ),
            "VersionLabel" => "7f58-stage-150812_025409"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironments)
"""
@inline describe_environments(aws::AWSConfig=default_aws_config(); args...) = describe_environments(aws, args)

@inline describe_environments(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeEnvironments", args)

@inline describe_environments(args) = describe_environments(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_events
    describe_events([::AWSConfig], arguments::Dict)
    describe_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeEvents", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeEvents", <keyword arguments>)

# DescribeEvents Operation

Returns list of event descriptions matching criteria up to the last 6 weeks.

**Note**
> This action returns the most recent 1,000 events from the specified `NextToken`.

# Arguments

## `ApplicationName = ::String`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those associated with this application.


## `VersionLabel = ::String`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this application version.


## `TemplateName = ::String`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that are associated with this environment configuration.


## `EnvironmentId = ::String`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.


## `EnvironmentName = ::String`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.


## `PlatformArn = ::String`
The ARN of the version of the custom platform.


## `RequestId = ::String`
If specified, AWS Elastic Beanstalk restricts the described events to include only those associated with this request ID.


## `Severity = "TRACE", "DEBUG", "INFO", "WARN", "ERROR" or "FATAL"`
If specified, limits the events returned from this call to include only those with the specified severity or higher.


## `StartTime = timestamp`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur on or after this time.


## `EndTime = timestamp`
If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur up to, but not including, the `EndTime`.


## `MaxRecords = ::Int`
Specifies the maximum number of events that can be returned, beginning with the most recent event.


## `NextToken = ::String`
Pagination token. If specified, the events return the next batch of results.




# Returns

`EventDescriptionsMessage`

# Example: To view events for an environment

The following operation retrieves events for an environment named my-env:

Input:
```
[
    "EnvironmentName" => "my-env"
]
```

Output:
```
Dict(
    "Events" => [
        Dict(
            "ApplicationName" => "my-app",
            "EnvironmentName" => "my-env",
            "EventDate" => "2015-08-20T07:06:53.535Z",
            "Message" => "Environment health has transitioned from Info to Ok.",
            "Severity" => "INFO"
        ),
        Dict(
            "ApplicationName" => "my-app",
            "EnvironmentName" => "my-env",
            "EventDate" => "2015-08-20T07:06:02.049Z",
            "Message" => "Environment update completed successfully.",
            "RequestId" => "b7f3960b-4709-11e5-ba1e-07e16200da41",
            "Severity" => "INFO"
        ),
        Dict(
            "ApplicationName" => "my-app",
            "EnvironmentName" => "my-env",
            "EventDate" => "2015-08-13T19:16:27.561Z",
            "Message" => "Using elasticbeanstalk-us-west-2-012445113685 as Amazon S3 storage bucket for environment data.",
            "RequestId" => "ca8dfbf6-41ef-11e5-988b-651aa638f46b",
            "Severity" => "INFO"
        ),
        Dict(
            "ApplicationName" => "my-app",
            "EnvironmentName" => "my-env",
            "EventDate" => "2015-08-13T19:16:26.581Z",
            "Message" => "createEnvironment is starting.",
            "RequestId" => "cdfba8f6-41ef-11e5-988b-65638f41aa6b",
            "Severity" => "INFO"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEvents)
"""
@inline describe_events(aws::AWSConfig=default_aws_config(); args...) = describe_events(aws, args)

@inline describe_events(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeEvents", args)

@inline describe_events(args) = describe_events(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_instances_health
    describe_instances_health([::AWSConfig], arguments::Dict)
    describe_instances_health([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribeInstancesHealth", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribeInstancesHealth", <keyword arguments>)

# DescribeInstancesHealth Operation

Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires [enhanced health reporting](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html).

# Arguments

## `EnvironmentName = ::String`
Specify the AWS Elastic Beanstalk environment by name.


## `EnvironmentId = ::String`
Specify the AWS Elastic Beanstalk environment by ID.


## `AttributeNames = ["HealthStatus", "Color", "Causes", "ApplicationMetrics", "RefreshedAt", "LaunchedAt", "System", "Deployment", "AvailabilityZone", "InstanceType" or "All", ...]`
Specifies the response elements you wish to receive. To retrieve all attributes, set to `All`. If no attribute names are specified, returns a list of instances.


## `NextToken = ::String`
Specify the pagination token returned by a previous call.




# Returns

`DescribeInstancesHealthResult`

# Exceptions

`InvalidRequestException` or `ElasticBeanstalkServiceException`.

# Example: To view environment health

The following operation retrieves health information for instances in an environment named my-env:

Input:
```
[
    "AttributeNames" => [
        "All"
    ],
    "EnvironmentName" => "my-env"
]
```

Output:
```
Dict(
    "InstanceHealthList" => [
        Dict(
            "ApplicationMetrics" => Dict(
                "Duration" => 10,
                "Latency" => Dict(
                    "P10" => 0,
                    "P50" => 0.001,
                    "P75" => 0.002,
                    "P85" => 0.003,
                    "P90" => 0.004,
                    "P95" => 0.005,
                    "P99" => 0.006,
                    "P999" => 0.006
                ),
                "RequestCount" => 48,
                "StatusCodes" => Dict(
                    "Status2xx" => 47,
                    "Status3xx" => 0,
                    "Status4xx" => 1,
                    "Status5xx" => 0
                )
            ),
            "Causes" => [

            ],
            "Color" => "Green",
            "HealthStatus" => "Ok",
            "InstanceId" => "i-08691cc7",
            "LaunchedAt" => "2015-08-13T19:17:09Z",
            "System" => Dict(
                "CPUUtilization" => Dict(
                    "IOWait" => 0.2,
                    "IRQ" => 0,
                    "Idle" => 97.8,
                    "Nice" => 0.1,
                    "SoftIRQ" => 0.1,
                    "System" => 0.3,
                    "User" => 1.5
                ),
                "LoadAverage" => [
                    0,
                    0.02,
                    0.05
                ]
            )
        )
    ],
    "RefreshedAt" => "2015-08-20T21:09:08Z"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeInstancesHealth)
"""
@inline describe_instances_health(aws::AWSConfig=default_aws_config(); args...) = describe_instances_health(aws, args)

@inline describe_instances_health(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribeInstancesHealth", args)

@inline describe_instances_health(args) = describe_instances_health(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.describe_platform_version
    describe_platform_version([::AWSConfig], arguments::Dict)
    describe_platform_version([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "DescribePlatformVersion", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "DescribePlatformVersion", <keyword arguments>)

# DescribePlatformVersion Operation

Describes the version of the platform.

# Arguments

## `PlatformArn = ::String`
The ARN of the version of the platform.




# Returns

`DescribePlatformVersionResult`

# Exceptions

`InsufficientPrivilegesException` or `ElasticBeanstalkServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribePlatformVersion)
"""
@inline describe_platform_version(aws::AWSConfig=default_aws_config(); args...) = describe_platform_version(aws, args)

@inline describe_platform_version(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "DescribePlatformVersion", args)

@inline describe_platform_version(args) = describe_platform_version(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.list_available_solution_stacks
    list_available_solution_stacks([::AWSConfig])
    

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "ListAvailableSolutionStacks",)
    

# ListAvailableSolutionStacks Operation

Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.

# Returns

`ListAvailableSolutionStacksResultMessage`

# Example: To view solution stacks

The following operation lists solution stacks for all currently available platform configurations and any that you have used in the past:

Output:
```
Dict(
    "SolutionStackDetails" => [
        Dict(
            "PermittedFileTypes" => [
                "zip"
            ],
            "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Node.js"
        )
    ],
    "SolutionStacks" => [
        "64bit Amazon Linux 2015.03 v2.0.0 running Node.js",
        "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.6",
        "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.5",
        "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.4",
        "64bit Amazon Linux 2015.03 v2.0.0 running Python 3.4",
        "64bit Amazon Linux 2015.03 v2.0.0 running Python 2.7",
        "64bit Amazon Linux 2015.03 v2.0.0 running Python",
        "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.2 (Puma)",
        "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.2 (Passenger Standalone)",
        "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.1 (Puma)",
        "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.1 (Passenger Standalone)",
        "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.0 (Puma)",
        "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.0 (Passenger Standalone)",
        "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 1.9.3",
        "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
        "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 7 Java 7",
        "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 7 Java 6",
        "64bit Windows Server Core 2012 R2 running IIS 8.5",
        "64bit Windows Server 2012 R2 running IIS 8.5",
        "64bit Windows Server 2012 running IIS 8",
        "64bit Windows Server 2008 R2 running IIS 7.5",
        "64bit Amazon Linux 2015.03 v2.0.0 running Docker 1.6.2",
        "64bit Amazon Linux 2015.03 v2.0.0 running Multi-container Docker 1.6.2 (Generic)",
        "64bit Debian jessie v2.0.0 running GlassFish 4.1 Java 8 (Preconfigured - Docker)",
        "64bit Debian jessie v2.0.0 running GlassFish 4.0 Java 7 (Preconfigured - Docker)",
        "64bit Debian jessie v2.0.0 running Go 1.4 (Preconfigured - Docker)",
        "64bit Debian jessie v2.0.0 running Go 1.3 (Preconfigured - Docker)",
        "64bit Debian jessie v2.0.0 running Python 3.4 (Preconfigured - Docker)"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListAvailableSolutionStacks)
"""
@inline list_available_solution_stacks(aws::AWSConfig=default_aws_config(); args...) = list_available_solution_stacks(aws, args)

@inline list_available_solution_stacks(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "ListAvailableSolutionStacks", args)

@inline list_available_solution_stacks(args) = list_available_solution_stacks(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.list_platform_versions
    list_platform_versions([::AWSConfig], arguments::Dict)
    list_platform_versions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "ListPlatformVersions", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "ListPlatformVersions", <keyword arguments>)

# ListPlatformVersions Operation

Lists the available platforms.

# Arguments

## `Filters = [[ ... ], ...]`
List only the platforms where the platform member value relates to one of the supplied values.
```
 Filters = [[
        "Type" =>  ::String,
        "Operator" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of platform values returned in one call.


## `NextToken = ::String`
The starting index into the remaining list of platforms. Use the `NextToken` value from a previous `ListPlatformVersion` call.




# Returns

`ListPlatformVersionsResult`

# Exceptions

`InsufficientPrivilegesException` or `ElasticBeanstalkServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListPlatformVersions)
"""
@inline list_platform_versions(aws::AWSConfig=default_aws_config(); args...) = list_platform_versions(aws, args)

@inline list_platform_versions(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "ListPlatformVersions", args)

@inline list_platform_versions(args) = list_platform_versions(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceArn=)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "ListTagsForResource", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "ListTagsForResource", ResourceArn=)

# ListTagsForResource Operation

Returns the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs.

Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see [Tagging Resources in Your Elastic Beanstalk Environment](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html).

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resouce for which a tag list is requested.

Must be the ARN of an Elastic Beanstalk environment.




# Returns

`ResourceTagsDescriptionMessage`

# Exceptions

`InsufficientPrivilegesException`, `ResourceNotFoundException` or `ResourceTypeNotSupportedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.rebuild_environment
    rebuild_environment([::AWSConfig], arguments::Dict)
    rebuild_environment([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "RebuildEnvironment", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "RebuildEnvironment", <keyword arguments>)

# RebuildEnvironment Operation

Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.

# Arguments

## `EnvironmentId = ::String`
The ID of the environment to rebuild.

Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `EnvironmentName = ::String`
The name of the environment to rebuild.

Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.




# Exceptions

`InsufficientPrivilegesException`.

# Example: To rebuild an environment

The following operation terminates and recreates the resources in an environment named my-env:

Input:
```
[
    "EnvironmentName" => "my-env"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RebuildEnvironment)
"""
@inline rebuild_environment(aws::AWSConfig=default_aws_config(); args...) = rebuild_environment(aws, args)

@inline rebuild_environment(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "RebuildEnvironment", args)

@inline rebuild_environment(args) = rebuild_environment(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.request_environment_info
    request_environment_info([::AWSConfig], arguments::Dict)
    request_environment_info([::AWSConfig]; InfoType=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "RequestEnvironmentInfo", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "RequestEnvironmentInfo", InfoType=, <keyword arguments>)

# RequestEnvironmentInfo Operation

Initiates a request to compile the specified type of information of the deployed environment.

Setting the `InfoType` to `tail` compiles the last lines from the application server log files of every Amazon EC2 instance in your environment.

Setting the `InfoType` to `bundle` compresses the application server log files for every Amazon EC2 instance into a `.zip` file. Legacy and .NET containers do not support bundle logs.

Use [RetrieveEnvironmentInfo](@ref) to obtain the set of logs.

Related Topics

*   [RetrieveEnvironmentInfo](@ref)

# Arguments

## `EnvironmentId = ::String`
The ID of the environment of the requested data.

If no such environment is found, `RequestEnvironmentInfo` returns an `InvalidParameterValue` error.

Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `EnvironmentName = ::String`
The name of the environment of the requested data.

If no such environment is found, `RequestEnvironmentInfo` returns an `InvalidParameterValue` error.

Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `InfoType = "tail" or "bundle"` -- *Required*
The type of information to request.




# Example: To request tailed logs

The following operation requests logs from an environment named my-env:

Input:
```
[
    "EnvironmentName" => "my-env",
    "InfoType" => "tail"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RequestEnvironmentInfo)
"""
@inline request_environment_info(aws::AWSConfig=default_aws_config(); args...) = request_environment_info(aws, args)

@inline request_environment_info(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "RequestEnvironmentInfo", args)

@inline request_environment_info(args) = request_environment_info(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.restart_app_server
    restart_app_server([::AWSConfig], arguments::Dict)
    restart_app_server([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "RestartAppServer", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "RestartAppServer", <keyword arguments>)

# RestartAppServer Operation

Causes the environment to restart the application container server running on each Amazon EC2 instance.

# Arguments

## `EnvironmentId = ::String`
The ID of the environment to restart the server for.

Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `EnvironmentName = ::String`
The name of the environment to restart the server for.

Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.




# Example: To restart application servers

The following operation restarts application servers on all instances in an environment named my-env:

Input:
```
[
    "EnvironmentName" => "my-env"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RestartAppServer)
"""
@inline restart_app_server(aws::AWSConfig=default_aws_config(); args...) = restart_app_server(aws, args)

@inline restart_app_server(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "RestartAppServer", args)

@inline restart_app_server(args) = restart_app_server(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.retrieve_environment_info
    retrieve_environment_info([::AWSConfig], arguments::Dict)
    retrieve_environment_info([::AWSConfig]; InfoType=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "RetrieveEnvironmentInfo", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "RetrieveEnvironmentInfo", InfoType=, <keyword arguments>)

# RetrieveEnvironmentInfo Operation

Retrieves the compiled information from a [RequestEnvironmentInfo](@ref) request.

Related Topics

*   [RequestEnvironmentInfo](@ref)

# Arguments

## `EnvironmentId = ::String`
The ID of the data's environment.

If no such environment is found, returns an `InvalidParameterValue` error.

Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `EnvironmentName = ::String`
The name of the data's environment.

If no such environment is found, returns an `InvalidParameterValue` error.

Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `InfoType = "tail" or "bundle"` -- *Required*
The type of information to retrieve.




# Returns

`RetrieveEnvironmentInfoResultMessage`

# Example: To retrieve tailed logs

The following operation retrieves a link to logs from an environment named my-env:

Input:
```
[
    "EnvironmentName" => "my-env",
    "InfoType" => "tail"
]
```

Output:
```
Dict(
    "EnvironmentInfo" => [
        Dict(
            "Ec2InstanceId" => "i-09c1c867",
            "InfoType" => "tail",
            "Message" => "https://elasticbeanstalk-us-west-2-0123456789012.s3.amazonaws.com/resources/environments/logs/tail/e-fyqyju3yjs/i-09c1c867/TailLogs-1440109397703.out?AWSAccessKeyId=AKGPT4J56IAJ2EUBL5CQ&Expires=1440195891&Signature=n%2BEalOV6A2HIOx4Rcfb7LT16bBM%3D",
            "SampleTimestamp" => "2015-08-20T22:23:17.703Z"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RetrieveEnvironmentInfo)
"""
@inline retrieve_environment_info(aws::AWSConfig=default_aws_config(); args...) = retrieve_environment_info(aws, args)

@inline retrieve_environment_info(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "RetrieveEnvironmentInfo", args)

@inline retrieve_environment_info(args) = retrieve_environment_info(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.swap_environment_cnames
    swap_environment_cnames([::AWSConfig], arguments::Dict)
    swap_environment_cnames([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "SwapEnvironmentCNAMEs", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "SwapEnvironmentCNAMEs", <keyword arguments>)

# SwapEnvironmentCNAMEs Operation

Swaps the CNAMEs of two environments.

# Arguments

## `SourceEnvironmentId = ::String`
The ID of the source environment.

Condition: You must specify at least the `SourceEnvironmentID` or the `SourceEnvironmentName`. You may also specify both. If you specify the `SourceEnvironmentId`, you must specify the `DestinationEnvironmentId`.


## `SourceEnvironmentName = ::String`
The name of the source environment.

Condition: You must specify at least the `SourceEnvironmentID` or the `SourceEnvironmentName`. You may also specify both. If you specify the `SourceEnvironmentName`, you must specify the `DestinationEnvironmentName`.


## `DestinationEnvironmentId = ::String`
The ID of the destination environment.

Condition: You must specify at least the `DestinationEnvironmentID` or the `DestinationEnvironmentName`. You may also specify both. You must specify the `SourceEnvironmentId` with the `DestinationEnvironmentId`.


## `DestinationEnvironmentName = ::String`
The name of the destination environment.

Condition: You must specify at least the `DestinationEnvironmentID` or the `DestinationEnvironmentName`. You may also specify both. You must specify the `SourceEnvironmentName` with the `DestinationEnvironmentName`.




# Example: To swap environment CNAMES

The following operation swaps the assigned subdomains of two environments:

Input:
```
[
    "DestinationEnvironmentName" => "my-env-green",
    "SourceEnvironmentName" => "my-env-blue"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/SwapEnvironmentCNAMEs)
"""
@inline swap_environment_cnames(aws::AWSConfig=default_aws_config(); args...) = swap_environment_cnames(aws, args)

@inline swap_environment_cnames(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "SwapEnvironmentCNAMEs", args)

@inline swap_environment_cnames(args) = swap_environment_cnames(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.terminate_environment
    terminate_environment([::AWSConfig], arguments::Dict)
    terminate_environment([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "TerminateEnvironment", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "TerminateEnvironment", <keyword arguments>)

# TerminateEnvironment Operation

Terminates the specified environment.

# Arguments

## `EnvironmentId = ::String`
The ID of the environment to terminate.

Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `EnvironmentName = ::String`
The name of the environment to terminate.

Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `TerminateResources = ::Bool`
Indicates whether the associated AWS resources should shut down when the environment is terminated:

*   `true`: The specified environment as well as the associated AWS resources, such as Auto Scaling group and LoadBalancer, are terminated.

*   `false`: AWS Elastic Beanstalk resource management is removed from the environment, but the AWS resources continue to operate.

For more information, see the [AWS Elastic Beanstalk User Guide.](http://docs.aws.amazon.com/elasticbeanstalk/latest/ug/)

Default: `true`

Valid Values: `true` | `false`


## `ForceTerminate = ::Bool`
Terminates the target environment even if another environment in the same group is dependent on it.




# Returns

`EnvironmentDescription`

# Exceptions

`InsufficientPrivilegesException`.

# Example: To terminate an environment

The following operation terminates an Elastic Beanstalk environment named my-env:

Input:
```
[
    "EnvironmentName" => "my-env"
]
```

Output:
```
Dict(
    "AbortableOperationInProgress" => false,
    "ApplicationName" => "my-app",
    "CNAME" => "my-env.elasticbeanstalk.com",
    "DateCreated" => "2015-08-12T18:52:53.622Z",
    "DateUpdated" => "2015-08-12T19:05:54.744Z",
    "EndpointURL" => "awseb-e-f-AWSEBLoa-1I9XUMP4-8492WNUP202574.us-west-2.elb.amazonaws.com",
    "EnvironmentId" => "e-fh2eravpns",
    "EnvironmentName" => "my-env",
    "Health" => "Grey",
    "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    "Status" => "Terminating",
    "Tier" => Dict(
        "Name" => "WebServer",
        "Type" => "Standard",
        "Version" => " "
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/TerminateEnvironment)
"""
@inline terminate_environment(aws::AWSConfig=default_aws_config(); args...) = terminate_environment(aws, args)

@inline terminate_environment(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "TerminateEnvironment", args)

@inline terminate_environment(args) = terminate_environment(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.update_application
    update_application([::AWSConfig], arguments::Dict)
    update_application([::AWSConfig]; ApplicationName=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "UpdateApplication", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "UpdateApplication", ApplicationName=, <keyword arguments>)

# UpdateApplication Operation

Updates the specified application to have the specified properties.

**Note**
> If a property (for example, `description`) is not provided, the value remains unchanged. To clear these properties, specify an empty string.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application to update. If no such application is found, `UpdateApplication` returns an `InvalidParameterValue` error.


## `Description = ::String`
A new description for the application.

Default: If not specified, AWS Elastic Beanstalk does not update the description.




# Returns

`ApplicationDescriptionMessage`

# Example: To change an application's description

The following operation updates the description of an application named my-app:

Input:
```
[
    "ApplicationName" => "my-app",
    "Description" => "my Elastic Beanstalk application"
]
```

Output:
```
Dict(
    "Application" => Dict(
        "ApplicationName" => "my-app",
        "ConfigurationTemplates" => [

        ],
        "DateCreated" => "2015-08-13T19:15:50.449Z",
        "DateUpdated" => "2015-08-20T22:34:56.195Z",
        "Description" => "my Elastic Beanstalk application",
        "Versions" => [
            "2fba-stage-150819_234450",
            "bf07-stage-150820_214945",
            "93f8",
            "fd7c-stage-150820_000431",
            "22a0-stage-150819_185942"
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateApplication)
"""
@inline update_application(aws::AWSConfig=default_aws_config(); args...) = update_application(aws, args)

@inline update_application(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "UpdateApplication", args)

@inline update_application(args) = update_application(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.update_application_resource_lifecycle
    update_application_resource_lifecycle([::AWSConfig], arguments::Dict)
    update_application_resource_lifecycle([::AWSConfig]; ApplicationName=, ResourceLifecycleConfig=)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "UpdateApplicationResourceLifecycle", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "UpdateApplicationResourceLifecycle", ApplicationName=, ResourceLifecycleConfig=)

# UpdateApplicationResourceLifecycle Operation

Modifies lifecycle settings for an application.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application.


## `ResourceLifecycleConfig = [ ... ]` -- *Required*
The lifecycle configuration.
```
 ResourceLifecycleConfig = [
        "ServiceRole" =>  ::String,
        "VersionLifecycleConfig" =>  [
            "MaxCountRule" =>  [
                "Enabled" => <required> ::Bool,
                "MaxCount" =>  ::Int,
                "DeleteSourceFromS3" =>  ::Bool
            ],
            "MaxAgeRule" =>  [
                "Enabled" => <required> ::Bool,
                "MaxAgeInDays" =>  ::Int,
                "DeleteSourceFromS3" =>  ::Bool
            ]
        ]
    ]
```



# Returns

`ApplicationResourceLifecycleDescriptionMessage`

# Exceptions

`InsufficientPrivilegesException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateApplicationResourceLifecycle)
"""
@inline update_application_resource_lifecycle(aws::AWSConfig=default_aws_config(); args...) = update_application_resource_lifecycle(aws, args)

@inline update_application_resource_lifecycle(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "UpdateApplicationResourceLifecycle", args)

@inline update_application_resource_lifecycle(args) = update_application_resource_lifecycle(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.update_application_version
    update_application_version([::AWSConfig], arguments::Dict)
    update_application_version([::AWSConfig]; ApplicationName=, VersionLabel=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "UpdateApplicationVersion", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "UpdateApplicationVersion", ApplicationName=, VersionLabel=, <keyword arguments>)

# UpdateApplicationVersion Operation

Updates the specified application version to have the specified properties.

**Note**
> If a property (for example, `description`) is not provided, the value remains unchanged. To clear properties, specify an empty string.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application associated with this version.

If no application is found with this name, `UpdateApplication` returns an `InvalidParameterValue` error.


## `VersionLabel = ::String` -- *Required*
The name of the version to update.

If no application version is found with this label, `UpdateApplication` returns an `InvalidParameterValue` error.


## `Description = ::String`
A new description for this version.




# Returns

`ApplicationVersionDescriptionMessage`

# Example: To change an application version's description

The following operation updates the description of an application version named 22a0-stage-150819_185942:

Input:
```
[
    "ApplicationName" => "my-app",
    "Description" => "new description",
    "VersionLabel" => "22a0-stage-150819_185942"
]
```

Output:
```
Dict(
    "ApplicationVersion" => Dict(
        "ApplicationName" => "my-app",
        "DateCreated" => "2015-08-19T18:59:17.646Z",
        "DateUpdated" => "2015-08-20T22:53:28.871Z",
        "Description" => "new description",
        "SourceBundle" => Dict(
            "S3Bucket" => "elasticbeanstalk-us-west-2-0123456789012",
            "S3Key" => "my-app/22a0-stage-150819_185942.war"
        ),
        "VersionLabel" => "22a0-stage-150819_185942"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateApplicationVersion)
"""
@inline update_application_version(aws::AWSConfig=default_aws_config(); args...) = update_application_version(aws, args)

@inline update_application_version(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "UpdateApplicationVersion", args)

@inline update_application_version(args) = update_application_version(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.update_configuration_template
    update_configuration_template([::AWSConfig], arguments::Dict)
    update_configuration_template([::AWSConfig]; ApplicationName=, TemplateName=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "UpdateConfigurationTemplate", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "UpdateConfigurationTemplate", ApplicationName=, TemplateName=, <keyword arguments>)

# UpdateConfigurationTemplate Operation

Updates the specified configuration template to have the specified properties or configuration option values.

**Note**
> If a property (for example, `ApplicationName`) is not provided, its value remains unchanged. To clear such properties, specify an empty string.

Related Topics

*   [DescribeConfigurationOptions](@ref)

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application associated with the configuration template to update.

If no application is found with this name, `UpdateConfigurationTemplate` returns an `InvalidParameterValue` error.


## `TemplateName = ::String` -- *Required*
The name of the configuration template to update.

If no configuration template is found with this name, `UpdateConfigurationTemplate` returns an `InvalidParameterValue` error.


## `Description = ::String`
A new description for the configuration.


## `OptionSettings = [[ ... ], ...]`
A list of configuration option settings to update with the new specified option value.
```
 OptionSettings = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `OptionsToRemove = [[ ... ], ...]`
A list of configuration options to remove from the configuration set.

Constraint: You can remove only `UserDefined` configuration options.
```
 OptionsToRemove = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String
    ], ...]
```



# Returns

`ConfigurationSettingsDescription`

# Exceptions

`InsufficientPrivilegesException` or `TooManyBucketsException`.

# Example: To update a configuration template

The following operation removes the configured CloudWatch custom health metrics configuration ConfigDocument from a saved configuration template named my-template:

Input:
```
[
    "ApplicationName" => "my-app",
    "OptionsToRemove" => [
        [
            "Namespace" => "aws:elasticbeanstalk:healthreporting:system",
            "OptionName" => "ConfigDocument"
        ]
    ],
    "TemplateName" => "my-template"
]
```

Output:
```
Dict(
    "ApplicationName" => "my-app",
    "DateCreated" => "2015-08-20T22:39:31Z",
    "DateUpdated" => "2015-08-20T22:43:11Z",
    "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    "TemplateName" => "my-template"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateConfigurationTemplate)
"""
@inline update_configuration_template(aws::AWSConfig=default_aws_config(); args...) = update_configuration_template(aws, args)

@inline update_configuration_template(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "UpdateConfigurationTemplate", args)

@inline update_configuration_template(args) = update_configuration_template(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.update_environment
    update_environment([::AWSConfig], arguments::Dict)
    update_environment([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "UpdateEnvironment", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "UpdateEnvironment", <keyword arguments>)

# UpdateEnvironment Operation

Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.

Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an `InvalidParameterCombination` error.

When updating the configuration settings to a new template or individual settings, a draft configuration is created and [DescribeConfigurationSettings](@ref) for this environment returns two setting descriptions with different `DeploymentStatus` values.

# Arguments

## `ApplicationName = ::String`
The name of the application with which the environment is associated.


## `EnvironmentId = ::String`
The ID of the environment to update.

If no environment with this ID exists, AWS Elastic Beanstalk returns an `InvalidParameterValue` error.

Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `EnvironmentName = ::String`
The name of the environment to update. If no environment with this name exists, AWS Elastic Beanstalk returns an `InvalidParameterValue` error.

Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns `MissingRequiredParameter` error.


## `GroupName = ::String`
The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name or environment ID parameters. See [Environment Manifest (env.yaml)](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html) for details.


## `Description = ::String`
If this parameter is specified, AWS Elastic Beanstalk updates the description of this environment.


## `Tier = [ ... ]`
This specifies the tier to use to update the environment.

Condition: At this time, if you change the tier version, name, or type, AWS Elastic Beanstalk returns `InvalidParameterValue` error.
```
 Tier = [
        "Name" =>  ::String,
        "Type" =>  ::String,
        "Version" =>  ::String
    ]
```

## `VersionLabel = ::String`
If this parameter is specified, AWS Elastic Beanstalk deploys the named application version to the environment. If no such application version is found, returns an `InvalidParameterValue` error.


## `TemplateName = ::String`
If this parameter is specified, AWS Elastic Beanstalk deploys this configuration template to the environment. If no such configuration template is found, AWS Elastic Beanstalk returns an `InvalidParameterValue` error.


## `SolutionStackName = ::String`
This specifies the platform version that the environment will run after the environment is updated.


## `PlatformArn = ::String`
The ARN of the platform, if used.


## `OptionSettings = [[ ... ], ...]`
If specified, AWS Elastic Beanstalk updates the configuration set associated with the running environment and sets the specified configuration options to the requested value.
```
 OptionSettings = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `OptionsToRemove = [[ ... ], ...]`
A list of custom user-defined configuration options to remove from the configuration set for this environment.
```
 OptionsToRemove = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String
    ], ...]
```



# Returns

`EnvironmentDescription`

# Exceptions

`InsufficientPrivilegesException` or `TooManyBucketsException`.

# Example: To update an environment to a new version

The following operation updates an environment named "my-env" to version "v2" of the application to which it belongs:

Input:
```
[
    "EnvironmentName" => "my-env",
    "VersionLabel" => "v2"
]
```

Output:
```
Dict(
    "ApplicationName" => "my-app",
    "CNAME" => "my-env.elasticbeanstalk.com",
    "DateCreated" => "2015-02-03T23:04:54.453Z",
    "DateUpdated" => "2015-02-03T23:12:29.119Z",
    "EndpointURL" => "awseb-e-i-AWSEBLoa-1RDLX6TC9VUAO-0123456789.us-west-2.elb.amazonaws.com",
    "EnvironmentId" => "e-szqipays4h",
    "EnvironmentName" => "my-env",
    "Health" => "Grey",
    "SolutionStackName" => "64bit Amazon Linux running Tomcat 7",
    "Status" => "Updating",
    "Tier" => Dict(
        "Name" => "WebServer",
        "Type" => "Standard",
        "Version" => " "
    ),
    "VersionLabel" => "v2"
)
```

# Example: To configure option settings

The following operation configures several options in the aws:elb:loadbalancer namespace:

Input:
```
[
    "EnvironmentName" => "my-env",
    "OptionSettings" => [
        [
            "Namespace" => "aws:elb:healthcheck",
            "OptionName" => "Interval",
            "Value" => "15"
        ],
        [
            "Namespace" => "aws:elb:healthcheck",
            "OptionName" => "Timeout",
            "Value" => "8"
        ],
        [
            "Namespace" => "aws:elb:healthcheck",
            "OptionName" => "HealthyThreshold",
            "Value" => "2"
        ],
        [
            "Namespace" => "aws:elb:healthcheck",
            "OptionName" => "UnhealthyThreshold",
            "Value" => "3"
        ]
    ]
]
```

Output:
```
Dict(
    "AbortableOperationInProgress" => true,
    "ApplicationName" => "my-app",
    "CNAME" => "my-env.elasticbeanstalk.com",
    "DateCreated" => "2015-08-07T20:48:49.599Z",
    "DateUpdated" => "2015-08-12T18:15:23.804Z",
    "EndpointURL" => "awseb-e-w-AWSEBLoa-14XB83101Q4L-104QXY80921.sa-east-1.elb.amazonaws.com",
    "EnvironmentId" => "e-wtp2rpqsej",
    "EnvironmentName" => "my-env",
    "Health" => "Grey",
    "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    "Status" => "Updating",
    "Tier" => Dict(
        "Name" => "WebServer",
        "Type" => "Standard",
        "Version" => " "
    ),
    "VersionLabel" => "7f58-stage-150812_025409"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateEnvironment)
"""
@inline update_environment(aws::AWSConfig=default_aws_config(); args...) = update_environment(aws, args)

@inline update_environment(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "UpdateEnvironment", args)

@inline update_environment(args) = update_environment(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.update_tags_for_resource
    update_tags_for_resource([::AWSConfig], arguments::Dict)
    update_tags_for_resource([::AWSConfig]; ResourceArn=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "UpdateTagsForResource", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "UpdateTagsForResource", ResourceArn=, <keyword arguments>)

# UpdateTagsForResource Operation

Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: `TagsToAdd` for tags to add or update, and `TagsToRemove`.

Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see [Tagging Resources in Your Elastic Beanstalk Environment](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html).

If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:

<dl>

<dt>elasticbeanstalk:AddTags</dt>

<dd>

Controls permission to call `UpdateTagsForResource` and pass a list of tags to add in the `TagsToAdd` parameter.

</dd>

<dt>elasticbeanstalk:RemoveTags</dt>

<dd>

Controls permission to call `UpdateTagsForResource` and pass a list of tag keys to remove in the `TagsToRemove` parameter.

</dd>

</dl>

For details about creating a custom user policy, see [Creating a Custom User Policy](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies).

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resouce to be updated.

Must be the ARN of an Elastic Beanstalk environment.


## `TagsToAdd = [[ ... ], ...]`
A list of tags to add or update.

If a key of an existing tag is added, the tag's value is updated.
```
 TagsToAdd = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `TagsToRemove = [::String, ...]`
A list of tag keys to remove.

If a tag key doesn't exist, it is silently ignored.




# Exceptions

`InsufficientPrivilegesException`, `OperationInProgressException`, `TooManyTagsException`, `ResourceNotFoundException` or `ResourceTypeNotSupportedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateTagsForResource)
"""
@inline update_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = update_tags_for_resource(aws, args)

@inline update_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "UpdateTagsForResource", args)

@inline update_tags_for_resource(args) = update_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.ElasticBeanstalk.validate_configuration_settings
    validate_configuration_settings([::AWSConfig], arguments::Dict)
    validate_configuration_settings([::AWSConfig]; ApplicationName=, OptionSettings=, <keyword arguments>)

    using AWSCore.Services.elasticbeanstalk
    elasticbeanstalk([::AWSConfig], "ValidateConfigurationSettings", arguments::Dict)
    elasticbeanstalk([::AWSConfig], "ValidateConfigurationSettings", ApplicationName=, OptionSettings=, <keyword arguments>)

# ValidateConfigurationSettings Operation

Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid.

This action returns a list of messages indicating any errors or warnings associated with the selection of option values.

# Arguments

## `ApplicationName = ::String` -- *Required*
The name of the application that the configuration template or environment belongs to.


## `TemplateName = ::String`
The name of the configuration template to validate the settings against.

Condition: You cannot specify both this and an environment name.


## `EnvironmentName = ::String`
The name of the environment to validate the settings against.

Condition: You cannot specify both this and a configuration template name.


## `OptionSettings = [[ ... ], ...]` -- *Required*
A list of the options and desired values to evaluate.
```
 OptionSettings = [[
        "ResourceName" =>  ::String,
        "Namespace" =>  ::String,
        "OptionName" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`ConfigurationSettingsValidationMessages`

# Exceptions

`InsufficientPrivilegesException` or `TooManyBucketsException`.

# Example: To validate configuration settings

The following operation validates a CloudWatch custom metrics config document:

Input:
```
[
    "ApplicationName" => "my-app",
    "EnvironmentName" => "my-env",
    "OptionSettings" => [
        [
            "Namespace" => "aws:elasticbeanstalk:healthreporting:system",
            "OptionName" => "ConfigDocument",
            "Value" => "{"CloudWatchMetrics": {"Environment": {"ApplicationLatencyP99.9": null,"InstancesSevere": 60,"ApplicationLatencyP90": 60,"ApplicationLatencyP99": null,"ApplicationLatencyP95": 60,"InstancesUnknown": 60,"ApplicationLatencyP85": 60,"InstancesInfo": null,"ApplicationRequests2xx": null,"InstancesDegraded": null,"InstancesWarning": 60,"ApplicationLatencyP50": 60,"ApplicationRequestsTotal": null,"InstancesNoData": null,"InstancesPending": 60,"ApplicationLatencyP10": null,"ApplicationRequests5xx": null,"ApplicationLatencyP75": null,"InstancesOk": 60,"ApplicationRequests3xx": null,"ApplicationRequests4xx": null},"Instance": {"ApplicationLatencyP99.9": null,"ApplicationLatencyP90": 60,"ApplicationLatencyP99": null,"ApplicationLatencyP95": null,"ApplicationLatencyP85": null,"CPUUser": 60,"ApplicationRequests2xx": null,"CPUIdle": null,"ApplicationLatencyP50": null,"ApplicationRequestsTotal": 60,"RootFilesystemUtil": null,"LoadAverage1min": null,"CPUIrq": null,"CPUNice": 60,"CPUIowait": 60,"ApplicationLatencyP10": null,"LoadAverage5min": null,"ApplicationRequests5xx": null,"ApplicationLatencyP75": 60,"CPUSystem": 60,"ApplicationRequests3xx": 60,"ApplicationRequests4xx": null,"InstanceHealth": null,"CPUSoftirq": 60}},"Version": 1}"
        ]
    ]
]
```

Output:
```
Dict(
    "Messages" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ValidateConfigurationSettings)
"""
@inline validate_configuration_settings(aws::AWSConfig=default_aws_config(); args...) = validate_configuration_settings(aws, args)

@inline validate_configuration_settings(aws::AWSConfig, args) = AWSCore.Services.elasticbeanstalk(aws, "ValidateConfigurationSettings", args)

@inline validate_configuration_settings(args) = validate_configuration_settings(default_aws_config(), args)




end # module ElasticBeanstalk


#==============================================================================#
# End of file
#==============================================================================#
