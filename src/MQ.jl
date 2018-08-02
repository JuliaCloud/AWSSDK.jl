#==============================================================================#
# MQ.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/mq-2017-11-27.normal.json
#==============================================================================#

__precompile__()

module MQ

using AWSCore


"""
    using AWSSDK.MQ.create_broker
    create_broker([::AWSConfig], arguments::Dict)
    create_broker([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "POST", "/v1/brokers", arguments::Dict)
    mq([::AWSConfig], "POST", "/v1/brokers", <keyword arguments>)

# CreateBroker Operation

Creates a broker. Note: This API is asynchronous.

# Arguments

## `autoMinorVersionUpgrade = ::Bool`
Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.


## `brokerName = ::String`
Required. The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.


## `configuration = [ ... ]`
A list of information about the configuration.
```
 configuration = [
        "id" =>  ::String,
        "revision" =>  ::Int
    ]
```

## `creatorRequestId = ::String`
The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.


## `deploymentMode = "SINGLE_INSTANCE" or "ACTIVE_STANDBY_MULTI_AZ"`
Required. The deployment mode of the broker.


## `engineType = "ACTIVEMQ"`
Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.


## `engineVersion = ::String`
Required. The version of the broker engine. Note: Currently, Amazon MQ supports only 5.15.0.


## `hostInstanceType = ::String`
Required. The broker's instance type.


## `logs = [ ... ]`
Enables Amazon CloudWatch logging for brokers.
```
 logs = [
        "audit" =>  ::Bool,
        "general" =>  ::Bool
    ]
```

## `maintenanceWindowStartTime = [ ... ]`
The parameters that determine the WeeklyStartTime.
```
 maintenanceWindowStartTime = [
        "dayOfWeek" =>  "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY" or "SUNDAY",
        "timeOfDay" =>  ::String,
        "timeZone" =>  ::String
    ]
```

## `publiclyAccessible = ::Bool`
Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.


## `securityGroups = [::String, ...]`
The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.


## `subnetIds = [::String, ...]`
The list of groups (2 maximum) that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment requires two subnets.


## `users = [[ ... ], ...]`
Required. The list of ActiveMQ users (persons or applications) who can access queues and topics. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
```
 users = [[
        "consoleAccess" =>  ::Bool,
        "groups" =>  [::String, ...],
        "password" =>  ::String,
        "username" =>  ::String
    ], ...]
```



# Returns

`CreateBrokerResponse`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `InternalServerErrorException`, `ConflictException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateBroker)
"""
@inline create_broker(aws::AWSConfig=default_aws_config(); args...) = create_broker(aws, args)

@inline create_broker(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "POST", "/v1/brokers", args)

@inline create_broker(args) = create_broker(default_aws_config(), args)


"""
    using AWSSDK.MQ.create_configuration
    create_configuration([::AWSConfig], arguments::Dict)
    create_configuration([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "POST", "/v1/configurations", arguments::Dict)
    mq([::AWSConfig], "POST", "/v1/configurations", <keyword arguments>)

# CreateConfiguration Operation

Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).

# Arguments

## `engineType = "ACTIVEMQ"`
Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.


## `engineVersion = ::String`
Required. The version of the broker engine. Note: Currently, Amazon MQ supports only 5.15.0.


## `name = ::String`
Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.




# Returns

`CreateConfigurationResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ConflictException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateConfiguration)
"""
@inline create_configuration(aws::AWSConfig=default_aws_config(); args...) = create_configuration(aws, args)

@inline create_configuration(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "POST", "/v1/configurations", args)

@inline create_configuration(args) = create_configuration(default_aws_config(), args)


"""
    using AWSSDK.MQ.create_user
    create_user([::AWSConfig], arguments::Dict)
    create_user([::AWSConfig]; broker-id=, username=, <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "POST", "/v1/brokers/{broker-id}/users/{username}", arguments::Dict)
    mq([::AWSConfig], "POST", "/v1/brokers/{broker-id}/users/{username}", broker-id=, username=, <keyword arguments>)

# CreateUser Operation

Creates an ActiveMQ user.

# Arguments

## `broker-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the broker.


## `consoleAccess = ::Bool`
Enables access to the the ActiveMQ Web Console for the ActiveMQ user.


## `groups = [::String, ...]`
The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.


## `password = ::String`
Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.


## `username = ::String` -- *Required*
The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.




# Returns

`CreateUserResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException`, `ConflictException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateUser)
"""
@inline create_user(aws::AWSConfig=default_aws_config(); args...) = create_user(aws, args)

@inline create_user(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "POST", "/v1/brokers/{broker-id}/users/{username}", args)

@inline create_user(args) = create_user(default_aws_config(), args)


"""
    using AWSSDK.MQ.delete_broker
    delete_broker([::AWSConfig], arguments::Dict)
    delete_broker([::AWSConfig]; broker-id=)

    using AWSCore.Services.mq
    mq([::AWSConfig], "DELETE", "/v1/brokers/{broker-id}", arguments::Dict)
    mq([::AWSConfig], "DELETE", "/v1/brokers/{broker-id}", broker-id=)

# DeleteBroker Operation

Deletes a broker. Note: This API is asynchronous.

# Arguments

## `broker-id = ::String` -- *Required*
The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.




# Returns

`DeleteBrokerResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteBroker)
"""
@inline delete_broker(aws::AWSConfig=default_aws_config(); args...) = delete_broker(aws, args)

@inline delete_broker(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "DELETE", "/v1/brokers/{broker-id}", args)

@inline delete_broker(args) = delete_broker(default_aws_config(), args)


"""
    using AWSSDK.MQ.delete_user
    delete_user([::AWSConfig], arguments::Dict)
    delete_user([::AWSConfig]; broker-id=, username=)

    using AWSCore.Services.mq
    mq([::AWSConfig], "DELETE", "/v1/brokers/{broker-id}/users/{username}", arguments::Dict)
    mq([::AWSConfig], "DELETE", "/v1/brokers/{broker-id}/users/{username}", broker-id=, username=)

# DeleteUser Operation

Deletes an ActiveMQ user.

# Arguments

## `broker-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the broker.


## `username = ::String` -- *Required*
The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.




# Returns

`DeleteUserResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteUser)
"""
@inline delete_user(aws::AWSConfig=default_aws_config(); args...) = delete_user(aws, args)

@inline delete_user(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "DELETE", "/v1/brokers/{broker-id}/users/{username}", args)

@inline delete_user(args) = delete_user(default_aws_config(), args)


"""
    using AWSSDK.MQ.describe_broker
    describe_broker([::AWSConfig], arguments::Dict)
    describe_broker([::AWSConfig]; broker-id=)

    using AWSCore.Services.mq
    mq([::AWSConfig], "GET", "/v1/brokers/{broker-id}", arguments::Dict)
    mq([::AWSConfig], "GET", "/v1/brokers/{broker-id}", broker-id=)

# DescribeBroker Operation

Returns information about the specified broker.

# Arguments

## `broker-id = ::String` -- *Required*
The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.




# Returns

`DescribeBrokerResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBroker)
"""
@inline describe_broker(aws::AWSConfig=default_aws_config(); args...) = describe_broker(aws, args)

@inline describe_broker(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "GET", "/v1/brokers/{broker-id}", args)

@inline describe_broker(args) = describe_broker(default_aws_config(), args)


"""
    using AWSSDK.MQ.describe_configuration
    describe_configuration([::AWSConfig], arguments::Dict)
    describe_configuration([::AWSConfig]; configuration-id=)

    using AWSCore.Services.mq
    mq([::AWSConfig], "GET", "/v1/configurations/{configuration-id}", arguments::Dict)
    mq([::AWSConfig], "GET", "/v1/configurations/{configuration-id}", configuration-id=)

# DescribeConfiguration Operation

Returns information about the specified configuration.

# Arguments

## `configuration-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the configuration.




# Returns

`DescribeConfigurationResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfiguration)
"""
@inline describe_configuration(aws::AWSConfig=default_aws_config(); args...) = describe_configuration(aws, args)

@inline describe_configuration(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "GET", "/v1/configurations/{configuration-id}", args)

@inline describe_configuration(args) = describe_configuration(default_aws_config(), args)


"""
    using AWSSDK.MQ.describe_configuration_revision
    describe_configuration_revision([::AWSConfig], arguments::Dict)
    describe_configuration_revision([::AWSConfig]; configuration-id=, configuration-revision=)

    using AWSCore.Services.mq
    mq([::AWSConfig], "GET", "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", arguments::Dict)
    mq([::AWSConfig], "GET", "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", configuration-id=, configuration-revision=)

# DescribeConfigurationRevision Operation

Returns the specified configuration revision for the specified configuration.

# Arguments

## `configuration-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the configuration.


## `configuration-revision = ::String` -- *Required*
The revision of the configuration.




# Returns

`DescribeConfigurationRevisionResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfigurationRevision)
"""
@inline describe_configuration_revision(aws::AWSConfig=default_aws_config(); args...) = describe_configuration_revision(aws, args)

@inline describe_configuration_revision(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "GET", "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", args)

@inline describe_configuration_revision(args) = describe_configuration_revision(default_aws_config(), args)


"""
    using AWSSDK.MQ.describe_user
    describe_user([::AWSConfig], arguments::Dict)
    describe_user([::AWSConfig]; broker-id=, username=)

    using AWSCore.Services.mq
    mq([::AWSConfig], "GET", "/v1/brokers/{broker-id}/users/{username}", arguments::Dict)
    mq([::AWSConfig], "GET", "/v1/brokers/{broker-id}/users/{username}", broker-id=, username=)

# DescribeUser Operation

Returns information about an ActiveMQ user.

# Arguments

## `broker-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the broker.


## `username = ::String` -- *Required*
The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.




# Returns

`DescribeUserResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeUser)
"""
@inline describe_user(aws::AWSConfig=default_aws_config(); args...) = describe_user(aws, args)

@inline describe_user(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "GET", "/v1/brokers/{broker-id}/users/{username}", args)

@inline describe_user(args) = describe_user(default_aws_config(), args)


"""
    using AWSSDK.MQ.list_brokers
    list_brokers([::AWSConfig], arguments::Dict)
    list_brokers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "GET", "/v1/brokers", arguments::Dict)
    mq([::AWSConfig], "GET", "/v1/brokers", <keyword arguments>)

# ListBrokers Operation

Returns a list of all brokers.

# Arguments

## `maxResults = ::Int`
The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.


## `nextToken = ::String`
The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.




# Returns

`ListBrokersResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListBrokers)
"""
@inline list_brokers(aws::AWSConfig=default_aws_config(); args...) = list_brokers(aws, args)

@inline list_brokers(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "GET", "/v1/brokers", args)

@inline list_brokers(args) = list_brokers(default_aws_config(), args)


"""
    using AWSSDK.MQ.list_configuration_revisions
    list_configuration_revisions([::AWSConfig], arguments::Dict)
    list_configuration_revisions([::AWSConfig]; configuration-id=, <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "GET", "/v1/configurations/{configuration-id}/revisions", arguments::Dict)
    mq([::AWSConfig], "GET", "/v1/configurations/{configuration-id}/revisions", configuration-id=, <keyword arguments>)

# ListConfigurationRevisions Operation

Returns a list of all revisions for the specified configuration.

# Arguments

## `configuration-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the configuration.


## `maxResults = ::Int`
The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.


## `nextToken = ::String`
The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.




# Returns

`ListConfigurationRevisionsResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurationRevisions)
"""
@inline list_configuration_revisions(aws::AWSConfig=default_aws_config(); args...) = list_configuration_revisions(aws, args)

@inline list_configuration_revisions(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "GET", "/v1/configurations/{configuration-id}/revisions", args)

@inline list_configuration_revisions(args) = list_configuration_revisions(default_aws_config(), args)


"""
    using AWSSDK.MQ.list_configurations
    list_configurations([::AWSConfig], arguments::Dict)
    list_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "GET", "/v1/configurations", arguments::Dict)
    mq([::AWSConfig], "GET", "/v1/configurations", <keyword arguments>)

# ListConfigurations Operation

Returns a list of all configurations.

# Arguments

## `maxResults = ::Int`
The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.


## `nextToken = ::String`
The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.




# Returns

`ListConfigurationsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurations)
"""
@inline list_configurations(aws::AWSConfig=default_aws_config(); args...) = list_configurations(aws, args)

@inline list_configurations(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "GET", "/v1/configurations", args)

@inline list_configurations(args) = list_configurations(default_aws_config(), args)


"""
    using AWSSDK.MQ.list_users
    list_users([::AWSConfig], arguments::Dict)
    list_users([::AWSConfig]; broker-id=, <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "GET", "/v1/brokers/{broker-id}/users", arguments::Dict)
    mq([::AWSConfig], "GET", "/v1/brokers/{broker-id}/users", broker-id=, <keyword arguments>)

# ListUsers Operation

Returns a list of all ActiveMQ users.

# Arguments

## `broker-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the broker.


## `maxResults = ::Int`
The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.


## `nextToken = ::String`
The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.




# Returns

`ListUsersResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListUsers)
"""
@inline list_users(aws::AWSConfig=default_aws_config(); args...) = list_users(aws, args)

@inline list_users(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "GET", "/v1/brokers/{broker-id}/users", args)

@inline list_users(args) = list_users(default_aws_config(), args)


"""
    using AWSSDK.MQ.reboot_broker
    reboot_broker([::AWSConfig], arguments::Dict)
    reboot_broker([::AWSConfig]; broker-id=)

    using AWSCore.Services.mq
    mq([::AWSConfig], "POST", "/v1/brokers/{broker-id}/reboot", arguments::Dict)
    mq([::AWSConfig], "POST", "/v1/brokers/{broker-id}/reboot", broker-id=)

# RebootBroker Operation

Reboots a broker. Note: This API is asynchronous.

# Arguments

## `broker-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the broker.




# Returns

`RebootBrokerResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/RebootBroker)
"""
@inline reboot_broker(aws::AWSConfig=default_aws_config(); args...) = reboot_broker(aws, args)

@inline reboot_broker(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "POST", "/v1/brokers/{broker-id}/reboot", args)

@inline reboot_broker(args) = reboot_broker(default_aws_config(), args)


"""
    using AWSSDK.MQ.update_broker
    update_broker([::AWSConfig], arguments::Dict)
    update_broker([::AWSConfig]; broker-id=, <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "PUT", "/v1/brokers/{broker-id}", arguments::Dict)
    mq([::AWSConfig], "PUT", "/v1/brokers/{broker-id}", broker-id=, <keyword arguments>)

# UpdateBroker Operation

Adds a pending configuration change to a broker.

# Arguments

## `broker-id = ::String` -- *Required*
The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.


## `configuration = [ ... ]`
A list of information about the configuration.
```
 configuration = [
        "id" =>  ::String,
        "revision" =>  ::Int
    ]
```

## `logs = [ ... ]`
Enables Amazon CloudWatch logging for brokers.
```
 logs = [
        "audit" =>  ::Bool,
        "general" =>  ::Bool
    ]
```



# Returns

`UpdateBrokerResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateBroker)
"""
@inline update_broker(aws::AWSConfig=default_aws_config(); args...) = update_broker(aws, args)

@inline update_broker(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "PUT", "/v1/brokers/{broker-id}", args)

@inline update_broker(args) = update_broker(default_aws_config(), args)


"""
    using AWSSDK.MQ.update_configuration
    update_configuration([::AWSConfig], arguments::Dict)
    update_configuration([::AWSConfig]; configuration-id=, <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "PUT", "/v1/configurations/{configuration-id}", arguments::Dict)
    mq([::AWSConfig], "PUT", "/v1/configurations/{configuration-id}", configuration-id=, <keyword arguments>)

# UpdateConfiguration Operation

Updates the specified configuration.

# Arguments

## `configuration-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the configuration.


## `data = ::String`
Required. The base64-encoded XML configuration.


## `description = ::String`
The description of the configuration.




# Returns

`UpdateConfigurationResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException`, `ConflictException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateConfiguration)
"""
@inline update_configuration(aws::AWSConfig=default_aws_config(); args...) = update_configuration(aws, args)

@inline update_configuration(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "PUT", "/v1/configurations/{configuration-id}", args)

@inline update_configuration(args) = update_configuration(default_aws_config(), args)


"""
    using AWSSDK.MQ.update_user
    update_user([::AWSConfig], arguments::Dict)
    update_user([::AWSConfig]; broker-id=, username=, <keyword arguments>)

    using AWSCore.Services.mq
    mq([::AWSConfig], "PUT", "/v1/brokers/{broker-id}/users/{username}", arguments::Dict)
    mq([::AWSConfig], "PUT", "/v1/brokers/{broker-id}/users/{username}", broker-id=, username=, <keyword arguments>)

# UpdateUser Operation

Updates the information for an ActiveMQ user.

# Arguments

## `broker-id = ::String` -- *Required*
The unique ID that Amazon MQ generates for the broker.


## `consoleAccess = ::Bool`
Enables access to the the ActiveMQ Web Console for the ActiveMQ user.


## `groups = [::String, ...]`
The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.


## `password = ::String`
The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.


## `username = ::String` -- *Required*
Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.




# Returns

`UpdateUserResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException`, `ConflictException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateUser)
"""
@inline update_user(aws::AWSConfig=default_aws_config(); args...) = update_user(aws, args)

@inline update_user(aws::AWSConfig, args) = AWSCore.Services.mq(aws, "PUT", "/v1/brokers/{broker-id}/users/{username}", args)

@inline update_user(args) = update_user(default_aws_config(), args)




end # module MQ


#==============================================================================#
# End of file
#==============================================================================#
