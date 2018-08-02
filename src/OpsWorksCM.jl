#==============================================================================#
# OpsWorksCM.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/opsworkscm-2016-11-01.normal.json
#==============================================================================#

__precompile__()

module OpsWorksCM

using AWSCore


"""
    using AWSSDK.OpsWorksCM.associate_node
    associate_node([::AWSConfig], arguments::Dict)
    associate_node([::AWSConfig]; ServerName=, NodeName=, EngineAttributes=)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "AssociateNode", arguments::Dict)
    opsworkscm([::AWSConfig], "AssociateNode", ServerName=, NodeName=, EngineAttributes=)

# AssociateNode Operation

Associates a new node with the server. For more information about how to disassociate a node, see [DisassociateNode](@ref).

On a Chef server: This command is an alternative to `knife bootstrap`.

Example (Chef): `aws opsworks-cm associate-node --server-name *MyServer* --node-name *MyManagedNode* --engine-attributes "Name=*CHEF_ORGANIZATION*,Value=default" "Name=*CHEF_NODE_PUBLIC_KEY*,Value=*public-key-pem*"`

On a Puppet server, this command is an alternative to the `puppet cert sign` command that signs a Puppet node CSR.

Example (Chef): `aws opsworks-cm associate-node --server-name *MyServer* --node-name *MyManagedNode* --engine-attributes "Name=*PUPPET_NODE_CSR*,Value=*csr-pem*"`

A node can can only be associated with servers that are in a `HEALTHY` state. Otherwise, an `InvalidStateException` is thrown. A `ResourceNotFoundException` is thrown when the server does not exist. A `ValidationException` is raised when parameters of the request are not valid. The AssociateNode API call can be integrated into Auto Scaling configurations, AWS Cloudformation templates, or the user data of a server's instance.

# Arguments

## `ServerName = ::String` -- *Required*
The name of the server with which to associate the node.


## `NodeName = ::String` -- *Required*
The name of the node.


## `EngineAttributes = [[ ... ], ...]` -- *Required*
Engine attributes used for associating the node.

**Attributes accepted in a AssociateNode request for Chef**

*   `CHEF_ORGANIZATION`: The Chef organization with which the node is associated. By default only one organization named `default` can exist.

*   `CHEF_NODE_PUBLIC_KEY`: A PEM-formatted public key. This key is required for the `chef-client` agent to access the Chef API.

**Attributes accepted in a AssociateNode request for Puppet**

*   `PUPPET_NODE_CSR`: A PEM-formatted certificate-signing request (CSR) that is created by the node.
```
 EngineAttributes = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`AssociateNodeResponse`

# Exceptions

`InvalidStateException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/AssociateNode)
"""
@inline associate_node(aws::AWSConfig=default_aws_config(); args...) = associate_node(aws, args)

@inline associate_node(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "AssociateNode", args)

@inline associate_node(args) = associate_node(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.create_backup
    create_backup([::AWSConfig], arguments::Dict)
    create_backup([::AWSConfig]; ServerName=, <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "CreateBackup", arguments::Dict)
    opsworkscm([::AWSConfig], "CreateBackup", ServerName=, <keyword arguments>)

# CreateBackup Operation

Creates an application-level backup of a server. While the server is in the `BACKING_UP` state, the server cannot be changed, and no additional backup can be created.

Backups can be created for servers in `RUNNING`, `HEALTHY`, and `UNHEALTHY` states. By default, you can create a maximum of 50 manual backups.

This operation is asynchronous.

A `LimitExceededException` is thrown when the maximum number of manual backups is reached. An `InvalidStateException` is thrown when the server is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A `ResourceNotFoundException` is thrown when the server is not found. A `ValidationException` is thrown when parameters of the request are not valid.

# Arguments

## `ServerName = ::String` -- *Required*
The name of the server that you want to back up.


## `Description = ::String`
A user-defined description of the backup.




# Returns

`CreateBackupResponse`

# Exceptions

`InvalidStateException`, `LimitExceededException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateBackup)
"""
@inline create_backup(aws::AWSConfig=default_aws_config(); args...) = create_backup(aws, args)

@inline create_backup(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "CreateBackup", args)

@inline create_backup(args) = create_backup(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.create_server
    create_server([::AWSConfig], arguments::Dict)
    create_server([::AWSConfig]; ServerName=, InstanceProfileArn=, InstanceType=, ServiceRoleArn=, <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "CreateServer", arguments::Dict)
    opsworkscm([::AWSConfig], "CreateServer", ServerName=, InstanceProfileArn=, InstanceType=, ServiceRoleArn=, <keyword arguments>)

# CreateServer Operation

Creates and immedately starts a new server. The server is ready to use when it is in the `HEALTHY` state. By default, you can create a maximum of 10 servers.

This operation is asynchronous.

A `LimitExceededException` is thrown when you have created the maximum number of servers (10). A `ResourceAlreadyExistsException` is thrown when a server with the same name already exists in the account. A `ResourceNotFoundException` is thrown when you specify a backup ID that is not valid or is for a backup that does not exist. A `ValidationException` is thrown when parameters of the request are not valid.

If you do not specify a security group by adding the `SecurityGroupIds` parameter, AWS OpsWorks creates a new security group.

*Chef Automate:* The default security group opens the Chef server to the world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.

*Puppet Enterprise:* The default security group opens TCP ports 22, 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.

By default, your server is accessible from any IP address. We recommend that you update your security group rules to allow access from known IP addresses and address ranges only. To edit security group rules, open Security Groups in the navigation pane of the EC2 management console.

# Arguments

## `AssociatePublicIpAddress = ::Bool`
Associate a public IP address with a server that you are launching. Valid values are `true` or `false`. The default value is `true`.


## `DisableAutomatedBackup = ::Bool`
Enable or disable scheduled backups. Valid values are `true` or `false`. The default value is `true`.


## `Engine = ::String`
The configuration management engine to use. Valid values include `Chef` and `Puppet`.


## `EngineModel = ::String`
The engine model of the server. Valid values in this release include `Monolithic` for Puppet and `Single` for Chef.


## `EngineVersion = ::String`
The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion is currently `12`. For a Puppet server, the valid value is `2017`.


## `EngineAttributes = [[ ... ], ...]`
Optional engine attributes on a specified server.

**Attributes accepted in a Chef createServer request:**

*   `CHEF_PIVOTAL_KEY`: A base64-encoded RSA private key that is not stored by AWS OpsWorks for Chef Automate. This private key is required to access the Chef API. When no CHEF_PIVOTAL_KEY is set, one is generated and returned in the response.

*   `CHEF_DELIVERY_ADMIN_PASSWORD`: The password for the administrative user in the Chef Automate GUI. The password length is a minimum of eight characters, and a maximum of 32. The password can contain letters, numbers, and special characters (!/@#\$%^&+=_). The password must contain at least one lower case letter, one upper case letter, one number, and one special character. When no CHEF_DELIVERY_ADMIN_PASSWORD is set, one is generated and returned in the response.

**Attributes accepted in a Puppet createServer request:**

*   `PUPPET_ADMIN_PASSWORD`: To work with the Puppet Enterprise console, a password must use ASCII characters.
```
 EngineAttributes = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `BackupRetentionCount = ::Int`
The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks CM deletes the oldest backups if this number is exceeded. The default value is `1`.


## `ServerName = ::String` -- *Required*
The name of the server. The server name must be unique within your AWS account, within each region. Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters.


## `InstanceProfileArn = ::String` -- *Required*
The ARN of the instance profile that your Amazon EC2 instances use. Although the AWS OpsWorks console typically creates the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the instance profile you need.


## `InstanceType = ::String` -- *Required*
The Amazon EC2 instance type to use. For example, `m4.large`. Recommended instance types include `t2.medium` and greater, `m4.*`, or `c4.xlarge` and greater.


## `KeyPair = ::String`
The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH.


## `PreferredMaintenanceWindow = ::String`
The start time for a one-hour period each week during which AWS OpsWorks CM performs maintenance on the instance. Valid values must be specified in the following format: `DDD:HH:MM`. The specified time is in coordinated universal time (UTC). The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See `TimeWindowDefinition` for more information.

**Example:** `Mon:08:00`, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)


## `PreferredBackupWindow = ::String`
The start time for a one-hour period during which AWS OpsWorks CM backs up application-level data on your server if automated backups are enabled. Valid values must be specified in one of the following formats:

*   `HH:MM` for daily backups

*   `DDD:HH:MM` for weekly backups

The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.

**Example:** `08:00`, which represents a daily start time of 08:00 UTC.

**Example:** `Mon:08:00`, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)


## `SecurityGroupIds = [::String, ...]`
A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups must be within the VPC that is specified by `SubnetIds`.

If you do not specify this parameter, AWS OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to 0.0.0.0/0 (everyone).


## `ServiceRoleArn = ::String` -- *Required*
The service role that the AWS OpsWorks CM service backend uses to work with your account. Although the AWS OpsWorks management console typically creates the service role for you, if you are using the AWS CLI or API commands, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the service role and instance profile that you need.


## `SubnetIds = [::String, ...]`
The IDs of subnets in which to launch the server EC2 instance.

Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled.

EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled.

For more information about supported Amazon EC2 platforms, see [Supported Platforms](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html).


## `BackupId = ::String`
If you specify this field, AWS OpsWorks CM creates the server by using the backup represented by BackupId.




# Returns

`CreateServerResponse`

# Exceptions

`LimitExceededException`, `ResourceAlreadyExistsException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateServer)
"""
@inline create_server(aws::AWSConfig=default_aws_config(); args...) = create_server(aws, args)

@inline create_server(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "CreateServer", args)

@inline create_server(args) = create_server(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.delete_backup
    delete_backup([::AWSConfig], arguments::Dict)
    delete_backup([::AWSConfig]; BackupId=)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "DeleteBackup", arguments::Dict)
    opsworkscm([::AWSConfig], "DeleteBackup", BackupId=)

# DeleteBackup Operation

Deletes a backup. You can delete both manual and automated backups. This operation is asynchronous.

An `InvalidStateException` is thrown when a backup deletion is already in progress. A `ResourceNotFoundException` is thrown when the backup does not exist. A `ValidationException` is thrown when parameters of the request are not valid.

# Arguments

## `BackupId = ::String` -- *Required*
The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs. Backup IDs are in the format `ServerName-yyyyMMddHHmmssSSS`.




# Returns

`DeleteBackupResponse`

# Exceptions

`InvalidStateException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteBackup)
"""
@inline delete_backup(aws::AWSConfig=default_aws_config(); args...) = delete_backup(aws, args)

@inline delete_backup(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "DeleteBackup", args)

@inline delete_backup(args) = delete_backup(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.delete_server
    delete_server([::AWSConfig], arguments::Dict)
    delete_server([::AWSConfig]; ServerName=)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "DeleteServer", arguments::Dict)
    opsworkscm([::AWSConfig], "DeleteServer", ServerName=)

# DeleteServer Operation

Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance). When you run this command, the server state is updated to `DELETING`. After the server is deleted, it is no longer returned by `DescribeServer` requests. If the AWS CloudFormation stack cannot be deleted, the server cannot be deleted.

This operation is asynchronous.

An `InvalidStateException` is thrown when a server deletion is already in progress. A `ResourceNotFoundException` is thrown when the server does not exist. A `ValidationException` is raised when parameters of the request are not valid.

# Arguments

## `ServerName = ::String` -- *Required*
The ID of the server to delete.




# Returns

`DeleteServerResponse`

# Exceptions

`InvalidStateException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteServer)
"""
@inline delete_server(aws::AWSConfig=default_aws_config(); args...) = delete_server(aws, args)

@inline delete_server(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "DeleteServer", args)

@inline delete_server(args) = delete_server(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.describe_account_attributes
    describe_account_attributes([::AWSConfig], arguments::Dict)
    describe_account_attributes([::AWSConfig]; )

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "DescribeAccountAttributes", arguments::Dict)
    opsworkscm([::AWSConfig], "DescribeAccountAttributes", )

# DescribeAccountAttributes Operation

Describes your account attributes, and creates requests to increase limits before they are reached or exceeded.

This operation is synchronous.

# Arguments



# Returns

`DescribeAccountAttributesResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeAccountAttributes)
"""
@inline describe_account_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_account_attributes(aws, args)

@inline describe_account_attributes(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "DescribeAccountAttributes", args)

@inline describe_account_attributes(args) = describe_account_attributes(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.describe_backups
    describe_backups([::AWSConfig], arguments::Dict)
    describe_backups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "DescribeBackups", arguments::Dict)
    opsworkscm([::AWSConfig], "DescribeBackups", <keyword arguments>)

# DescribeBackups Operation

Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups.

This operation is synchronous.

A `ResourceNotFoundException` is thrown when the backup does not exist. A `ValidationException` is raised when parameters of the request are not valid.

# Arguments

## `BackupId = ::String`
Describes a single backup.


## `ServerName = ::String`
Returns backups for the server with the specified ServerName.


## `NextToken = ::String`
NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call `DescribeBackups` again, and assign the token from the previous results as the value of the `nextToken` parameter. If there are no more results, the response object's `nextToken` parameter value is `null`. Setting a `nextToken` value that was not returned in your previous results causes an `InvalidNextTokenException` to occur.


## `MaxResults = ::Int`
To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.




# Returns

`DescribeBackupsResponse`

# Exceptions

`ValidationException`, `ResourceNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeBackups)
"""
@inline describe_backups(aws::AWSConfig=default_aws_config(); args...) = describe_backups(aws, args)

@inline describe_backups(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "DescribeBackups", args)

@inline describe_backups(args) = describe_backups(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.describe_events
    describe_events([::AWSConfig], arguments::Dict)
    describe_events([::AWSConfig]; ServerName=, <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "DescribeEvents", arguments::Dict)
    opsworkscm([::AWSConfig], "DescribeEvents", ServerName=, <keyword arguments>)

# DescribeEvents Operation

Describes events for a specified server. Results are ordered by time, with newest events first.

This operation is synchronous.

A `ResourceNotFoundException` is thrown when the server does not exist. A `ValidationException` is raised when parameters of the request are not valid.

# Arguments

## `ServerName = ::String` -- *Required*
The name of the server for which you want to view events.


## `NextToken = ::String`
NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call `DescribeEvents` again, and assign the token from the previous results as the value of the `nextToken` parameter. If there are no more results, the response object's `nextToken` parameter value is `null`. Setting a `nextToken` value that was not returned in your previous results causes an `InvalidNextTokenException` to occur.


## `MaxResults = ::Int`
To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.




# Returns

`DescribeEventsResponse`

# Exceptions

`ValidationException`, `InvalidNextTokenException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeEvents)
"""
@inline describe_events(aws::AWSConfig=default_aws_config(); args...) = describe_events(aws, args)

@inline describe_events(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "DescribeEvents", args)

@inline describe_events(args) = describe_events(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.describe_node_association_status
    describe_node_association_status([::AWSConfig], arguments::Dict)
    describe_node_association_status([::AWSConfig]; NodeAssociationStatusToken=, ServerName=)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "DescribeNodeAssociationStatus", arguments::Dict)
    opsworkscm([::AWSConfig], "DescribeNodeAssociationStatus", NodeAssociationStatusToken=, ServerName=)

# DescribeNodeAssociationStatus Operation

Returns the current status of an existing association or disassociation request.

A `ResourceNotFoundException` is thrown when no recent association or disassociation request with the specified token is found, or when the server does not exist. A `ValidationException` is raised when parameters of the request are not valid.

# Arguments

## `NodeAssociationStatusToken = ::String` -- *Required*
The token returned in either the AssociateNodeResponse or the DisassociateNodeResponse.


## `ServerName = ::String` -- *Required*
The name of the server from which to disassociate the node.




# Returns

`DescribeNodeAssociationStatusResponse`

# Exceptions

`ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeNodeAssociationStatus)
"""
@inline describe_node_association_status(aws::AWSConfig=default_aws_config(); args...) = describe_node_association_status(aws, args)

@inline describe_node_association_status(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "DescribeNodeAssociationStatus", args)

@inline describe_node_association_status(args) = describe_node_association_status(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.describe_servers
    describe_servers([::AWSConfig], arguments::Dict)
    describe_servers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "DescribeServers", arguments::Dict)
    opsworkscm([::AWSConfig], "DescribeServers", <keyword arguments>)

# DescribeServers Operation

Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks CM does not query other services.

This operation is synchronous.

A `ResourceNotFoundException` is thrown when the server does not exist. A `ValidationException` is raised when parameters of the request are not valid.

# Arguments

## `ServerName = ::String`
Describes the server with the specified ServerName.


## `NextToken = ::String`
NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call `DescribeServers` again, and assign the token from the previous results as the value of the `nextToken` parameter. If there are no more results, the response object's `nextToken` parameter value is `null`. Setting a `nextToken` value that was not returned in your previous results causes an `InvalidNextTokenException` to occur.


## `MaxResults = ::Int`
To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.




# Returns

`DescribeServersResponse`

# Exceptions

`ValidationException`, `ResourceNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeServers)
"""
@inline describe_servers(aws::AWSConfig=default_aws_config(); args...) = describe_servers(aws, args)

@inline describe_servers(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "DescribeServers", args)

@inline describe_servers(args) = describe_servers(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.disassociate_node
    disassociate_node([::AWSConfig], arguments::Dict)
    disassociate_node([::AWSConfig]; ServerName=, NodeName=, <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "DisassociateNode", arguments::Dict)
    opsworkscm([::AWSConfig], "DisassociateNode", ServerName=, NodeName=, <keyword arguments>)

# DisassociateNode Operation

Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes. After a node is disassociated, the node key pair is no longer valid for accessing the configuration manager's API. For more information about how to associate a node, see [AssociateNode](@ref).

A node can can only be disassociated from a server that is in a `HEALTHY` state. Otherwise, an `InvalidStateException` is thrown. A `ResourceNotFoundException` is thrown when the server does not exist. A `ValidationException` is raised when parameters of the request are not valid.

# Arguments

## `ServerName = ::String` -- *Required*
The name of the server from which to disassociate the node.


## `NodeName = ::String` -- *Required*
The name of the client node.


## `EngineAttributes = [[ ... ], ...]`
Engine attributes that are used for disassociating the node. No attributes are required for Puppet.

**Attributes required in a DisassociateNode request for Chef**

*   `CHEF_ORGANIZATION`: The Chef organization with which the node was associated. By default only one organization named `default` can exist.
```
 EngineAttributes = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`DisassociateNodeResponse`

# Exceptions

`InvalidStateException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DisassociateNode)
"""
@inline disassociate_node(aws::AWSConfig=default_aws_config(); args...) = disassociate_node(aws, args)

@inline disassociate_node(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "DisassociateNode", args)

@inline disassociate_node(args) = disassociate_node(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.restore_server
    restore_server([::AWSConfig], arguments::Dict)
    restore_server([::AWSConfig]; BackupId=, ServerName=, <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "RestoreServer", arguments::Dict)
    opsworkscm([::AWSConfig], "RestoreServer", BackupId=, ServerName=, <keyword arguments>)

# RestoreServer Operation

Restores a backup to a server that is in a `CONNECTION_LOST`, `HEALTHY`, `RUNNING`, `UNHEALTHY`, or `TERMINATED` state. When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2 instance is configured. RestoreServer maintains the existing server endpoint, so configuration management of the server's client devices (nodes) should continue to work.

This operation is asynchronous.

An `InvalidStateException` is thrown when the server is not in a valid state. A `ResourceNotFoundException` is thrown when the server does not exist. A `ValidationException` is raised when parameters of the request are not valid.

# Arguments

## `BackupId = ::String` -- *Required*
The ID of the backup that you want to use to restore a server.


## `ServerName = ::String` -- *Required*
The name of the server that you want to restore.


## `InstanceType = ::String`
The type of the instance to create. Valid values must be specified in the following format: `^([cm][34]|t2).*` For example, `m4.large`. Valid values are `t2.medium`, `m4.large`, and `m4.2xlarge`. If you do not specify this parameter, RestoreServer uses the instance type from the specified backup.


## `KeyPair = ::String`
The name of the key pair to set on the new EC2 instance. This can be helpful if the administrator no longer has the SSH key.




# Returns

`RestoreServerResponse`

# Exceptions

`InvalidStateException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/RestoreServer)
"""
@inline restore_server(aws::AWSConfig=default_aws_config(); args...) = restore_server(aws, args)

@inline restore_server(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "RestoreServer", args)

@inline restore_server(args) = restore_server(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.start_maintenance
    start_maintenance([::AWSConfig], arguments::Dict)
    start_maintenance([::AWSConfig]; ServerName=, <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "StartMaintenance", arguments::Dict)
    opsworkscm([::AWSConfig], "StartMaintenance", ServerName=, <keyword arguments>)

# StartMaintenance Operation

Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying cause of maintenance failure has been resolved. The server is in an `UNDER_MAINTENANCE` state while maintenance is in progress.

Maintenance can only be started on servers in `HEALTHY` and `UNHEALTHY` states. Otherwise, an `InvalidStateException` is thrown. A `ResourceNotFoundException` is thrown when the server does not exist. A `ValidationException` is raised when parameters of the request are not valid.

# Arguments

## `ServerName = ::String` -- *Required*
The name of the server on which to run maintenance.


## `EngineAttributes = [[ ... ], ...]`
Engine attributes that are specific to the server on which you want to run maintenance.
```
 EngineAttributes = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`StartMaintenanceResponse`

# Exceptions

`InvalidStateException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/StartMaintenance)
"""
@inline start_maintenance(aws::AWSConfig=default_aws_config(); args...) = start_maintenance(aws, args)

@inline start_maintenance(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "StartMaintenance", args)

@inline start_maintenance(args) = start_maintenance(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.update_server
    update_server([::AWSConfig], arguments::Dict)
    update_server([::AWSConfig]; ServerName=, <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "UpdateServer", arguments::Dict)
    opsworkscm([::AWSConfig], "UpdateServer", ServerName=, <keyword arguments>)

# UpdateServer Operation

Updates settings for a server.

This operation is synchronous.

# Arguments

## `DisableAutomatedBackup = ::Bool`
Setting DisableAutomatedBackup to `true` disables automated or scheduled backups. Automated backups are enabled by default.


## `BackupRetentionCount = ::Int`
Sets the number of automated backups that you want to keep.


## `ServerName = ::String` -- *Required*
The name of the server to update.


## `PreferredMaintenanceWindow = ::String`



## `PreferredBackupWindow = ::String`





# Returns

`UpdateServerResponse`

# Exceptions

`InvalidStateException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServer)
"""
@inline update_server(aws::AWSConfig=default_aws_config(); args...) = update_server(aws, args)

@inline update_server(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "UpdateServer", args)

@inline update_server(args) = update_server(default_aws_config(), args)


"""
    using AWSSDK.OpsWorksCM.update_server_engine_attributes
    update_server_engine_attributes([::AWSConfig], arguments::Dict)
    update_server_engine_attributes([::AWSConfig]; ServerName=, AttributeName=, <keyword arguments>)

    using AWSCore.Services.opsworkscm
    opsworkscm([::AWSConfig], "UpdateServerEngineAttributes", arguments::Dict)
    opsworkscm([::AWSConfig], "UpdateServerEngineAttributes", ServerName=, AttributeName=, <keyword arguments>)

# UpdateServerEngineAttributes Operation

Updates engine-specific attributes on a specified server. The server enters the `MODIFYING` state when this operation is in progress. Only one update can occur at a time. You can use this command to reset a Chef server's private key (`CHEF_PIVOTAL_KEY`), a Chef server's admin password (`CHEF_DELIVERY_ADMIN_PASSWORD`), or a Puppet server's admin password (`PUPPET_ADMIN_PASSWORD`).

This operation is asynchronous.

This operation can only be called for servers in `HEALTHY` or `UNHEALTHY` states. Otherwise, an `InvalidStateException` is raised. A `ResourceNotFoundException` is thrown when the server does not exist. A `ValidationException` is raised when parameters of the request are not valid.

# Arguments

## `ServerName = ::String` -- *Required*
The name of the server to update.


## `AttributeName = ::String` -- *Required*
The name of the engine attribute to update.


## `AttributeValue = ::String`
The value to set for the attribute.




# Returns

`UpdateServerEngineAttributesResponse`

# Exceptions

`InvalidStateException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServerEngineAttributes)
"""
@inline update_server_engine_attributes(aws::AWSConfig=default_aws_config(); args...) = update_server_engine_attributes(aws, args)

@inline update_server_engine_attributes(aws::AWSConfig, args) = AWSCore.Services.opsworkscm(aws, "UpdateServerEngineAttributes", args)

@inline update_server_engine_attributes(args) = update_server_engine_attributes(default_aws_config(), args)




end # module OpsWorksCM


#==============================================================================#
# End of file
#==============================================================================#
