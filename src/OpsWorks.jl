#==============================================================================#
# OpsWorks.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/opsworks-2013-02-18.normal.json
#==============================================================================#

__precompile__()

module OpsWorks

using AWSCore


"""
    using AWSSDK.OpsWorks.assign_instance
    assign_instance([::AWSConfig], arguments::Dict)
    assign_instance([::AWSConfig]; InstanceId=, LayerIds=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "AssignInstance", arguments::Dict)
    opsworks([::AWSConfig], "AssignInstance", InstanceId=, LayerIds=)

# AssignInstance Operation

Assign a registered instance to a layer.

*   You can assign registered on-premises instances to any layer type.

*   You can assign registered Amazon EC2 instances only to custom layers.

*   You cannot use this action with instances that were created with AWS OpsWorks Stacks.

**Required Permissions**: To use this action, an AWS Identity and Access Management (IAM) user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID.


## `LayerIds = [::String, ...]` -- *Required*
The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AssignInstance)
"""
@inline assign_instance(aws::AWSConfig=default_aws_config(); args...) = assign_instance(aws, args)

@inline assign_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "AssignInstance", args)

@inline assign_instance(args) = assign_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.assign_volume
    assign_volume([::AWSConfig], arguments::Dict)
    assign_volume([::AWSConfig]; VolumeId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "AssignVolume", arguments::Dict)
    opsworks([::AWSConfig], "AssignVolume", VolumeId=, <keyword arguments>)

# AssignVolume Operation

Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must first be registered with the stack by calling [RegisterVolume](@ref). After you register the volume, you must call [UpdateVolume](@ref) to specify a mount point before calling `AssignVolume`. For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `VolumeId = ::String` -- *Required*
The volume ID.


## `InstanceId = ::String`
The instance ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AssignVolume)
"""
@inline assign_volume(aws::AWSConfig=default_aws_config(); args...) = assign_volume(aws, args)

@inline assign_volume(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "AssignVolume", args)

@inline assign_volume(args) = assign_volume(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.associate_elastic_ip
    associate_elastic_ip([::AWSConfig], arguments::Dict)
    associate_elastic_ip([::AWSConfig]; ElasticIp=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "AssociateElasticIp", arguments::Dict)
    opsworks([::AWSConfig], "AssociateElasticIp", ElasticIp=, <keyword arguments>)

# AssociateElasticIp Operation

Associates one of the stack's registered Elastic IP addresses with a specified instance. The address must first be registered with the stack by calling [RegisterElasticIp](@ref). For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `ElasticIp = ::String` -- *Required*
The Elastic IP address.


## `InstanceId = ::String`
The instance ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AssociateElasticIp)
"""
@inline associate_elastic_ip(aws::AWSConfig=default_aws_config(); args...) = associate_elastic_ip(aws, args)

@inline associate_elastic_ip(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "AssociateElasticIp", args)

@inline associate_elastic_ip(args) = associate_elastic_ip(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.attach_elastic_load_balancer
    attach_elastic_load_balancer([::AWSConfig], arguments::Dict)
    attach_elastic_load_balancer([::AWSConfig]; ElasticLoadBalancerName=, LayerId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "AttachElasticLoadBalancer", arguments::Dict)
    opsworks([::AWSConfig], "AttachElasticLoadBalancer", ElasticLoadBalancerName=, LayerId=)

# AttachElasticLoadBalancer Operation

Attaches an Elastic Load Balancing load balancer to a specified layer. AWS OpsWorks Stacks does not support Application Load Balancer. You can only use Classic Load Balancer with AWS OpsWorks Stacks. For more information, see [Elastic Load Balancing](http://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html).

**Note**
> You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For more information, see [Elastic Load Balancing Developer Guide](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `ElasticLoadBalancerName = ::String` -- *Required*
The Elastic Load Balancing instance's name.


## `LayerId = ::String` -- *Required*
The ID of the layer to which the Elastic Load Balancing instance is to be attached.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AttachElasticLoadBalancer)
"""
@inline attach_elastic_load_balancer(aws::AWSConfig=default_aws_config(); args...) = attach_elastic_load_balancer(aws, args)

@inline attach_elastic_load_balancer(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "AttachElasticLoadBalancer", args)

@inline attach_elastic_load_balancer(args) = attach_elastic_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.clone_stack
    clone_stack([::AWSConfig], arguments::Dict)
    clone_stack([::AWSConfig]; SourceStackId=, ServiceRoleArn=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "CloneStack", arguments::Dict)
    opsworks([::AWSConfig], "CloneStack", SourceStackId=, ServiceRoleArn=, <keyword arguments>)

# CloneStack Operation

Creates a clone of a specified stack. For more information, see [Clone a Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html). By default, all parameters are set to the values used by the parent stack.

**Required Permissions**: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `SourceStackId = ::String` -- *Required*
The source stack ID.


## `Name = ::String`
The cloned stack name.


## `Region = ::String`
The cloned stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html).


## `VpcId = ::String`
The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All instances are launched into this VPC, and you cannot change the ID later.

*   If your account supports EC2 Classic, the default value is no VPC.

*   If your account does not support EC2 Classic, the default value is the default VPC for the specified region.

If the VPC ID corresponds to a default VPC and you have specified either the `DefaultAvailabilityZone` or the `DefaultSubnetId` parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.

If you specify a nondefault VPC ID, note the following:

*   It must belong to a VPC in your account that is in the specified region.

*   You must specify a value for `DefaultSubnetId`.

For more information about how to use AWS OpsWorks Stacks with a VPC, see [Running a Stack in a VPC](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html). For more information about default VPC and EC2 Classic, see [Supported Platforms](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html).


## `Attributes = ::Dict{String,String}`
A list of stack attributes and values as key/value pairs to be added to the cloned stack.


## `ServiceRoleArn = ::String` -- *Required*
The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for you. You can obtain an existing stack's IAM ARN programmatically by calling [DescribePermissions](@ref). For more information about IAM ARNs, see [Using Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).

**Note**
> You must set this parameter to a valid service role ARN or the action will fail; there is no default value. You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.


## `DefaultInstanceProfileArn = ::String`
The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see [Using Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


## `DefaultOs = ::String`
The stack's operating system, which must be set to one of the following.

*   A supported Linux operating system: An Amazon Linux version, such as `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.

*   A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.

*   `CentOS Linux 7`

*   `Red Hat Enterprise Linux 7`

*   `Microsoft Windows Server 2012 R2 Base`, `Microsoft Windows Server 2012 R2 with SQL Server Express`, `Microsoft Windows Server 2012 R2 with SQL Server Standard`, or `Microsoft Windows Server 2012 R2 with SQL Server Web`.

*   A custom AMI: `Custom`. You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see [Using Custom AMIs](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).

The default option is the parent stack's operating system. For more information about supported operating systems, see [AWS OpsWorks Stacks Operating Systems](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html).

**Note**
> You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to Windows or Windows to Linux.


## `HostnameTheme = ::String`
The stack's host name theme, with spaces are replaced by underscores. The theme is used to generate host names for the stack's instances. By default, `HostnameTheme` is set to `Layer_Dependent`, which creates host names by appending integers to the layer's short name. The other themes are:

*   `Baked_Goods`

*   `Clouds`

*   `Europe_Cities`

*   `Fruits`

*   `Greek_Deities`

*   `Legendary_creatures_from_Japan`

*   `Planets_and_Moons`

*   `Roman_Deities`

*   `Scottish_Islands`

*   `US_Cities`

*   `Wild_Cats`

To obtain a generated host name, call `GetHostNameSuggestion`, which returns a host name based on the current theme.


## `DefaultAvailabilityZone = ::String`
The cloned stack's default Availability Zone, which must be in the specified region. For more information, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html). If you also specify a value for `DefaultSubnetId`, the subnet must be in the same zone. For more information, see the `VpcId` parameter description.


## `DefaultSubnetId = ::String`
The stack's default VPC subnet ID. This parameter is required if you specify a value for the `VpcId` parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for `DefaultAvailabilityZone`, the subnet must be in that zone. For information on default values and when this parameter is required, see the `VpcId` parameter description.


## `CustomJson = ::String`
A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:

`"{\\"key1\\": \\"value1\\", \\"key2\\": \\"value2\\",...}"`

For more information about custom JSON, see [Use Custom JSON to Modify the Stack Configuration Attributes](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html)


## `ConfigurationManager = [ ... ]`
The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.
```
 ConfigurationManager = [
        "Name" =>  ::String,
        "Version" =>  ::String
    ]
```

## `ChefConfiguration = [ ... ]`
A `ChefConfiguration` object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see [Create a New Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html).
```
 ChefConfiguration = [
        "ManageBerkshelf" =>  ::Bool,
        "BerkshelfVersion" =>  ::String
    ]
```

## `UseCustomCookbooks = ::Bool`
Whether to use custom cookbooks.


## `UseOpsworksSecurityGroups = ::Bool`
Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.

AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With `UseOpsworksSecurityGroups` you can instead provide your own custom security groups. `UseOpsworksSecurityGroups` has the following settings:

*   True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.

*   False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.

For more information, see [Create a New Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html).


## `CustomCookbooksSource = [ ... ]`

```
 CustomCookbooksSource = [
        "Type" =>  "git", "svn", "archive" or "s3",
        "Url" =>  ::String,
        "Username" =>  ::String,
        "Password" =>  ::String,
        "SshKey" =>  ::String,
        "Revision" =>  ::String
    ]
```

## `DefaultSshKeyName = ::String`
A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see [Using SSH to Communicate with an Instance](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html) and [Managing SSH Access](http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html). You can override this setting by specifying a different key pair, or no key pair, when you [create an instance](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).


## `ClonePermissions = ::Bool`
Whether to clone the source stack's permissions.


## `CloneAppIds = [::String, ...]`
A list of source stack app IDs to be included in the cloned stack.


## `DefaultRootDeviceType = "ebs" or "instance-store"`
The default root device type. This value is used by default for all instances in the cloned stack, but you can override it when you create an instance. For more information, see [Storage for the Root Device](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device).


## `AgentVersion = ::String`
The default AWS OpsWorks Stacks agent version. You have the following options:

*   Auto-update - Set this parameter to `LATEST`. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.

*   Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.

The default setting is `LATEST`. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call [DescribeAgentVersions](@ref). AgentVersion cannot be set to Chef 12.2.

**Note**
> You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.




# Returns

`CloneStackResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CloneStack)
"""
@inline clone_stack(aws::AWSConfig=default_aws_config(); args...) = clone_stack(aws, args)

@inline clone_stack(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "CloneStack", args)

@inline clone_stack(args) = clone_stack(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.create_app
    create_app([::AWSConfig], arguments::Dict)
    create_app([::AWSConfig]; StackId=, Name=, Type=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "CreateApp", arguments::Dict)
    opsworks([::AWSConfig], "CreateApp", StackId=, Name=, Type=, <keyword arguments>)

# CreateApp Operation

Creates an app for a specified stack. For more information, see [Creating Apps](http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.


## `Shortname = ::String`
The app's short name.


## `Name = ::String` -- *Required*
The app name.


## `Description = ::String`
A description of the app.


## `DataSources = [[ ... ], ...]`
The app's data source.
```
 DataSources = [[
        "Type" =>  ::String,
        "Arn" =>  ::String,
        "DatabaseName" =>  ::String
    ], ...]
```

## `Type = "aws-flow-ruby", "java", "rails", "php", "nodejs", "static" or "other"` -- *Required*
The app type. Each supported type is associated with a particular layer. For example, PHP applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances that are members of the corresponding layer. If your app isn't one of the standard types, or you prefer to implement your own Deploy recipes, specify `other`.


## `AppSource = [ ... ]`
A `Source` object that specifies the app repository.
```
 AppSource = [
        "Type" =>  "git", "svn", "archive" or "s3",
        "Url" =>  ::String,
        "Username" =>  ::String,
        "Password" =>  ::String,
        "SshKey" =>  ::String,
        "Revision" =>  ::String
    ]
```

## `Domains = [::String, ...]`
The app virtual host settings, with multiple domains separated by commas. For example: `'www.example.com, example.com'`


## `EnableSsl = ::Bool`
Whether to enable SSL for the app.


## `SslConfiguration = [ ... ]`
An `SslConfiguration` object with the SSL configuration.
```
 SslConfiguration = [
        "Certificate" => <required> ::String,
        "PrivateKey" => <required> ::String,
        "Chain" =>  ::String
    ]
```

## `Attributes = ::Dict{String,String}`
One or more user-defined key/value pairs to be added to the stack attributes.


## `Environment = [[ ... ], ...]`
An array of `EnvironmentVariable` objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instance. For more information, see [Environment Variables](http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment).

There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 10KB)."

**Note**
> This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.
```
 Environment = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String,
        "Secure" =>  ::Bool
    ], ...]
```



# Returns

`CreateAppResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateApp)
"""
@inline create_app(aws::AWSConfig=default_aws_config(); args...) = create_app(aws, args)

@inline create_app(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "CreateApp", args)

@inline create_app(args) = create_app(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.create_deployment
    create_deployment([::AWSConfig], arguments::Dict)
    create_deployment([::AWSConfig]; StackId=, Command=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "CreateDeployment", arguments::Dict)
    opsworks([::AWSConfig], "CreateDeployment", StackId=, Command=, <keyword arguments>)

# CreateDeployment Operation

Runs deployment or stack commands. For more information, see [Deploying Apps](http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html) and [Run Stack Commands](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html).

**Required Permissions**: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.


## `AppId = ::String`
The app ID. This parameter is required for app deployments, but not for other deployment commands.


## `InstanceIds = [::String, ...]`
The instance IDs for the deployment targets.


## `LayerIds = [::String, ...]`
The layer IDs for the deployment targets.


## `Command = [ ... ]` -- *Required*
A `DeploymentCommand` object that specifies the deployment command and any associated arguments.
```
 Command = [
        "Name" => <required> "install_dependencies", "update_dependencies", "update_custom_cookbooks", "execute_recipes", "configure", "setup", "deploy", "rollback", "start", "stop", "restart" or "undeploy",
        "Args" =>  ::Dict{String,String}
    ]
```

## `Comment = ::String`
A user-defined comment.


## `CustomJson = ::String`
A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:

`"{\\"key1\\": \\"value1\\", \\"key2\\": \\"value2\\",...}"`

For more information about custom JSON, see [Use Custom JSON to Modify the Stack Configuration Attributes](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html).




# Returns

`CreateDeploymentResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateDeployment)
"""
@inline create_deployment(aws::AWSConfig=default_aws_config(); args...) = create_deployment(aws, args)

@inline create_deployment(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "CreateDeployment", args)

@inline create_deployment(args) = create_deployment(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.create_instance
    create_instance([::AWSConfig], arguments::Dict)
    create_instance([::AWSConfig]; StackId=, LayerIds=, InstanceType=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "CreateInstance", arguments::Dict)
    opsworks([::AWSConfig], "CreateInstance", StackId=, LayerIds=, InstanceType=, <keyword arguments>)

# CreateInstance Operation

Creates an instance in a specified stack. For more information, see [Adding an Instance to a Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.


## `LayerIds = [::String, ...]` -- *Required*
An array that contains the instance's layer IDs.


## `InstanceType = ::String` -- *Required*
The instance type, such as `t2.micro`. For a list of supported instance types, open the stack in the console, choose **Instances**, and choose **+ Instance**. The **Size** list contains the currently supported types. For more information, see [Instance Families and Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html). The parameter values that you use to specify the various types are in the **API Name** column of the **Available Instance Types** table.


## `AutoScalingType = "load" or "timer"`
For load-based or time-based instances, the type. Windows stacks can use only time-based instances.


## `Hostname = ::String`
The instance host name.


## `Os = ::String`
The instance's operating system, which must be set to one of the following.

*   A supported Linux operating system: An Amazon Linux version, such as `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.

*   A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.

*   `CentOS Linux 7`

*   `Red Hat Enterprise Linux 7`

*   A supported Windows operating system, such as `Microsoft Windows Server 2012 R2 Base`, `Microsoft Windows Server 2012 R2 with SQL Server Express`, `Microsoft Windows Server 2012 R2 with SQL Server Standard`, or `Microsoft Windows Server 2012 R2 with SQL Server Web`.

*   A custom AMI: `Custom`.

For more information about the supported operating systems, see [AWS OpsWorks Stacks Operating Systems](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html).

The default option is the current Amazon Linux version. If you set this parameter to `Custom`, you must use the [CreateInstance](@ref) action's AmiId parameter to specify the custom AMI that you want to use. Block device mappings are not supported if the value is `Custom`. For more information about supported operating systems, see [Operating Systems](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html)For more information about how to use custom AMIs with AWS OpsWorks Stacks, see [Using Custom AMIs](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).


## `AmiId = ::String`
A custom AMI ID to be used to create the instance. The AMI should be based on one of the supported operating systems. For more information, see [Using Custom AMIs](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).

**Note**
> If you specify a custom AMI, you must set `Os` to `Custom`.


## `SshKeyName = ::String`
The instance's Amazon EC2 key-pair name.


## `AvailabilityZone = ::String`
The instance Availability Zone. For more information, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html).


## `VirtualizationType = ::String`
The instance's virtualization type, `paravirtual` or `hvm`.


## `SubnetId = ::String`
The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's default subnet ID value and direct AWS OpsWorks Stacks to launch the instance in a different subnet.


## `Architecture = "x86_64" or "i386"`
The instance architecture. The default option is `x86_64`. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see [Instance Families and Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).


## `RootDeviceType = "ebs" or "instance-store"`
The instance root device type. For more information, see [Storage for the Root Device](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device).


## `BlockDeviceMappings = [[ ... ], ...]`
An array of `BlockDeviceMapping` objects that specify the instance's block devices. For more information, see [Block Device Mapping](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html). Note that block device mappings are not supported for custom AMIs.
```
 BlockDeviceMappings = [[
        "DeviceName" =>  ::String,
        "NoDevice" =>  ::String,
        "VirtualName" =>  ::String,
        "Ebs" =>  [
            "SnapshotId" =>  ::String,
            "Iops" =>  ::Int,
            "VolumeSize" =>  ::Int,
            "VolumeType" =>  "gp2", "io1" or "standard",
            "DeleteOnTermination" =>  ::Bool
        ]
    ], ...]
```

## `InstallUpdatesOnBoot = ::Bool`
Whether to install operating system and package updates when the instance boots. The default value is `true`. To control when updates are installed, set this value to `false`. You must then update your instances manually by using [CreateDeployment](@ref) to run the `update_dependencies` stack command or by manually running `yum` (Amazon Linux) or `apt-get` (Ubuntu) on the instances.

**Note**
> We strongly recommend using the default value of `true` to ensure that your instances have the latest security updates.


## `EbsOptimized = ::Bool`
Whether to create an Amazon EBS-optimized instance.


## `AgentVersion = ::String`
The default AWS OpsWorks Stacks agent version. You have the following options:

*   `INHERIT` - Use the stack's default agent version setting.

*   *version_number* - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.

The default setting is `INHERIT`. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call [DescribeAgentVersions](@ref). AgentVersion cannot be set to Chef 12.2.


## `Tenancy = ::String`
The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, inherit tenancy settings from the VPC. The following are valid values for this parameter: `dedicated`, `default`, or `host`. Because there are costs associated with changes in tenancy options, we recommend that you research tenancy options before choosing them for your instances. For more information about dedicated hosts, see [Dedicated Hosts Overview](http://aws.amazon.com/ec2/dedicated-hosts/) and [Amazon EC2 Dedicated Hosts](http://aws.amazon.com/ec2/dedicated-hosts/). For more information about dedicated instances, see [Dedicated Instances](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html) and [Amazon EC2 Dedicated Instances](http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/).




# Returns

`CreateInstanceResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateInstance)
"""
@inline create_instance(aws::AWSConfig=default_aws_config(); args...) = create_instance(aws, args)

@inline create_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "CreateInstance", args)

@inline create_instance(args) = create_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.create_layer
    create_layer([::AWSConfig], arguments::Dict)
    create_layer([::AWSConfig]; StackId=, Type=, Name=, Shortname=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "CreateLayer", arguments::Dict)
    opsworks([::AWSConfig], "CreateLayer", StackId=, Type=, Name=, Shortname=, <keyword arguments>)

# CreateLayer Operation

Creates a layer. For more information, see [How to Create a Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html).

**Note**
> You should use **CreateLayer** for noncustom layer types such as PHP App Server only if the stack does not have an existing layer of that type. A stack can have at most one instance of each noncustom layer; if you attempt to create a second instance, **CreateLayer** fails. A stack can have an arbitrary number of custom layers, so you can call **CreateLayer** as many times as you like for that layer type.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The layer stack ID.


## `Type = "aws-flow-ruby", "ecs-cluster", "java-app", "lb", "web", "php-app", "rails-app", "nodejs-app", "memcached", "db-master", "monitoring-master" or "custom"` -- *Required*
The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.


## `Name = ::String` -- *Required*
The layer name, which is used by the console.


## `Shortname = ::String` -- *Required*
For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'.

The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the [Layer Reference](http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html).


## `Attributes = ::Dict{String,String}`
One or more user-defined key-value pairs to be added to the stack attributes.

To create a cluster layer, set the `EcsClusterArn` attribute to the cluster's ARN.


## `CloudWatchLogsConfiguration = [ ... ]`
Specifies CloudWatch Logs configuration options for the layer. For more information, see [CloudWatchLogsLogStream](@ref).
```
 CloudWatchLogsConfiguration = [
        "Enabled" =>  ::Bool,
        "LogStreams" =>  [[
            "LogGroupName" =>  ::String,
            "DatetimeFormat" =>  ::String,
            "TimeZone" =>  "LOCAL" or "UTC",
            "File" =>  ::String,
            "FileFingerprintLines" =>  ::String,
            "MultiLineStartPattern" =>  ::String,
            "InitialPosition" =>  "start_of_file" or "end_of_file",
            "Encoding" =>  "ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8" or "utf_8_sig",
            "BufferDuration" =>  ::Int,
            "BatchCount" =>  ::Int,
            "BatchSize" =>  ::Int
        ], ...]
    ]
```

## `CustomInstanceProfileArn = ::String`
The ARN of an IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see [Using Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


## `CustomJson = ::String`
A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see [Using Custom JSON](http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html). This feature is supported as of version 1.7.42 of the AWS CLI.


## `CustomSecurityGroupIds = [::String, ...]`
An array containing the layer custom security group IDs.


## `Packages = [::String, ...]`
An array of `Package` objects that describes the layer packages.


## `VolumeConfigurations = [[ ... ], ...]`
A `VolumeConfigurations` object that describes the layer's Amazon EBS volumes.
```
 VolumeConfigurations = [[
        "MountPoint" => <required> ::String,
        "RaidLevel" =>  ::Int,
        "NumberOfDisks" => <required> ::Int,
        "Size" => <required> ::Int,
        "VolumeType" =>  ::String,
        "Iops" =>  ::Int,
        "Encrypted" =>  ::Bool
    ], ...]
```

## `EnableAutoHealing = ::Bool`
Whether to disable auto healing for the layer.


## `AutoAssignElasticIps = ::Bool`
Whether to automatically assign an [Elastic IP address](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) to the layer's instances. For more information, see [How to Edit a Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).


## `AutoAssignPublicIps = ::Bool`
For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see [How to Edit a Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).


## `CustomRecipes = [ ... ]`
A `LayerCustomRecipes` object that specifies the layer custom recipes.
```
 CustomRecipes = [
        "Setup" =>  [::String, ...],
        "Configure" =>  [::String, ...],
        "Deploy" =>  [::String, ...],
        "Undeploy" =>  [::String, ...],
        "Shutdown" =>  [::String, ...]
    ]
```

## `InstallUpdatesOnBoot = ::Bool`
Whether to install operating system and package updates when the instance boots. The default value is `true`. To control when updates are installed, set this value to `false`. You must then update your instances manually by using [CreateDeployment](@ref) to run the `update_dependencies` stack command or by manually running `yum` (Amazon Linux) or `apt-get` (Ubuntu) on the instances.

**Note**
> To ensure that your instances have the latest security updates, we strongly recommend using the default value of `true`.


## `UseEbsOptimizedInstances = ::Bool`
Whether to use Amazon EBS-optimized instances.


## `LifecycleEventConfiguration = ["Shutdown" =>  [ ... ]]`
A `LifeCycleEventConfiguration` object that you can use to configure the Shutdown event to specify an execution timeout and enable or disable Elastic Load Balancer connection draining.
```
 LifecycleEventConfiguration = ["Shutdown" =>  [
            "ExecutionTimeout" =>  ::Int,
            "DelayUntilElbConnectionsDrained" =>  ::Bool
        ]]
```



# Returns

`CreateLayerResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateLayer)
"""
@inline create_layer(aws::AWSConfig=default_aws_config(); args...) = create_layer(aws, args)

@inline create_layer(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "CreateLayer", args)

@inline create_layer(args) = create_layer(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.create_stack
    create_stack([::AWSConfig], arguments::Dict)
    create_stack([::AWSConfig]; Name=, Region=, ServiceRoleArn=, DefaultInstanceProfileArn=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "CreateStack", arguments::Dict)
    opsworks([::AWSConfig], "CreateStack", Name=, Region=, ServiceRoleArn=, DefaultInstanceProfileArn=, <keyword arguments>)

# CreateStack Operation

Creates a new stack. For more information, see [Create a New Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html).

**Required Permissions**: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `Name = ::String` -- *Required*
The stack name.


## `Region = ::String` -- *Required*
The stack's AWS region, such as `ap-south-1`. For more information about Amazon regions, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html).

**Note**
> In the AWS CLI, this API maps to the `--stack-region` parameter. If the `--stack-region` parameter and the AWS CLI common parameter `--region` are set to the same value, the stack uses a *regional* endpoint. If the `--stack-region` parameter is not set, but the AWS CLI `--region` parameter is, this also results in a stack with a *regional* endpoint. However, if the `--region` parameter is set to `us-east-1`, and the `--stack-region` parameter is set to one of the following, then the stack uses a legacy or *classic* region: `us-west-1, us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1, ap-southeast-2`. In this case, the actual API endpoint of the stack is in `us-east-1`. Only the preceding regions are supported as classic regions in the `us-east-1` API endpoint. Because it is a best practice to choose the regional endpoint that is closest to where you manage AWS, we recommend that you use regional endpoints for new stacks. The AWS CLI common `--region` parameter always specifies a regional API endpoint; it cannot be used to specify a classic AWS OpsWorks Stacks region.


## `VpcId = ::String`
The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.

*   If your account supports EC2-Classic, the default value is `no VPC`.

*   If your account does not support EC2-Classic, the default value is the default VPC for the specified region.

If the VPC ID corresponds to a default VPC and you have specified either the `DefaultAvailabilityZone` or the `DefaultSubnetId` parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.

If you specify a nondefault VPC ID, note the following:

*   It must belong to a VPC in your account that is in the specified region.

*   You must specify a value for `DefaultSubnetId`.

For more information about how to use AWS OpsWorks Stacks with a VPC, see [Running a Stack in a VPC](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html). For more information about default VPC and EC2-Classic, see [Supported Platforms](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html).


## `Attributes = ::Dict{String,String}`
One or more user-defined key-value pairs to be added to the stack attributes.


## `ServiceRoleArn = ::String` -- *Required*
The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. For more information about IAM ARNs, see [Using Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


## `DefaultInstanceProfileArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see [Using Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


## `DefaultOs = ::String`
The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.

*   A supported Linux operating system: An Amazon Linux version, such as `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.

*   A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.

*   `CentOS Linux 7`

*   `Red Hat Enterprise Linux 7`

*   A supported Windows operating system, such as `Microsoft Windows Server 2012 R2 Base`, `Microsoft Windows Server 2012 R2 with SQL Server Express`, `Microsoft Windows Server 2012 R2 with SQL Server Standard`, or `Microsoft Windows Server 2012 R2 with SQL Server Web`.

*   A custom AMI: `Custom`. You specify the custom AMI you want to use when you create instances. For more information, see [Using Custom AMIs](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).

The default option is the current Amazon Linux version. For more information about supported operating systems, see [AWS OpsWorks Stacks Operating Systems](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html).


## `HostnameTheme = ::String`
The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, `HostnameTheme` is set to `Layer_Dependent`, which creates host names by appending integers to the layer's short name. The other themes are:

*   `Baked_Goods`

*   `Clouds`

*   `Europe_Cities`

*   `Fruits`

*   `Greek_Deities`

*   `Legendary_creatures_from_Japan`

*   `Planets_and_Moons`

*   `Roman_Deities`

*   `Scottish_Islands`

*   `US_Cities`

*   `Wild_Cats`

To obtain a generated host name, call `GetHostNameSuggestion`, which returns a host name based on the current theme.


## `DefaultAvailabilityZone = ::String`
The stack's default Availability Zone, which must be in the specified region. For more information, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html). If you also specify a value for `DefaultSubnetId`, the subnet must be in the same zone. For more information, see the `VpcId` parameter description.


## `DefaultSubnetId = ::String`
The stack's default VPC subnet ID. This parameter is required if you specify a value for the `VpcId` parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for `DefaultAvailabilityZone`, the subnet must be in that zone. For information on default values and when this parameter is required, see the `VpcId` parameter description.


## `CustomJson = ::String`
A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:

`"{\\"key1\\": \\"value1\\", \\"key2\\": \\"value2\\",...}"`

For more information about custom JSON, see [Use Custom JSON to Modify the Stack Configuration Attributes](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html).


## `ConfigurationManager = [ ... ]`
The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.
```
 ConfigurationManager = [
        "Name" =>  ::String,
        "Version" =>  ::String
    ]
```

## `ChefConfiguration = [ ... ]`
A `ChefConfiguration` object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see [Create a New Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html).
```
 ChefConfiguration = [
        "ManageBerkshelf" =>  ::Bool,
        "BerkshelfVersion" =>  ::String
    ]
```

## `UseCustomCookbooks = ::Bool`
Whether the stack uses custom cookbooks.


## `UseOpsworksSecurityGroups = ::Bool`
Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.

AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With `UseOpsworksSecurityGroups` you can instead provide your own custom security groups. `UseOpsworksSecurityGroups` has the following settings:

*   True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.

*   False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.

For more information, see [Create a New Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html).


## `CustomCookbooksSource = [ ... ]`

```
 CustomCookbooksSource = [
        "Type" =>  "git", "svn", "archive" or "s3",
        "Url" =>  ::String,
        "Username" =>  ::String,
        "Password" =>  ::String,
        "SshKey" =>  ::String,
        "Revision" =>  ::String
    ]
```

## `DefaultSshKeyName = ::String`
A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see [Using SSH to Communicate with an Instance](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html) and [Managing SSH Access](http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html). You can override this setting by specifying a different key pair, or no key pair, when you [create an instance](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).


## `DefaultRootDeviceType = "ebs" or "instance-store"`
The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is `instance-store`. For more information, see [Storage for the Root Device](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device).


## `AgentVersion = ::String`
The default AWS OpsWorks Stacks agent version. You have the following options:

*   Auto-update - Set this parameter to `LATEST`. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.

*   Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.

The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call [DescribeAgentVersions](@ref). AgentVersion cannot be set to Chef 12.2.

**Note**
> You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.




# Returns

`CreateStackResult`

# Exceptions

`ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateStack)
"""
@inline create_stack(aws::AWSConfig=default_aws_config(); args...) = create_stack(aws, args)

@inline create_stack(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "CreateStack", args)

@inline create_stack(args) = create_stack(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.create_user_profile
    create_user_profile([::AWSConfig], arguments::Dict)
    create_user_profile([::AWSConfig]; IamUserArn=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "CreateUserProfile", arguments::Dict)
    opsworks([::AWSConfig], "CreateUserProfile", IamUserArn=, <keyword arguments>)

# CreateUserProfile Operation

Creates a new user profile.

**Required Permissions**: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `IamUserArn = ::String` -- *Required*
The user's IAM ARN; this can also be a federated user's ARN.


## `SshUsername = ::String`
The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, `my.name` will be changed to `myname`. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name.


## `SshPublicKey = ::String`
The user's public SSH key.


## `AllowSelfManagement = ::Bool`
Whether users can specify their own SSH public key through the My Settings page. For more information, see [Setting an IAM User's Public SSH Key](http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html).




# Returns

`CreateUserProfileResult`

# Exceptions

`ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateUserProfile)
"""
@inline create_user_profile(aws::AWSConfig=default_aws_config(); args...) = create_user_profile(aws, args)

@inline create_user_profile(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "CreateUserProfile", args)

@inline create_user_profile(args) = create_user_profile(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.delete_app
    delete_app([::AWSConfig], arguments::Dict)
    delete_app([::AWSConfig]; AppId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeleteApp", arguments::Dict)
    opsworks([::AWSConfig], "DeleteApp", AppId=)

# DeleteApp Operation

Deletes a specified app.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `AppId = ::String` -- *Required*
The app ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteApp)
"""
@inline delete_app(aws::AWSConfig=default_aws_config(); args...) = delete_app(aws, args)

@inline delete_app(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeleteApp", args)

@inline delete_app(args) = delete_app(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.delete_instance
    delete_instance([::AWSConfig], arguments::Dict)
    delete_instance([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeleteInstance", arguments::Dict)
    opsworks([::AWSConfig], "DeleteInstance", InstanceId=, <keyword arguments>)

# DeleteInstance Operation

Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it.

For more information, see [Deleting Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID.


## `DeleteElasticIp = ::Bool`
Whether to delete the instance Elastic IP address.


## `DeleteVolumes = ::Bool`
Whether to delete the instance's Amazon EBS volumes.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteInstance)
"""
@inline delete_instance(aws::AWSConfig=default_aws_config(); args...) = delete_instance(aws, args)

@inline delete_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeleteInstance", args)

@inline delete_instance(args) = delete_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.delete_layer
    delete_layer([::AWSConfig], arguments::Dict)
    delete_layer([::AWSConfig]; LayerId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeleteLayer", arguments::Dict)
    opsworks([::AWSConfig], "DeleteLayer", LayerId=)

# DeleteLayer Operation

Deletes a specified layer. You must first stop and then delete all associated instances or unassign registered instances. For more information, see [How to Delete a Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `LayerId = ::String` -- *Required*
The layer ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteLayer)
"""
@inline delete_layer(aws::AWSConfig=default_aws_config(); args...) = delete_layer(aws, args)

@inline delete_layer(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeleteLayer", args)

@inline delete_layer(args) = delete_layer(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.delete_stack
    delete_stack([::AWSConfig], arguments::Dict)
    delete_stack([::AWSConfig]; StackId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeleteStack", arguments::Dict)
    opsworks([::AWSConfig], "DeleteStack", StackId=)

# DeleteStack Operation

Deletes a specified stack. You must first delete all instances, layers, and apps or deregister registered instances. For more information, see [Shut Down a Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteStack)
"""
@inline delete_stack(aws::AWSConfig=default_aws_config(); args...) = delete_stack(aws, args)

@inline delete_stack(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeleteStack", args)

@inline delete_stack(args) = delete_stack(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.delete_user_profile
    delete_user_profile([::AWSConfig], arguments::Dict)
    delete_user_profile([::AWSConfig]; IamUserArn=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeleteUserProfile", arguments::Dict)
    opsworks([::AWSConfig], "DeleteUserProfile", IamUserArn=)

# DeleteUserProfile Operation

Deletes a user profile.

**Required Permissions**: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `IamUserArn = ::String` -- *Required*
The user's IAM ARN. This can also be a federated user's ARN.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteUserProfile)
"""
@inline delete_user_profile(aws::AWSConfig=default_aws_config(); args...) = delete_user_profile(aws, args)

@inline delete_user_profile(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeleteUserProfile", args)

@inline delete_user_profile(args) = delete_user_profile(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.deregister_ecs_cluster
    deregister_ecs_cluster([::AWSConfig], arguments::Dict)
    deregister_ecs_cluster([::AWSConfig]; EcsClusterArn=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeregisterEcsCluster", arguments::Dict)
    opsworks([::AWSConfig], "DeregisterEcsCluster", EcsClusterArn=)

# DeregisterEcsCluster Operation

Deregisters a specified Amazon ECS cluster from a stack. For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see [http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `EcsClusterArn = ::String` -- *Required*
The cluster's Amazon Resource Number (ARN).




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterEcsCluster)
"""
@inline deregister_ecs_cluster(aws::AWSConfig=default_aws_config(); args...) = deregister_ecs_cluster(aws, args)

@inline deregister_ecs_cluster(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeregisterEcsCluster", args)

@inline deregister_ecs_cluster(args) = deregister_ecs_cluster(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.deregister_elastic_ip
    deregister_elastic_ip([::AWSConfig], arguments::Dict)
    deregister_elastic_ip([::AWSConfig]; ElasticIp=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeregisterElasticIp", arguments::Dict)
    opsworks([::AWSConfig], "DeregisterElasticIp", ElasticIp=)

# DeregisterElasticIp Operation

Deregisters a specified Elastic IP address. The address can then be registered by another stack. For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `ElasticIp = ::String` -- *Required*
The Elastic IP address.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterElasticIp)
"""
@inline deregister_elastic_ip(aws::AWSConfig=default_aws_config(); args...) = deregister_elastic_ip(aws, args)

@inline deregister_elastic_ip(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeregisterElasticIp", args)

@inline deregister_elastic_ip(args) = deregister_elastic_ip(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.deregister_instance
    deregister_instance([::AWSConfig], arguments::Dict)
    deregister_instance([::AWSConfig]; InstanceId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeregisterInstance", arguments::Dict)
    opsworks([::AWSConfig], "DeregisterInstance", InstanceId=)

# DeregisterInstance Operation

Deregister a registered Amazon EC2 or on-premises instance. This action removes the instance from the stack and returns it to your control. This action cannot be used with instances that were created with AWS OpsWorks Stacks.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterInstance)
"""
@inline deregister_instance(aws::AWSConfig=default_aws_config(); args...) = deregister_instance(aws, args)

@inline deregister_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeregisterInstance", args)

@inline deregister_instance(args) = deregister_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.deregister_rds_db_instance
    deregister_rds_db_instance([::AWSConfig], arguments::Dict)
    deregister_rds_db_instance([::AWSConfig]; RdsDbInstanceArn=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeregisterRdsDbInstance", arguments::Dict)
    opsworks([::AWSConfig], "DeregisterRdsDbInstance", RdsDbInstanceArn=)

# DeregisterRdsDbInstance Operation

Deregisters an Amazon RDS instance.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `RdsDbInstanceArn = ::String` -- *Required*
The Amazon RDS instance's ARN.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterRdsDbInstance)
"""
@inline deregister_rds_db_instance(aws::AWSConfig=default_aws_config(); args...) = deregister_rds_db_instance(aws, args)

@inline deregister_rds_db_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeregisterRdsDbInstance", args)

@inline deregister_rds_db_instance(args) = deregister_rds_db_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.deregister_volume
    deregister_volume([::AWSConfig], arguments::Dict)
    deregister_volume([::AWSConfig]; VolumeId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DeregisterVolume", arguments::Dict)
    opsworks([::AWSConfig], "DeregisterVolume", VolumeId=)

# DeregisterVolume Operation

Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `VolumeId = ::String` -- *Required*
The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks Stacks assigned to the instance when you registered the volume with the stack, not the Amazon EC2 volume ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterVolume)
"""
@inline deregister_volume(aws::AWSConfig=default_aws_config(); args...) = deregister_volume(aws, args)

@inline deregister_volume(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DeregisterVolume", args)

@inline deregister_volume(args) = deregister_volume(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_agent_versions
    describe_agent_versions([::AWSConfig], arguments::Dict)
    describe_agent_versions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeAgentVersions", arguments::Dict)
    opsworks([::AWSConfig], "DescribeAgentVersions", <keyword arguments>)

# DescribeAgentVersions Operation

Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. `DescribeAgentVersions` returns a list of available agent versions for the specified stack or configuration manager.

# Arguments

## `StackId = ::String`
The stack ID.


## `ConfigurationManager = [ ... ]`
The configuration manager.
```
 ConfigurationManager = [
        "Name" =>  ::String,
        "Version" =>  ::String
    ]
```



# Returns

`DescribeAgentVersionsResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeAgentVersions)
"""
@inline describe_agent_versions(aws::AWSConfig=default_aws_config(); args...) = describe_agent_versions(aws, args)

@inline describe_agent_versions(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeAgentVersions", args)

@inline describe_agent_versions(args) = describe_agent_versions(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_apps
    describe_apps([::AWSConfig], arguments::Dict)
    describe_apps([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeApps", arguments::Dict)
    opsworks([::AWSConfig], "DescribeApps", <keyword arguments>)

# DescribeApps Operation

Requests a description of a specified set of apps.

**Note**
> This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String`
The app stack ID. If you use this parameter, `DescribeApps` returns a description of the apps in the specified stack.


## `AppIds = [::String, ...]`
An array of app IDs for the apps to be described. If you use this parameter, `DescribeApps` returns a description of the specified apps. Otherwise, it returns a description of every app.




# Returns

`DescribeAppsResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeApps)
"""
@inline describe_apps(aws::AWSConfig=default_aws_config(); args...) = describe_apps(aws, args)

@inline describe_apps(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeApps", args)

@inline describe_apps(args) = describe_apps(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_commands
    describe_commands([::AWSConfig], arguments::Dict)
    describe_commands([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeCommands", arguments::Dict)
    opsworks([::AWSConfig], "DescribeCommands", <keyword arguments>)

# DescribeCommands Operation

Describes the results of specified commands.

**Note**
> This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `DeploymentId = ::String`
The deployment ID. If you include this parameter, `DescribeCommands` returns a description of the commands associated with the specified deployment.


## `InstanceId = ::String`
The instance ID. If you include this parameter, `DescribeCommands` returns a description of the commands associated with the specified instance.


## `CommandIds = [::String, ...]`
An array of command IDs. If you include this parameter, `DescribeCommands` returns a description of the specified commands. Otherwise, it returns a description of every command.




# Returns

`DescribeCommandsResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeCommands)
"""
@inline describe_commands(aws::AWSConfig=default_aws_config(); args...) = describe_commands(aws, args)

@inline describe_commands(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeCommands", args)

@inline describe_commands(args) = describe_commands(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_deployments
    describe_deployments([::AWSConfig], arguments::Dict)
    describe_deployments([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeDeployments", arguments::Dict)
    opsworks([::AWSConfig], "DescribeDeployments", <keyword arguments>)

# DescribeDeployments Operation

Requests a description of a specified set of deployments.

**Note**
> This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String`
The stack ID. If you include this parameter, the command returns a description of the commands associated with the specified stack.


## `AppId = ::String`
The app ID. If you include this parameter, the command returns a description of the commands associated with the specified app.


## `DeploymentIds = [::String, ...]`
An array of deployment IDs to be described. If you include this parameter, the command returns a description of the specified deployments. Otherwise, it returns a description of every deployment.




# Returns

`DescribeDeploymentsResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeDeployments)
"""
@inline describe_deployments(aws::AWSConfig=default_aws_config(); args...) = describe_deployments(aws, args)

@inline describe_deployments(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeDeployments", args)

@inline describe_deployments(args) = describe_deployments(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_ecs_clusters
    describe_ecs_clusters([::AWSConfig], arguments::Dict)
    describe_ecs_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeEcsClusters", arguments::Dict)
    opsworks([::AWSConfig], "DescribeEcsClusters", <keyword arguments>)

# DescribeEcsClusters Operation

Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the `MaxResults` and `NextToken` parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

This call accepts only one resource-identifying parameter.

# Arguments

## `EcsClusterArns = [::String, ...]`
A list of ARNs, one for each cluster to be described.


## `StackId = ::String`
A stack ID. `DescribeEcsClusters` returns a description of the cluster that is registered with the stack.


## `NextToken = ::String`
If the previous paginated request did not return all of the remaining results, the response object's`NextToken` parameter value is set to a token. To retrieve the next set of results, call `DescribeEcsClusters` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.


## `MaxResults = ::Int`
To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.




# Returns

`DescribeEcsClustersResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeEcsClusters)
"""
@inline describe_ecs_clusters(aws::AWSConfig=default_aws_config(); args...) = describe_ecs_clusters(aws, args)

@inline describe_ecs_clusters(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeEcsClusters", args)

@inline describe_ecs_clusters(args) = describe_ecs_clusters(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_elastic_ips
    describe_elastic_ips([::AWSConfig], arguments::Dict)
    describe_elastic_ips([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeElasticIps", arguments::Dict)
    opsworks([::AWSConfig], "DescribeElasticIps", <keyword arguments>)

# DescribeElasticIps Operation

Describes [Elastic IP addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html).

**Note**
> This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String`
The instance ID. If you include this parameter, `DescribeElasticIps` returns a description of the Elastic IP addresses associated with the specified instance.


## `StackId = ::String`
A stack ID. If you include this parameter, `DescribeElasticIps` returns a description of the Elastic IP addresses that are registered with the specified stack.


## `Ips = [::String, ...]`
An array of Elastic IP addresses to be described. If you include this parameter, `DescribeElasticIps` returns a description of the specified Elastic IP addresses. Otherwise, it returns a description of every Elastic IP address.




# Returns

`DescribeElasticIpsResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeElasticIps)
"""
@inline describe_elastic_ips(aws::AWSConfig=default_aws_config(); args...) = describe_elastic_ips(aws, args)

@inline describe_elastic_ips(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeElasticIps", args)

@inline describe_elastic_ips(args) = describe_elastic_ips(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_elastic_load_balancers
    describe_elastic_load_balancers([::AWSConfig], arguments::Dict)
    describe_elastic_load_balancers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeElasticLoadBalancers", arguments::Dict)
    opsworks([::AWSConfig], "DescribeElasticLoadBalancers", <keyword arguments>)

# DescribeElasticLoadBalancers Operation

Describes a stack's Elastic Load Balancing instances.

**Note**
> This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String`
A stack ID. The action describes the stack's Elastic Load Balancing instances.


## `LayerIds = [::String, ...]`
A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.




# Returns

`DescribeElasticLoadBalancersResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeElasticLoadBalancers)
"""
@inline describe_elastic_load_balancers(aws::AWSConfig=default_aws_config(); args...) = describe_elastic_load_balancers(aws, args)

@inline describe_elastic_load_balancers(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeElasticLoadBalancers", args)

@inline describe_elastic_load_balancers(args) = describe_elastic_load_balancers(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_instances
    describe_instances([::AWSConfig], arguments::Dict)
    describe_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeInstances", arguments::Dict)
    opsworks([::AWSConfig], "DescribeInstances", <keyword arguments>)

# DescribeInstances Operation

Requests a description of a set of instances.

**Note**
> This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String`
A stack ID. If you use this parameter, `DescribeInstances` returns descriptions of the instances associated with the specified stack.


## `LayerId = ::String`
A layer ID. If you use this parameter, `DescribeInstances` returns descriptions of the instances associated with the specified layer.


## `InstanceIds = [::String, ...]`
An array of instance IDs to be described. If you use this parameter, `DescribeInstances` returns a description of the specified instances. Otherwise, it returns a description of every instance.




# Returns

`DescribeInstancesResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeInstances)
"""
@inline describe_instances(aws::AWSConfig=default_aws_config(); args...) = describe_instances(aws, args)

@inline describe_instances(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeInstances", args)

@inline describe_instances(args) = describe_instances(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_layers
    describe_layers([::AWSConfig], arguments::Dict)
    describe_layers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeLayers", arguments::Dict)
    opsworks([::AWSConfig], "DescribeLayers", <keyword arguments>)

# DescribeLayers Operation

Requests a description of one or more layers in a specified stack.

**Note**
> This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String`
The stack ID.


## `LayerIds = [::String, ...]`
An array of layer IDs that specify the layers to be described. If you omit this parameter, `DescribeLayers` returns a description of every layer in the specified stack.




# Returns

`DescribeLayersResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeLayers)
"""
@inline describe_layers(aws::AWSConfig=default_aws_config(); args...) = describe_layers(aws, args)

@inline describe_layers(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeLayers", args)

@inline describe_layers(args) = describe_layers(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_load_based_auto_scaling
    describe_load_based_auto_scaling([::AWSConfig], arguments::Dict)
    describe_load_based_auto_scaling([::AWSConfig]; LayerIds=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeLoadBasedAutoScaling", arguments::Dict)
    opsworks([::AWSConfig], "DescribeLoadBasedAutoScaling", LayerIds=)

# DescribeLoadBasedAutoScaling Operation

Describes load-based auto scaling configurations for specified layers.

**Note**
> You must specify at least one of the parameters.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `LayerIds = [::String, ...]` -- *Required*
An array of layer IDs.




# Returns

`DescribeLoadBasedAutoScalingResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeLoadBasedAutoScaling)
"""
@inline describe_load_based_auto_scaling(aws::AWSConfig=default_aws_config(); args...) = describe_load_based_auto_scaling(aws, args)

@inline describe_load_based_auto_scaling(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeLoadBasedAutoScaling", args)

@inline describe_load_based_auto_scaling(args) = describe_load_based_auto_scaling(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_my_user_profile
    describe_my_user_profile([::AWSConfig])
    

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeMyUserProfile",)
    

# DescribeMyUserProfile Operation

Describes a user's SSH information.

**Required Permissions**: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Returns

`DescribeMyUserProfileResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeMyUserProfile)
"""
@inline describe_my_user_profile(aws::AWSConfig=default_aws_config(); args...) = describe_my_user_profile(aws, args)

@inline describe_my_user_profile(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeMyUserProfile", args)

@inline describe_my_user_profile(args) = describe_my_user_profile(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_operating_systems
    describe_operating_systems([::AWSConfig])
    

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeOperatingSystems",)
    

# DescribeOperatingSystems Operation

Describes the operating systems that are supported by AWS OpsWorks Stacks.

# Returns

`DescribeOperatingSystemsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeOperatingSystems)
"""
@inline describe_operating_systems(aws::AWSConfig=default_aws_config(); args...) = describe_operating_systems(aws, args)

@inline describe_operating_systems(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeOperatingSystems", args)

@inline describe_operating_systems(args) = describe_operating_systems(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_permissions
    describe_permissions([::AWSConfig], arguments::Dict)
    describe_permissions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribePermissions", arguments::Dict)
    opsworks([::AWSConfig], "DescribePermissions", <keyword arguments>)

# DescribePermissions Operation

Describes the permissions for a specified stack.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `IamUserArn = ::String`
The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM ARNs, see [Using Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


## `StackId = ::String`
The stack ID.




# Returns

`DescribePermissionsResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribePermissions)
"""
@inline describe_permissions(aws::AWSConfig=default_aws_config(); args...) = describe_permissions(aws, args)

@inline describe_permissions(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribePermissions", args)

@inline describe_permissions(args) = describe_permissions(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_raid_arrays
    describe_raid_arrays([::AWSConfig], arguments::Dict)
    describe_raid_arrays([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeRaidArrays", arguments::Dict)
    opsworks([::AWSConfig], "DescribeRaidArrays", <keyword arguments>)

# DescribeRaidArrays Operation

Describe an instance's RAID arrays.

**Note**
> This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String`
The instance ID. If you use this parameter, `DescribeRaidArrays` returns descriptions of the RAID arrays associated with the specified instance.


## `StackId = ::String`
The stack ID.


## `RaidArrayIds = [::String, ...]`
An array of RAID array IDs. If you use this parameter, `DescribeRaidArrays` returns descriptions of the specified arrays. Otherwise, it returns a description of every array.




# Returns

`DescribeRaidArraysResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeRaidArrays)
"""
@inline describe_raid_arrays(aws::AWSConfig=default_aws_config(); args...) = describe_raid_arrays(aws, args)

@inline describe_raid_arrays(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeRaidArrays", args)

@inline describe_raid_arrays(args) = describe_raid_arrays(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_rds_db_instances
    describe_rds_db_instances([::AWSConfig], arguments::Dict)
    describe_rds_db_instances([::AWSConfig]; StackId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeRdsDbInstances", arguments::Dict)
    opsworks([::AWSConfig], "DescribeRdsDbInstances", StackId=, <keyword arguments>)

# DescribeRdsDbInstances Operation

Describes Amazon RDS instances.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

This call accepts only one resource-identifying parameter.

# Arguments

## `StackId = ::String` -- *Required*
The ID of the stack with which the instances are registered. The operation returns descriptions of all registered Amazon RDS instances.


## `RdsDbInstanceArns = [::String, ...]`
An array containing the ARNs of the instances to be described.




# Returns

`DescribeRdsDbInstancesResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeRdsDbInstances)
"""
@inline describe_rds_db_instances(aws::AWSConfig=default_aws_config(); args...) = describe_rds_db_instances(aws, args)

@inline describe_rds_db_instances(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeRdsDbInstances", args)

@inline describe_rds_db_instances(args) = describe_rds_db_instances(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_service_errors
    describe_service_errors([::AWSConfig], arguments::Dict)
    describe_service_errors([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeServiceErrors", arguments::Dict)
    opsworks([::AWSConfig], "DescribeServiceErrors", <keyword arguments>)

# DescribeServiceErrors Operation

Describes AWS OpsWorks Stacks service errors.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

This call accepts only one resource-identifying parameter.

# Arguments

## `StackId = ::String`
The stack ID. If you use this parameter, `DescribeServiceErrors` returns descriptions of the errors associated with the specified stack.


## `InstanceId = ::String`
The instance ID. If you use this parameter, `DescribeServiceErrors` returns descriptions of the errors associated with the specified instance.


## `ServiceErrorIds = [::String, ...]`
An array of service error IDs. If you use this parameter, `DescribeServiceErrors` returns descriptions of the specified errors. Otherwise, it returns a description of every error.




# Returns

`DescribeServiceErrorsResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeServiceErrors)
"""
@inline describe_service_errors(aws::AWSConfig=default_aws_config(); args...) = describe_service_errors(aws, args)

@inline describe_service_errors(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeServiceErrors", args)

@inline describe_service_errors(args) = describe_service_errors(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_stack_provisioning_parameters
    describe_stack_provisioning_parameters([::AWSConfig], arguments::Dict)
    describe_stack_provisioning_parameters([::AWSConfig]; StackId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeStackProvisioningParameters", arguments::Dict)
    opsworks([::AWSConfig], "DescribeStackProvisioningParameters", StackId=)

# DescribeStackProvisioningParameters Operation

Requests a description of a stack's provisioning parameters.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.




# Returns

`DescribeStackProvisioningParametersResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStackProvisioningParameters)
"""
@inline describe_stack_provisioning_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_stack_provisioning_parameters(aws, args)

@inline describe_stack_provisioning_parameters(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeStackProvisioningParameters", args)

@inline describe_stack_provisioning_parameters(args) = describe_stack_provisioning_parameters(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_stack_summary
    describe_stack_summary([::AWSConfig], arguments::Dict)
    describe_stack_summary([::AWSConfig]; StackId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeStackSummary", arguments::Dict)
    opsworks([::AWSConfig], "DescribeStackSummary", StackId=)

# DescribeStackSummary Operation

Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as `running_setup` or `online`.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.




# Returns

`DescribeStackSummaryResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStackSummary)
"""
@inline describe_stack_summary(aws::AWSConfig=default_aws_config(); args...) = describe_stack_summary(aws, args)

@inline describe_stack_summary(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeStackSummary", args)

@inline describe_stack_summary(args) = describe_stack_summary(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_stacks
    describe_stacks([::AWSConfig], arguments::Dict)
    describe_stacks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeStacks", arguments::Dict)
    opsworks([::AWSConfig], "DescribeStacks", <keyword arguments>)

# DescribeStacks Operation

Requests a description of one or more stacks.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackIds = [::String, ...]`
An array of stack IDs that specify the stacks to be described. If you omit this parameter, `DescribeStacks` returns a description of every stack.




# Returns

`DescribeStacksResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStacks)
"""
@inline describe_stacks(aws::AWSConfig=default_aws_config(); args...) = describe_stacks(aws, args)

@inline describe_stacks(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeStacks", args)

@inline describe_stacks(args) = describe_stacks(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_time_based_auto_scaling
    describe_time_based_auto_scaling([::AWSConfig], arguments::Dict)
    describe_time_based_auto_scaling([::AWSConfig]; InstanceIds=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeTimeBasedAutoScaling", arguments::Dict)
    opsworks([::AWSConfig], "DescribeTimeBasedAutoScaling", InstanceIds=)

# DescribeTimeBasedAutoScaling Operation

Describes time-based auto scaling configurations for specified instances.

**Note**
> You must specify at least one of the parameters.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceIds = [::String, ...]` -- *Required*
An array of instance IDs.




# Returns

`DescribeTimeBasedAutoScalingResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeTimeBasedAutoScaling)
"""
@inline describe_time_based_auto_scaling(aws::AWSConfig=default_aws_config(); args...) = describe_time_based_auto_scaling(aws, args)

@inline describe_time_based_auto_scaling(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeTimeBasedAutoScaling", args)

@inline describe_time_based_auto_scaling(args) = describe_time_based_auto_scaling(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_user_profiles
    describe_user_profiles([::AWSConfig], arguments::Dict)
    describe_user_profiles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeUserProfiles", arguments::Dict)
    opsworks([::AWSConfig], "DescribeUserProfiles", <keyword arguments>)

# DescribeUserProfiles Operation

Describe specified users.

**Required Permissions**: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `IamUserArns = [::String, ...]`
An array of IAM or federated user ARNs that identify the users to be described.




# Returns

`DescribeUserProfilesResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeUserProfiles)
"""
@inline describe_user_profiles(aws::AWSConfig=default_aws_config(); args...) = describe_user_profiles(aws, args)

@inline describe_user_profiles(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeUserProfiles", args)

@inline describe_user_profiles(args) = describe_user_profiles(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.describe_volumes
    describe_volumes([::AWSConfig], arguments::Dict)
    describe_volumes([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DescribeVolumes", arguments::Dict)
    opsworks([::AWSConfig], "DescribeVolumes", <keyword arguments>)

# DescribeVolumes Operation

Describes an instance's Amazon EBS volumes.

**Note**
> This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String`
The instance ID. If you use this parameter, `DescribeVolumes` returns descriptions of the volumes associated with the specified instance.


## `StackId = ::String`
A stack ID. The action describes the stack's registered Amazon EBS volumes.


## `RaidArrayId = ::String`
The RAID array ID. If you use this parameter, `DescribeVolumes` returns descriptions of the volumes associated with the specified RAID array.


## `VolumeIds = [::String, ...]`
Am array of volume IDs. If you use this parameter, `DescribeVolumes` returns descriptions of the specified volumes. Otherwise, it returns a description of every volume.




# Returns

`DescribeVolumesResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeVolumes)
"""
@inline describe_volumes(aws::AWSConfig=default_aws_config(); args...) = describe_volumes(aws, args)

@inline describe_volumes(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DescribeVolumes", args)

@inline describe_volumes(args) = describe_volumes(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.detach_elastic_load_balancer
    detach_elastic_load_balancer([::AWSConfig], arguments::Dict)
    detach_elastic_load_balancer([::AWSConfig]; ElasticLoadBalancerName=, LayerId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DetachElasticLoadBalancer", arguments::Dict)
    opsworks([::AWSConfig], "DetachElasticLoadBalancer", ElasticLoadBalancerName=, LayerId=)

# DetachElasticLoadBalancer Operation

Detaches a specified Elastic Load Balancing instance from its layer.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `ElasticLoadBalancerName = ::String` -- *Required*
The Elastic Load Balancing instance's name.


## `LayerId = ::String` -- *Required*
The ID of the layer that the Elastic Load Balancing instance is attached to.




# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DetachElasticLoadBalancer)
"""
@inline detach_elastic_load_balancer(aws::AWSConfig=default_aws_config(); args...) = detach_elastic_load_balancer(aws, args)

@inline detach_elastic_load_balancer(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DetachElasticLoadBalancer", args)

@inline detach_elastic_load_balancer(args) = detach_elastic_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.disassociate_elastic_ip
    disassociate_elastic_ip([::AWSConfig], arguments::Dict)
    disassociate_elastic_ip([::AWSConfig]; ElasticIp=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "DisassociateElasticIp", arguments::Dict)
    opsworks([::AWSConfig], "DisassociateElasticIp", ElasticIp=)

# DisassociateElasticIp Operation

Disassociates an Elastic IP address from its instance. The address remains registered with the stack. For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `ElasticIp = ::String` -- *Required*
The Elastic IP address.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DisassociateElasticIp)
"""
@inline disassociate_elastic_ip(aws::AWSConfig=default_aws_config(); args...) = disassociate_elastic_ip(aws, args)

@inline disassociate_elastic_ip(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "DisassociateElasticIp", args)

@inline disassociate_elastic_ip(args) = disassociate_elastic_ip(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.get_hostname_suggestion
    get_hostname_suggestion([::AWSConfig], arguments::Dict)
    get_hostname_suggestion([::AWSConfig]; LayerId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "GetHostnameSuggestion", arguments::Dict)
    opsworks([::AWSConfig], "GetHostnameSuggestion", LayerId=)

# GetHostnameSuggestion Operation

Gets a generated host name for the specified layer, based on the current host name theme.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `LayerId = ::String` -- *Required*
The layer ID.




# Returns

`GetHostnameSuggestionResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/GetHostnameSuggestion)
"""
@inline get_hostname_suggestion(aws::AWSConfig=default_aws_config(); args...) = get_hostname_suggestion(aws, args)

@inline get_hostname_suggestion(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "GetHostnameSuggestion", args)

@inline get_hostname_suggestion(args) = get_hostname_suggestion(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.grant_access
    grant_access([::AWSConfig], arguments::Dict)
    grant_access([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "GrantAccess", arguments::Dict)
    opsworks([::AWSConfig], "GrantAccess", InstanceId=, <keyword arguments>)

# GrantAccess Operation

 
**Note**
> This action can be used only with Windows stacks.

Grants RDP access to a Windows instance for a specified time period.

# Arguments

## `InstanceId = ::String` -- *Required*
The instance's AWS OpsWorks Stacks ID.


## `ValidForInMinutes = ::Int`
The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, the user will no longer be able to use the credentials to log in. If the user is logged in at the time, he or she automatically will be logged out.




# Returns

`GrantAccessResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/GrantAccess)
"""
@inline grant_access(aws::AWSConfig=default_aws_config(); args...) = grant_access(aws, args)

@inline grant_access(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "GrantAccess", args)

@inline grant_access(args) = grant_access(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.list_tags
    list_tags([::AWSConfig], arguments::Dict)
    list_tags([::AWSConfig]; ResourceArn=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "ListTags", arguments::Dict)
    opsworks([::AWSConfig], "ListTags", ResourceArn=, <keyword arguments>)

# ListTags Operation

Returns a list of tags that are applied to the specified stack or layer.

# Arguments

## `ResourceArn = ::String` -- *Required*
The stack or layer's Amazon Resource Number (ARN).


## `MaxResults = ::Int`
Do not use. A validation exception occurs if you add a `MaxResults` parameter to a `ListTagsRequest` call.


## `NextToken = ::String`
Do not use. A validation exception occurs if you add a `NextToken` parameter to a `ListTagsRequest` call.




# Returns

`ListTagsResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ListTags)
"""
@inline list_tags(aws::AWSConfig=default_aws_config(); args...) = list_tags(aws, args)

@inline list_tags(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "ListTags", args)

@inline list_tags(args) = list_tags(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.reboot_instance
    reboot_instance([::AWSConfig], arguments::Dict)
    reboot_instance([::AWSConfig]; InstanceId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "RebootInstance", arguments::Dict)
    opsworks([::AWSConfig], "RebootInstance", InstanceId=)

# RebootInstance Operation

Reboots a specified instance. For more information, see [Starting, Stopping, and Rebooting Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RebootInstance)
"""
@inline reboot_instance(aws::AWSConfig=default_aws_config(); args...) = reboot_instance(aws, args)

@inline reboot_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "RebootInstance", args)

@inline reboot_instance(args) = reboot_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.register_ecs_cluster
    register_ecs_cluster([::AWSConfig], arguments::Dict)
    register_ecs_cluster([::AWSConfig]; EcsClusterArn=, StackId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "RegisterEcsCluster", arguments::Dict)
    opsworks([::AWSConfig], "RegisterEcsCluster", EcsClusterArn=, StackId=)

# RegisterEcsCluster Operation

Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `EcsClusterArn = ::String` -- *Required*
The cluster's ARN.


## `StackId = ::String` -- *Required*
The stack ID.




# Returns

`RegisterEcsClusterResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterEcsCluster)
"""
@inline register_ecs_cluster(aws::AWSConfig=default_aws_config(); args...) = register_ecs_cluster(aws, args)

@inline register_ecs_cluster(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "RegisterEcsCluster", args)

@inline register_ecs_cluster(args) = register_ecs_cluster(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.register_elastic_ip
    register_elastic_ip([::AWSConfig], arguments::Dict)
    register_elastic_ip([::AWSConfig]; ElasticIp=, StackId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "RegisterElasticIp", arguments::Dict)
    opsworks([::AWSConfig], "RegisterElasticIp", ElasticIp=, StackId=)

# RegisterElasticIp Operation

Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling [DeregisterElasticIp](@ref). For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `ElasticIp = ::String` -- *Required*
The Elastic IP address.


## `StackId = ::String` -- *Required*
The stack ID.




# Returns

`RegisterElasticIpResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterElasticIp)
"""
@inline register_elastic_ip(aws::AWSConfig=default_aws_config(); args...) = register_elastic_ip(aws, args)

@inline register_elastic_ip(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "RegisterElasticIp", args)

@inline register_elastic_ip(args) = register_elastic_ip(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.register_instance
    register_instance([::AWSConfig], arguments::Dict)
    register_instance([::AWSConfig]; StackId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "RegisterInstance", arguments::Dict)
    opsworks([::AWSConfig], "RegisterInstance", StackId=, <keyword arguments>)

# RegisterInstance Operation

Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack.

**Note**
> We do not recommend using this action to register instances. The complete registration operation includes two tasks: installing the AWS OpsWorks Stacks agent on the instance, and registering the instance with the stack. `RegisterInstance` handles only the second step. You should instead use the AWS CLI `register` command, which performs the entire registration operation. For more information, see [Registering an Instance with an AWS OpsWorks Stacks Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html).

Registered instances have the same requirements as instances that are created by using the [CreateInstance](@ref) API. For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance type. For more information about requirements for instances that you want to register, see [Preparing the Instance](http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The ID of the stack that the instance is to be registered with.


## `Hostname = ::String`
The instance's hostname.


## `PublicIp = ::String`
The instance's public IP address.


## `PrivateIp = ::String`
The instance's private IP address.


## `RsaPublicKey = ::String`
The instances public RSA key. This key is used to encrypt communication between the instance and the service.


## `RsaPublicKeyFingerprint = ::String`
The instances public RSA key fingerprint.


## `InstanceIdentity = [ ... ]`
An InstanceIdentity object that contains the instance's identity.
```
 InstanceIdentity = [
        "Document" =>  ::String,
        "Signature" =>  ::String
    ]
```



# Returns

`RegisterInstanceResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterInstance)
"""
@inline register_instance(aws::AWSConfig=default_aws_config(); args...) = register_instance(aws, args)

@inline register_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "RegisterInstance", args)

@inline register_instance(args) = register_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.register_rds_db_instance
    register_rds_db_instance([::AWSConfig], arguments::Dict)
    register_rds_db_instance([::AWSConfig]; StackId=, RdsDbInstanceArn=, DbUser=, DbPassword=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "RegisterRdsDbInstance", arguments::Dict)
    opsworks([::AWSConfig], "RegisterRdsDbInstance", StackId=, RdsDbInstanceArn=, DbUser=, DbPassword=)

# RegisterRdsDbInstance Operation

Registers an Amazon RDS instance with a stack.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.


## `RdsDbInstanceArn = ::String` -- *Required*
The Amazon RDS instance's ARN.


## `DbUser = ::String` -- *Required*
The database's master user name.


## `DbPassword = ::String` -- *Required*
The database password.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterRdsDbInstance)
"""
@inline register_rds_db_instance(aws::AWSConfig=default_aws_config(); args...) = register_rds_db_instance(aws, args)

@inline register_rds_db_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "RegisterRdsDbInstance", args)

@inline register_rds_db_instance(args) = register_rds_db_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.register_volume
    register_volume([::AWSConfig], arguments::Dict)
    register_volume([::AWSConfig]; StackId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "RegisterVolume", arguments::Dict)
    opsworks([::AWSConfig], "RegisterVolume", StackId=, <keyword arguments>)

# RegisterVolume Operation

Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling [DeregisterVolume](@ref). For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `Ec2VolumeId = ::String`
The Amazon EBS volume ID.


## `StackId = ::String` -- *Required*
The stack ID.




# Returns

`RegisterVolumeResult`

# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterVolume)
"""
@inline register_volume(aws::AWSConfig=default_aws_config(); args...) = register_volume(aws, args)

@inline register_volume(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "RegisterVolume", args)

@inline register_volume(args) = register_volume(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.set_load_based_auto_scaling
    set_load_based_auto_scaling([::AWSConfig], arguments::Dict)
    set_load_based_auto_scaling([::AWSConfig]; LayerId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "SetLoadBasedAutoScaling", arguments::Dict)
    opsworks([::AWSConfig], "SetLoadBasedAutoScaling", LayerId=, <keyword arguments>)

# SetLoadBasedAutoScaling Operation

Specify the load-based auto scaling configuration for a specified layer. For more information, see [Managing Load with Time-based and Load-based Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

**Note**
> To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `LayerId = ::String` -- *Required*
The layer ID.


## `Enable = ::Bool`
Enables load-based auto scaling for the layer.


## `UpScaling = [ ... ]`
An `AutoScalingThresholds` object with the upscaling threshold configuration. If the load exceeds these thresholds for a specified amount of time, AWS OpsWorks Stacks starts a specified number of instances.
```
 UpScaling = [
        "InstanceCount" =>  ::Int,
        "ThresholdsWaitTime" =>  ::Int,
        "IgnoreMetricsTime" =>  ::Int,
        "CpuThreshold" =>  double,
        "MemoryThreshold" =>  double,
        "LoadThreshold" =>  double,
        "Alarms" =>  [::String, ...]
    ]
```

## `DownScaling = [ ... ]`
An `AutoScalingThresholds` object with the downscaling threshold configuration. If the load falls below these thresholds for a specified amount of time, AWS OpsWorks Stacks stops a specified number of instances.
```
 DownScaling = [
        "InstanceCount" =>  ::Int,
        "ThresholdsWaitTime" =>  ::Int,
        "IgnoreMetricsTime" =>  ::Int,
        "CpuThreshold" =>  double,
        "MemoryThreshold" =>  double,
        "LoadThreshold" =>  double,
        "Alarms" =>  [::String, ...]
    ]
```



# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SetLoadBasedAutoScaling)
"""
@inline set_load_based_auto_scaling(aws::AWSConfig=default_aws_config(); args...) = set_load_based_auto_scaling(aws, args)

@inline set_load_based_auto_scaling(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "SetLoadBasedAutoScaling", args)

@inline set_load_based_auto_scaling(args) = set_load_based_auto_scaling(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.set_permission
    set_permission([::AWSConfig], arguments::Dict)
    set_permission([::AWSConfig]; StackId=, IamUserArn=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "SetPermission", arguments::Dict)
    opsworks([::AWSConfig], "SetPermission", StackId=, IamUserArn=, <keyword arguments>)

# SetPermission Operation

Specifies a user's permissions. For more information, see [Security and Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.


## `IamUserArn = ::String` -- *Required*
The user's IAM ARN. This can also be a federated user's ARN.


## `AllowSsh = ::Bool`
The user is allowed to use SSH to communicate with the instance.


## `AllowSudo = ::Bool`
The user is allowed to use **sudo** to elevate privileges.


## `Level = ::String`
The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.

*   `deny`

*   `show`

*   `deploy`

*   `manage`

*   `iam_only`

For more information about the permissions associated with these levels, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SetPermission)
"""
@inline set_permission(aws::AWSConfig=default_aws_config(); args...) = set_permission(aws, args)

@inline set_permission(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "SetPermission", args)

@inline set_permission(args) = set_permission(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.set_time_based_auto_scaling
    set_time_based_auto_scaling([::AWSConfig], arguments::Dict)
    set_time_based_auto_scaling([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "SetTimeBasedAutoScaling", arguments::Dict)
    opsworks([::AWSConfig], "SetTimeBasedAutoScaling", InstanceId=, <keyword arguments>)

# SetTimeBasedAutoScaling Operation

Specify the time-based auto scaling configuration for a specified instance. For more information, see [Managing Load with Time-based and Load-based Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID.


## `AutoScalingSchedule = [ ... ]`
An `AutoScalingSchedule` with the instance schedule.
```
 AutoScalingSchedule = [
        "Monday" =>  ::Dict{String,String},
        "Tuesday" =>  ::Dict{String,String},
        "Wednesday" =>  ::Dict{String,String},
        "Thursday" =>  ::Dict{String,String},
        "Friday" =>  ::Dict{String,String},
        "Saturday" =>  ::Dict{String,String},
        "Sunday" =>  ::Dict{String,String}
    ]
```



# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SetTimeBasedAutoScaling)
"""
@inline set_time_based_auto_scaling(aws::AWSConfig=default_aws_config(); args...) = set_time_based_auto_scaling(aws, args)

@inline set_time_based_auto_scaling(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "SetTimeBasedAutoScaling", args)

@inline set_time_based_auto_scaling(args) = set_time_based_auto_scaling(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.start_instance
    start_instance([::AWSConfig], arguments::Dict)
    start_instance([::AWSConfig]; InstanceId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "StartInstance", arguments::Dict)
    opsworks([::AWSConfig], "StartInstance", InstanceId=)

# StartInstance Operation

Starts a specified instance. For more information, see [Starting, Stopping, and Rebooting Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StartInstance)
"""
@inline start_instance(aws::AWSConfig=default_aws_config(); args...) = start_instance(aws, args)

@inline start_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "StartInstance", args)

@inline start_instance(args) = start_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.start_stack
    start_stack([::AWSConfig], arguments::Dict)
    start_stack([::AWSConfig]; StackId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "StartStack", arguments::Dict)
    opsworks([::AWSConfig], "StartStack", StackId=)

# StartStack Operation

Starts a stack's instances.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StartStack)
"""
@inline start_stack(aws::AWSConfig=default_aws_config(); args...) = start_stack(aws, args)

@inline start_stack(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "StartStack", args)

@inline start_stack(args) = start_stack(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.stop_instance
    stop_instance([::AWSConfig], arguments::Dict)
    stop_instance([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "StopInstance", arguments::Dict)
    opsworks([::AWSConfig], "StopInstance", InstanceId=, <keyword arguments>)

# StopInstance Operation

Stops a specified instance. When you stop a standard instance, the data disappears and must be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without losing data. For more information, see [Starting, Stopping, and Rebooting Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID.


## `Force = ::Bool`
Specifies whether to force an instance to stop.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StopInstance)
"""
@inline stop_instance(aws::AWSConfig=default_aws_config(); args...) = stop_instance(aws, args)

@inline stop_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "StopInstance", args)

@inline stop_instance(args) = stop_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.stop_stack
    stop_stack([::AWSConfig], arguments::Dict)
    stop_stack([::AWSConfig]; StackId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "StopStack", arguments::Dict)
    opsworks([::AWSConfig], "StopStack", StackId=)

# StopStack Operation

Stops a specified stack.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StopStack)
"""
@inline stop_stack(aws::AWSConfig=default_aws_config(); args...) = stop_stack(aws, args)

@inline stop_stack(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "StopStack", args)

@inline stop_stack(args) = stop_stack(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; ResourceArn=, Tags=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "TagResource", arguments::Dict)
    opsworks([::AWSConfig], "TagResource", ResourceArn=, Tags=)

# TagResource Operation

Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks. For more information about how tagging works, see [Tags](http://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html) in the AWS OpsWorks User Guide.

# Arguments

## `ResourceArn = ::String` -- *Required*
The stack or layer's Amazon Resource Number (ARN).


## `Tags = ::Dict{String,String}` -- *Required*
A map that contains tag keys and tag values that are attached to a stack or layer.

*   The key cannot be empty.

*   The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: `+ - = . _ : /`

*   The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: `+ - = . _ : /`

*   Leading and trailing white spaces are trimmed from both the key and value.

*   A maximum of 40 tags is allowed for any resource.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "TagResource", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.unassign_instance
    unassign_instance([::AWSConfig], arguments::Dict)
    unassign_instance([::AWSConfig]; InstanceId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UnassignInstance", arguments::Dict)
    opsworks([::AWSConfig], "UnassignInstance", InstanceId=)

# UnassignInstance Operation

Unassigns a registered instance from all layers that are using the instance. The instance remains in the stack as an unassigned instance, and can be assigned to another layer as needed. You cannot use this action with instances that were created with AWS OpsWorks Stacks.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UnassignInstance)
"""
@inline unassign_instance(aws::AWSConfig=default_aws_config(); args...) = unassign_instance(aws, args)

@inline unassign_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UnassignInstance", args)

@inline unassign_instance(args) = unassign_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.unassign_volume
    unassign_volume([::AWSConfig], arguments::Dict)
    unassign_volume([::AWSConfig]; VolumeId=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UnassignVolume", arguments::Dict)
    opsworks([::AWSConfig], "UnassignVolume", VolumeId=)

# UnassignVolume Operation

Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `VolumeId = ::String` -- *Required*
The volume ID.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UnassignVolume)
"""
@inline unassign_volume(aws::AWSConfig=default_aws_config(); args...) = unassign_volume(aws, args)

@inline unassign_volume(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UnassignVolume", args)

@inline unassign_volume(args) = unassign_volume(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; ResourceArn=, TagKeys=)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UntagResource", arguments::Dict)
    opsworks([::AWSConfig], "UntagResource", ResourceArn=, TagKeys=)

# UntagResource Operation

Removes tags from a specified stack or layer.

# Arguments

## `ResourceArn = ::String` -- *Required*
The stack or layer's Amazon Resource Number (ARN).


## `TagKeys = [::String, ...]` -- *Required*
A list of the keys of tags to be removed from a stack or layer.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UntagResource", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.update_app
    update_app([::AWSConfig], arguments::Dict)
    update_app([::AWSConfig]; AppId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UpdateApp", arguments::Dict)
    opsworks([::AWSConfig], "UpdateApp", AppId=, <keyword arguments>)

# UpdateApp Operation

Updates a specified app.

**Required Permissions**: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `AppId = ::String` -- *Required*
The app ID.


## `Name = ::String`
The app name.


## `Description = ::String`
A description of the app.


## `DataSources = [[ ... ], ...]`
The app's data sources.
```
 DataSources = [[
        "Type" =>  ::String,
        "Arn" =>  ::String,
        "DatabaseName" =>  ::String
    ], ...]
```

## `Type = "aws-flow-ruby", "java", "rails", "php", "nodejs", "static" or "other"`
The app type.


## `AppSource = [ ... ]`
A `Source` object that specifies the app repository.
```
 AppSource = [
        "Type" =>  "git", "svn", "archive" or "s3",
        "Url" =>  ::String,
        "Username" =>  ::String,
        "Password" =>  ::String,
        "SshKey" =>  ::String,
        "Revision" =>  ::String
    ]
```

## `Domains = [::String, ...]`
The app's virtual host settings, with multiple domains separated by commas. For example: `'www.example.com, example.com'`


## `EnableSsl = ::Bool`
Whether SSL is enabled for the app.


## `SslConfiguration = [ ... ]`
An `SslConfiguration` object with the SSL configuration.
```
 SslConfiguration = [
        "Certificate" => <required> ::String,
        "PrivateKey" => <required> ::String,
        "Chain" =>  ::String
    ]
```

## `Attributes = ::Dict{String,String}`
One or more user-defined key/value pairs to be added to the stack attributes.


## `Environment = [[ ... ], ...]`
An array of `EnvironmentVariable` objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances.For more information, see [Environment Variables](http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment).

There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 10KB)."

**Note**
> This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.
```
 Environment = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String,
        "Secure" =>  ::Bool
    ], ...]
```



# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateApp)
"""
@inline update_app(aws::AWSConfig=default_aws_config(); args...) = update_app(aws, args)

@inline update_app(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UpdateApp", args)

@inline update_app(args) = update_app(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.update_elastic_ip
    update_elastic_ip([::AWSConfig], arguments::Dict)
    update_elastic_ip([::AWSConfig]; ElasticIp=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UpdateElasticIp", arguments::Dict)
    opsworks([::AWSConfig], "UpdateElasticIp", ElasticIp=, <keyword arguments>)

# UpdateElasticIp Operation

Updates a registered Elastic IP address's name. For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `ElasticIp = ::String` -- *Required*
The IP address for which you want to update the name.


## `Name = ::String`
The new name.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateElasticIp)
"""
@inline update_elastic_ip(aws::AWSConfig=default_aws_config(); args...) = update_elastic_ip(aws, args)

@inline update_elastic_ip(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UpdateElasticIp", args)

@inline update_elastic_ip(args) = update_elastic_ip(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.update_instance
    update_instance([::AWSConfig], arguments::Dict)
    update_instance([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UpdateInstance", arguments::Dict)
    opsworks([::AWSConfig], "UpdateInstance", InstanceId=, <keyword arguments>)

# UpdateInstance Operation

Updates a specified instance.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID.


## `LayerIds = [::String, ...]`
The instance's layer IDs.


## `InstanceType = ::String`
The instance type, such as `t2.micro`. For a list of supported instance types, open the stack in the console, choose **Instances**, and choose **+ Instance**. The **Size** list contains the currently supported types. For more information, see [Instance Families and Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html). The parameter values that you use to specify the various types are in the **API Name** column of the **Available Instance Types** table.


## `AutoScalingType = "load" or "timer"`
For load-based or time-based instances, the type. Windows stacks can use only time-based instances.


## `Hostname = ::String`
The instance host name.


## `Os = ::String`
The instance's operating system, which must be set to one of the following. You cannot update an instance that is using a custom AMI.

*   A supported Linux operating system: An Amazon Linux version, such as `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.

*   A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.

*   `CentOS Linux 7`

*   `Red Hat Enterprise Linux 7`

*   A supported Windows operating system, such as `Microsoft Windows Server 2012 R2 Base`, `Microsoft Windows Server 2012 R2 with SQL Server Express`, `Microsoft Windows Server 2012 R2 with SQL Server Standard`, or `Microsoft Windows Server 2012 R2 with SQL Server Web`.

For more information about supported operating systems, see [AWS OpsWorks Stacks Operating Systems](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html).

The default option is the current Amazon Linux version. If you set this parameter to `Custom`, you must use the AmiId parameter to specify the custom AMI that you want to use. For more information about supported operating systems, see [Operating Systems](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html). For more information about how to use custom AMIs with OpsWorks, see [Using Custom AMIs](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).

**Note**
> You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.


## `AmiId = ::String`
The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the instance is already using. You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using custom AMIs.


## `SshKeyName = ::String`
The instance's Amazon EC2 key name.


## `Architecture = "x86_64" or "i386"`
The instance architecture. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see [Instance Families and Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).


## `InstallUpdatesOnBoot = ::Bool`
Whether to install operating system and package updates when the instance boots. The default value is `true`. To control when updates are installed, set this value to `false`. You must then update your instances manually by using [CreateDeployment](@ref) to run the `update_dependencies` stack command or by manually running `yum` (Amazon Linux) or `apt-get` (Ubuntu) on the instances.

**Note**
> We strongly recommend using the default value of `true`, to ensure that your instances have the latest security updates.


## `EbsOptimized = ::Bool`
This property cannot be updated.


## `AgentVersion = ::String`
The default AWS OpsWorks Stacks agent version. You have the following options:

*   `INHERIT` - Use the stack's default agent version setting.

*   *version_number* - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, you must edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.

The default setting is `INHERIT`. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call [DescribeAgentVersions](@ref).

AgentVersion cannot be set to Chef 12.2.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateInstance)
"""
@inline update_instance(aws::AWSConfig=default_aws_config(); args...) = update_instance(aws, args)

@inline update_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UpdateInstance", args)

@inline update_instance(args) = update_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.update_layer
    update_layer([::AWSConfig], arguments::Dict)
    update_layer([::AWSConfig]; LayerId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UpdateLayer", arguments::Dict)
    opsworks([::AWSConfig], "UpdateLayer", LayerId=, <keyword arguments>)

# UpdateLayer Operation

Updates a specified layer.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `LayerId = ::String` -- *Required*
The layer ID.


## `Name = ::String`
The layer name, which is used by the console.


## `Shortname = ::String`
For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters and must be in the following format: /\\A[a-z0-9\\-\\_\\.]+\\Z/.

The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the [Layer Reference](http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html)


## `Attributes = ::Dict{String,String}`
One or more user-defined key/value pairs to be added to the stack attributes.


## `CloudWatchLogsConfiguration = [ ... ]`
Specifies CloudWatch Logs configuration options for the layer. For more information, see [CloudWatchLogsLogStream](@ref).
```
 CloudWatchLogsConfiguration = [
        "Enabled" =>  ::Bool,
        "LogStreams" =>  [[
            "LogGroupName" =>  ::String,
            "DatetimeFormat" =>  ::String,
            "TimeZone" =>  "LOCAL" or "UTC",
            "File" =>  ::String,
            "FileFingerprintLines" =>  ::String,
            "MultiLineStartPattern" =>  ::String,
            "InitialPosition" =>  "start_of_file" or "end_of_file",
            "Encoding" =>  "ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8" or "utf_8_sig",
            "BufferDuration" =>  ::Int,
            "BatchCount" =>  ::Int,
            "BatchSize" =>  ::Int
        ], ...]
    ]
```

## `CustomInstanceProfileArn = ::String`
The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more information about IAM ARNs, see [Using Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


## `CustomJson = ::String`
A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see [Using Custom JSON](http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html).


## `CustomSecurityGroupIds = [::String, ...]`
An array containing the layer's custom security group IDs.


## `Packages = [::String, ...]`
An array of `Package` objects that describe the layer's packages.


## `VolumeConfigurations = [[ ... ], ...]`
A `VolumeConfigurations` object that describes the layer's Amazon EBS volumes.
```
 VolumeConfigurations = [[
        "MountPoint" => <required> ::String,
        "RaidLevel" =>  ::Int,
        "NumberOfDisks" => <required> ::Int,
        "Size" => <required> ::Int,
        "VolumeType" =>  ::String,
        "Iops" =>  ::Int,
        "Encrypted" =>  ::Bool
    ], ...]
```

## `EnableAutoHealing = ::Bool`
Whether to disable auto healing for the layer.


## `AutoAssignElasticIps = ::Bool`
Whether to automatically assign an [Elastic IP address](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) to the layer's instances. For more information, see [How to Edit a Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).


## `AutoAssignPublicIps = ::Bool`
For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see [How to Edit a Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).


## `CustomRecipes = [ ... ]`
A `LayerCustomRecipes` object that specifies the layer's custom recipes.
```
 CustomRecipes = [
        "Setup" =>  [::String, ...],
        "Configure" =>  [::String, ...],
        "Deploy" =>  [::String, ...],
        "Undeploy" =>  [::String, ...],
        "Shutdown" =>  [::String, ...]
    ]
```

## `InstallUpdatesOnBoot = ::Bool`
Whether to install operating system and package updates when the instance boots. The default value is `true`. To control when updates are installed, set this value to `false`. You must then update your instances manually by using [CreateDeployment](@ref) to run the `update_dependencies` stack command or manually running `yum` (Amazon Linux) or `apt-get` (Ubuntu) on the instances.

**Note**
> We strongly recommend using the default value of `true`, to ensure that your instances have the latest security updates.


## `UseEbsOptimizedInstances = ::Bool`
Whether to use Amazon EBS-optimized instances.


## `LifecycleEventConfiguration = ["Shutdown" =>  [ ... ]]`

```
 LifecycleEventConfiguration = ["Shutdown" =>  [
            "ExecutionTimeout" =>  ::Int,
            "DelayUntilElbConnectionsDrained" =>  ::Bool
        ]]
```



# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateLayer)
"""
@inline update_layer(aws::AWSConfig=default_aws_config(); args...) = update_layer(aws, args)

@inline update_layer(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UpdateLayer", args)

@inline update_layer(args) = update_layer(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.update_my_user_profile
    update_my_user_profile([::AWSConfig], arguments::Dict)
    update_my_user_profile([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UpdateMyUserProfile", arguments::Dict)
    opsworks([::AWSConfig], "UpdateMyUserProfile", <keyword arguments>)

# UpdateMyUserProfile Operation

Updates a user's SSH public key.

**Required Permissions**: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `SshPublicKey = ::String`
The user's SSH public key.




# Exceptions

`ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateMyUserProfile)
"""
@inline update_my_user_profile(aws::AWSConfig=default_aws_config(); args...) = update_my_user_profile(aws, args)

@inline update_my_user_profile(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UpdateMyUserProfile", args)

@inline update_my_user_profile(args) = update_my_user_profile(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.update_rds_db_instance
    update_rds_db_instance([::AWSConfig], arguments::Dict)
    update_rds_db_instance([::AWSConfig]; RdsDbInstanceArn=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UpdateRdsDbInstance", arguments::Dict)
    opsworks([::AWSConfig], "UpdateRdsDbInstance", RdsDbInstanceArn=, <keyword arguments>)

# UpdateRdsDbInstance Operation

Updates an Amazon RDS instance.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `RdsDbInstanceArn = ::String` -- *Required*
The Amazon RDS instance's ARN.


## `DbUser = ::String`
The master user name.


## `DbPassword = ::String`
The database password.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateRdsDbInstance)
"""
@inline update_rds_db_instance(aws::AWSConfig=default_aws_config(); args...) = update_rds_db_instance(aws, args)

@inline update_rds_db_instance(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UpdateRdsDbInstance", args)

@inline update_rds_db_instance(args) = update_rds_db_instance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.update_stack
    update_stack([::AWSConfig], arguments::Dict)
    update_stack([::AWSConfig]; StackId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UpdateStack", arguments::Dict)
    opsworks([::AWSConfig], "UpdateStack", StackId=, <keyword arguments>)

# UpdateStack Operation

Updates a specified stack.

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `StackId = ::String` -- *Required*
The stack ID.


## `Name = ::String`
The stack's new name.


## `Attributes = ::Dict{String,String}`
One or more user-defined key-value pairs to be added to the stack attributes.


## `ServiceRoleArn = ::String`
Do not use this parameter. You cannot update a stack's service role.


## `DefaultInstanceProfileArn = ::String`
The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see [Using Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


## `DefaultOs = ::String`
The stack's operating system, which must be set to one of the following:

*   A supported Linux operating system: An Amazon Linux version, such as `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.

*   A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.

*   `CentOS Linux 7`

*   `Red Hat Enterprise Linux 7`

*   A supported Windows operating system, such as `Microsoft Windows Server 2012 R2 Base`, `Microsoft Windows Server 2012 R2 with SQL Server Express`, `Microsoft Windows Server 2012 R2 with SQL Server Standard`, or `Microsoft Windows Server 2012 R2 with SQL Server Web`.

*   A custom AMI: `Custom`. You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see [Using Custom AMIs](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).

The default option is the stack's current operating system. For more information about supported operating systems, see [AWS OpsWorks Stacks Operating Systems](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html).


## `HostnameTheme = ::String`
The stack's new host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, `HostnameTheme` is set to `Layer_Dependent`, which creates host names by appending integers to the layer's short name. The other themes are:

*   `Baked_Goods`

*   `Clouds`

*   `Europe_Cities`

*   `Fruits`

*   `Greek_Deities`

*   `Legendary_creatures_from_Japan`

*   `Planets_and_Moons`

*   `Roman_Deities`

*   `Scottish_Islands`

*   `US_Cities`

*   `Wild_Cats`

To obtain a generated host name, call `GetHostNameSuggestion`, which returns a host name based on the current theme.


## `DefaultAvailabilityZone = ::String`
The stack's default Availability Zone, which must be in the stack's region. For more information, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html). If you also specify a value for `DefaultSubnetId`, the subnet must be in the same zone. For more information, see [CreateStack](@ref).


## `DefaultSubnetId = ::String`
The stack's default VPC subnet ID. This parameter is required if you specify a value for the `VpcId` parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for `DefaultAvailabilityZone`, the subnet must be in that zone. For information on default values and when this parameter is required, see the `VpcId` parameter description.


## `CustomJson = ::String`
A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration JSON values or to pass data to recipes. The string should be in the following format:

`"{\\"key1\\": \\"value1\\", \\"key2\\": \\"value2\\",...}"`

For more information about custom JSON, see [Use Custom JSON to Modify the Stack Configuration Attributes](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html).


## `ConfigurationManager = [ ... ]`
The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.
```
 ConfigurationManager = [
        "Name" =>  ::String,
        "Version" =>  ::String
    ]
```

## `ChefConfiguration = [ ... ]`
A `ChefConfiguration` object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see [Create a New Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html).
```
 ChefConfiguration = [
        "ManageBerkshelf" =>  ::Bool,
        "BerkshelfVersion" =>  ::String
    ]
```

## `UseCustomCookbooks = ::Bool`
Whether the stack uses custom cookbooks.


## `CustomCookbooksSource = [ ... ]`

```
 CustomCookbooksSource = [
        "Type" =>  "git", "svn", "archive" or "s3",
        "Url" =>  ::String,
        "Username" =>  ::String,
        "Password" =>  ::String,
        "SshKey" =>  ::String,
        "Revision" =>  ::String
    ]
```

## `DefaultSshKeyName = ::String`
A default Amazon EC2 key-pair name. The default value is `none`. If you specify a key-pair name, AWS OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see [Using SSH to Communicate with an Instance](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html) and [Managing SSH Access](http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html). You can override this setting by specifying a different key pair, or no key pair, when you [create an instance](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).


## `DefaultRootDeviceType = "ebs" or "instance-store"`
The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see [Storage for the Root Device](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device).


## `UseOpsworksSecurityGroups = ::Bool`
Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.

AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. `UseOpsworksSecurityGroups` allows you to provide your own custom security groups instead of using the built-in groups. `UseOpsworksSecurityGroups` has the following settings:

*   True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.

*   False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on. Custom security groups are required only for those layers that need custom settings.

For more information, see [Create a New Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html).


## `AgentVersion = ::String`
The default AWS OpsWorks Stacks agent version. You have the following options:

*   Auto-update - Set this parameter to `LATEST`. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.

*   Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.

The default setting is `LATEST`. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call [DescribeAgentVersions](@ref). AgentVersion cannot be set to Chef 12.2.

**Note**
> You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateStack)
"""
@inline update_stack(aws::AWSConfig=default_aws_config(); args...) = update_stack(aws, args)

@inline update_stack(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UpdateStack", args)

@inline update_stack(args) = update_stack(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.update_user_profile
    update_user_profile([::AWSConfig], arguments::Dict)
    update_user_profile([::AWSConfig]; IamUserArn=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UpdateUserProfile", arguments::Dict)
    opsworks([::AWSConfig], "UpdateUserProfile", IamUserArn=, <keyword arguments>)

# UpdateUserProfile Operation

Updates a specified user profile.

**Required Permissions**: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `IamUserArn = ::String` -- *Required*
The user IAM ARN. This can also be a federated user's ARN.


## `SshUsername = ::String`
The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, `my.name` will be changed to `myname`. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name.


## `SshPublicKey = ::String`
The user's new SSH public key.


## `AllowSelfManagement = ::Bool`
Whether users can specify their own SSH public key through the My Settings page. For more information, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html).




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateUserProfile)
"""
@inline update_user_profile(aws::AWSConfig=default_aws_config(); args...) = update_user_profile(aws, args)

@inline update_user_profile(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UpdateUserProfile", args)

@inline update_user_profile(args) = update_user_profile(default_aws_config(), args)


"""
    using AWSSDK.OpsWorks.update_volume
    update_volume([::AWSConfig], arguments::Dict)
    update_volume([::AWSConfig]; VolumeId=, <keyword arguments>)

    using AWSCore.Services.opsworks
    opsworks([::AWSConfig], "UpdateVolume", arguments::Dict)
    opsworks([::AWSConfig], "UpdateVolume", VolumeId=, <keyword arguments>)

# UpdateVolume Operation

Updates an Amazon EBS volume's name or mount point. For more information, see [Resource Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

**Required Permissions**: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see [Managing User Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

# Arguments

## `VolumeId = ::String` -- *Required*
The volume ID.


## `Name = ::String`
The new name.


## `MountPoint = ::String`
The new mount point.




# Exceptions

`ValidationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateVolume)
"""
@inline update_volume(aws::AWSConfig=default_aws_config(); args...) = update_volume(aws, args)

@inline update_volume(aws::AWSConfig, args) = AWSCore.Services.opsworks(aws, "UpdateVolume", args)

@inline update_volume(args) = update_volume(default_aws_config(), args)




end # module OpsWorks


#==============================================================================#
# End of file
#==============================================================================#
