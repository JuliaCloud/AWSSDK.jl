#==============================================================================#
# GameLift.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/gamelift-2015-10-01.normal.json
#==============================================================================#

__precompile__()

module GameLift

using AWSCore


"""
    using AWSSDK.GameLift.accept_match
    accept_match([::AWSConfig], arguments::Dict)
    accept_match([::AWSConfig]; TicketId=, PlayerIds=, AcceptanceType=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "AcceptMatch", arguments::Dict)
    gamelift([::AWSConfig], "AcceptMatch", TicketId=, PlayerIds=, AcceptanceType=)

# AcceptMatch Operation

Registers a player's acceptance or rejection of a proposed FlexMatch match. A matchmaking configuration may require player acceptance; if so, then matches built with that configuration cannot be completed unless all players accept the proposed match within a specified time limit.

When FlexMatch builds a match, all the matchmaking tickets involved in the proposed match are placed into status `REQUIRES_ACCEPTANCE`. This is a trigger for your game to get acceptance from all players in the ticket. Acceptances are only valid for tickets when they are in this status; all other acceptances result in an error.

To register acceptance, specify the ticket ID, a response, and one or more players. Once all players have registered acceptance, the matchmaking tickets advance to status `PLACING`, where a new game session is created for the match.

If any player rejects the match, or if acceptances are not received before a specified timeout, the proposed match is dropped. The matchmaking tickets are then handled in one of two ways: For tickets where all players accepted the match, the ticket status is returned to `SEARCHING` to find a new match. For tickets where one or more players failed to accept the match, the ticket status is set to `FAILED`, and processing is terminated. A new matchmaking request for these players can be submitted as needed.

Matchmaking-related operations include:

*   [StartMatchmaking](@ref)

*   [DescribeMatchmaking](@ref)

*   [StopMatchmaking](@ref)

*   [AcceptMatch](@ref)

*   [StartMatchBackfill](@ref)

# Arguments

## `TicketId = ::String` -- *Required*
Unique identifier for a matchmaking ticket. The ticket must be in status `REQUIRES_ACCEPTANCE`; otherwise this request will fail.


## `PlayerIds = [::String, ...]` -- *Required*
Unique identifier for a player delivering the response. This parameter can include one or multiple player IDs.


## `AcceptanceType = "ACCEPT" or "REJECT"` -- *Required*
Player response to the proposed match.




# Returns

`AcceptMatchOutput`

# Exceptions

`InvalidRequestException`, `NotFoundException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AcceptMatch)
"""
@inline accept_match(aws::AWSConfig=default_aws_config(); args...) = accept_match(aws, args)

@inline accept_match(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "AcceptMatch", args)

@inline accept_match(args) = accept_match(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_alias
    create_alias([::AWSConfig], arguments::Dict)
    create_alias([::AWSConfig]; Name=, RoutingStrategy=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateAlias", arguments::Dict)
    gamelift([::AWSConfig], "CreateAlias", Name=, RoutingStrategy=, <keyword arguments>)

# CreateAlias Operation

Creates an alias for a fleet. In most situations, you can use an alias ID in place of a fleet ID. By using a fleet alias instead of a specific fleet ID, you can switch gameplay and players to a new fleet without changing your game client or other game components. For example, for games in production, using an alias allows you to seamlessly redirect your player base to a new game server update.

Amazon GameLift supports two types of routing strategies for aliases: simple and terminal. A simple alias points to an active fleet. A terminal alias is used to display messaging or link to a URL instead of routing players to an active fleet. For example, you might use a terminal alias when a game version is no longer supported and you want to direct players to an upgrade site.

To create a fleet alias, specify an alias name, routing strategy, and optional description. Each simple alias can point to only one fleet, but a fleet can have multiple aliases. If successful, a new alias record is returned, including an alias ID, which you can reference when creating a game session. You can reassign an alias to another fleet by calling `UpdateAlias`.

Alias-related operations include:

*   [CreateAlias](@ref)

*   [ListAliases](@ref)

*   [DescribeAlias](@ref)

*   [UpdateAlias](@ref)

*   [DeleteAlias](@ref)

*   [ResolveAlias](@ref)

# Arguments

## `Name = ::String` -- *Required*
Descriptive label that is associated with an alias. Alias names do not need to be unique.


## `Description = ::String`
Human-readable description of an alias.


## `RoutingStrategy = [ ... ]` -- *Required*
Object that specifies the fleet and routing type to use for the alias.
```
 RoutingStrategy = [
        "Type" =>  "SIMPLE" or "TERMINAL",
        "FleetId" =>  ::String,
        "Message" =>  ::String
    ]
```



# Returns

`CreateAliasOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `ConflictException`, `InternalServiceException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateAlias)
"""
@inline create_alias(aws::AWSConfig=default_aws_config(); args...) = create_alias(aws, args)

@inline create_alias(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreateAlias", args)

@inline create_alias(args) = create_alias(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_build
    create_build([::AWSConfig], arguments::Dict)
    create_build([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateBuild", arguments::Dict)
    gamelift([::AWSConfig], "CreateBuild", <keyword arguments>)

# CreateBuild Operation

Creates a new Amazon GameLift build record for your game server binary files and points to the location of your game server build files in an Amazon Simple Storage Service (Amazon S3) location.

Game server binaries must be combined into a `.zip` file for use with Amazon GameLift. See [Uploading Your Game](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html) for more information.

**Important**
> To create new builds quickly and easily, use the AWS CLI command **[upload-build](http://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html)** . This helper command uploads your build and creates a new build record in one step, and automatically handles the necessary permissions. See [Upload Build Files to Amazon GameLift](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html) for more help.

The `CreateBuild` operation should be used only when you need to manually upload your build files, as in the following scenarios:

*   Store a build file in an Amazon S3 bucket under your own AWS account. To use this option, you must first give Amazon GameLift access to that Amazon S3 bucket. See [Create a Build with Files in Amazon S3](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build) for detailed help. To create a new build record using files in your Amazon S3 bucket, call `CreateBuild` and specify a build name, operating system, and the storage location of your game build.

*   Upload a build file directly to Amazon GameLift's Amazon S3 account. To use this option, you first call `CreateBuild` with a build name and operating system. This action creates a new build record and returns an Amazon S3 storage location (bucket and key only) and temporary access credentials. Use the credentials to manually upload your build file to the storage location (see the Amazon S3 topic [Uploading Objects](http://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html)). You can upload files to a location only once.

If successful, this operation creates a new build record with a unique build ID and places it in `INITIALIZED` status. You can use [DescribeBuild](@ref) to check the status of your build. A build must be in `READY` status before it can be used to create fleets.

Build-related operations include:

*   [CreateBuild](@ref)

*   [ListBuilds](@ref)

*   [DescribeBuild](@ref)

*   [UpdateBuild](@ref)

*   [DeleteBuild](@ref)

# Arguments

## `Name = ::String`
Descriptive label that is associated with a build. Build names do not need to be unique. You can use [UpdateBuild](@ref) to change this value later.


## `Version = ::String`
Version that is associated with this build. Version strings do not need to be unique. You can use [UpdateBuild](@ref) to change this value later.


## `StorageLocation = [ ... ]`
Information indicating where your game build files are stored. Use this parameter only when creating a build with files stored in an Amazon S3 bucket that you own. The storage location must specify an Amazon S3 bucket name and key, as well as a role ARN that you set up to allow Amazon GameLift to access your Amazon S3 bucket. The S3 bucket must be in the same region that you want to create a new build in.
```
 StorageLocation = [
        "Bucket" =>  ::String,
        "Key" =>  ::String,
        "RoleArn" =>  ::String
    ]
```

## `OperatingSystem = "WINDOWS_2012" or "AMAZON_LINUX"`
Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build. If your game build contains multiple executables, they all must run on the same operating system. If an operating system is not specified when creating a build, Amazon GameLift uses the default value (WINDOWS_2012). This value cannot be changed later.




# Returns

`CreateBuildOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `ConflictException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateBuild)
"""
@inline create_build(aws::AWSConfig=default_aws_config(); args...) = create_build(aws, args)

@inline create_build(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreateBuild", args)

@inline create_build(args) = create_build(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_fleet
    create_fleet([::AWSConfig], arguments::Dict)
    create_fleet([::AWSConfig]; Name=, BuildId=, EC2InstanceType=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateFleet", arguments::Dict)
    gamelift([::AWSConfig], "CreateFleet", Name=, BuildId=, EC2InstanceType=, <keyword arguments>)

# CreateFleet Operation

Creates a new fleet to run your game servers. A fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can run multiple server processes to host game sessions. You set up a fleet to use instances with certain hardware specifications (see [Amazon EC2 Instance Types](http://aws.amazon.com/ec2/instance-types/) for more information), and deploy your game build to run on each instance.

To create a new fleet, you must specify the following: (1) a fleet name, (2) the build ID of a successfully uploaded game build, (3) an EC2 instance type, and (4) a run-time configuration, which describes the server processes to run on each instance in the fleet. If you don't specify a fleet type (on-demand or spot), the new fleet uses on-demand instances by default.

You can also configure the new fleet with the following settings:

*   Fleet description

*   Access permissions for inbound traffic

*   Fleet-wide game session protection

*   Resource usage limits

*   VPC peering connection (see [VPC Peering with Amazon GameLift Fleets](http://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html))

If you use Amazon CloudWatch for metrics, you can add the new fleet to a metric group. By adding multiple fleets to a metric group, you can view aggregated metrics for all the fleets in the group.

If the `CreateFleet` call is successful, Amazon GameLift performs the following tasks. You can track the process of a fleet by checking the fleet status or by monitoring fleet creation events:

*   Creates a fleet record. Status: `NEW`.

*   Begins writing events to the fleet event log, which can be accessed in the Amazon GameLift console.

    Sets the fleet's target capacity to 1 (desired instances), which triggers Amazon GameLift to start one new EC2 instance.

*   Downloads the game build to the new instance and installs it. Statuses: `DOWNLOADING`, `VALIDATING`, `BUILDING`.

*   Starts launching server processes on the instance. If the fleet is configured to run multiple server processes per instance, Amazon GameLift staggers each launch by a few seconds. Status: `ACTIVATING`.

*   Sets the fleet's status to `ACTIVE` as soon as one server process is ready to host a game session.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `Name = ::String` -- *Required*
Descriptive label that is associated with a fleet. Fleet names do not need to be unique.


## `Description = ::String`
Human-readable description of a fleet.


## `BuildId = ::String` -- *Required*
Unique identifier for a build to be deployed on the new fleet. The build must have been successfully uploaded to Amazon GameLift and be in a `READY` status. This fleet setting cannot be changed once the fleet is created.


## `ServerLaunchPath = ::String`
This parameter is no longer used. Instead, specify a server launch path using the `RuntimeConfiguration` parameter. (Requests that specify a server launch path and launch parameters instead of a run-time configuration will continue to work.)


## `ServerLaunchParameters = ::String`
This parameter is no longer used. Instead, specify server launch parameters in the `RuntimeConfiguration` parameter. (Requests that specify a server launch path and launch parameters instead of a run-time configuration will continue to work.)


## `LogPaths = [::String, ...]`
This parameter is no longer used. Instead, to specify where Amazon GameLift should store log files once a server process shuts down, use the Amazon GameLift server API `ProcessReady()` and specify one or more directory paths in `logParameters`. See more information in the [Server API Reference](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process).


## `EC2InstanceType = "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge" or "m4.10xlarge"` -- *Required*
Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See [Amazon EC2 Instance Types](http://aws.amazon.com/ec2/instance-types/) for detailed descriptions.


## `EC2InboundPermissions = [[ ... ], ...]`
Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. If no inbound permissions are set, including both IP address range and port range, the server processes in the fleet cannot accept connections. You can specify one or more sets of permissions for a fleet.
```
 EC2InboundPermissions = [[
        "FromPort" => <required> ::Int,
        "ToPort" => <required> ::Int,
        "IpRange" => <required> ::String,
        "Protocol" => <required> "TCP" or "UDP"
    ], ...]
```

## `NewGameSessionProtectionPolicy = "NoProtection" or "FullProtection"`
Game session protection policy to apply to all instances in this fleet. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy using [UpdateFleetAttributes](@ref), but this change will only affect sessions created after the policy change. You can also set protection for individual instances using [UpdateGameSession](@ref).

*   **NoProtection** -- The game session can be terminated during a scale-down event.

*   **FullProtection** -- If the game session is in an `ACTIVE` status, it cannot be terminated during a scale-down event.


## `RuntimeConfiguration = [ ... ]`
Instructions for launching server processes on each instance in the fleet. The run-time configuration for a fleet has a collection of server process configurations, one for each type of server process to run on an instance. A server process configuration specifies the location of the server executable, launch parameters, and the number of concurrent processes with that configuration to maintain on each instance. A CreateFleet request must include a run-time configuration with at least one server process configuration; otherwise the request fails with an invalid request exception. (This parameter replaces the parameters `ServerLaunchPath` and `ServerLaunchParameters`; requests that contain values for these parameters instead of a run-time configuration will continue to work.)
```
 RuntimeConfiguration = [
        "ServerProcesses" =>  [[
            "LaunchPath" => <required> ::String,
            "Parameters" =>  ::String,
            "ConcurrentExecutions" => <required> ::Int
        ], ...],
        "MaxConcurrentGameSessionActivations" =>  ::Int,
        "GameSessionActivationTimeoutSeconds" =>  ::Int
    ]
```

## `ResourceCreationLimitPolicy = [ ... ]`
Policy that limits the number of game sessions an individual player can create over a span of time for this fleet.
```
 ResourceCreationLimitPolicy = [
        "NewGameSessionsPerCreator" =>  ::Int,
        "PolicyPeriodInMinutes" =>  ::Int
    ]
```

## `MetricGroups = [::String, ...]`
Name of a metric group to add this fleet to. A metric group tracks metrics across all fleets in the group. Use an existing metric group name to add this fleet to the group, or use a new name to create a new metric group. A fleet can only be included in one metric group at a time.


## `PeerVpcAwsAccountId = ::String`
Unique identifier for the AWS account with the VPC that you want to peer your Amazon GameLift fleet with. You can find your Account ID in the AWS Management Console under account settings.


## `PeerVpcId = ::String`
Unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same region where your fleet is deployed. To get VPC information, including IDs, use the Virtual Private Cloud service tools, including the VPC Dashboard in the AWS Management Console.


## `FleetType = "ON_DEMAND" or "SPOT"`
Indicates whether to use on-demand instances or spot instances for this fleet. If empty, the default is ON_DEMAND. Both categories of instances use identical hardware and configurations, based on the instance type selected for this fleet. You can acquire on-demand instances at any time for a fixed price and keep them as long as you need them. Spot instances have lower prices, but spot pricing is variable, and while in use they can be interrupted (with a two-minute notification). Learn more about Amazon GameLift spot instances with at [Choose Computing Resources](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html).




# Returns

`CreateFleetOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `ConflictException`, `LimitExceededException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleet)
"""
@inline create_fleet(aws::AWSConfig=default_aws_config(); args...) = create_fleet(aws, args)

@inline create_fleet(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreateFleet", args)

@inline create_fleet(args) = create_fleet(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_game_session
    create_game_session([::AWSConfig], arguments::Dict)
    create_game_session([::AWSConfig]; MaximumPlayerSessionCount=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateGameSession", arguments::Dict)
    gamelift([::AWSConfig], "CreateGameSession", MaximumPlayerSessionCount=, <keyword arguments>)

# CreateGameSession Operation

Creates a multiplayer game session for players. This action creates a game session record and assigns an available server process in the specified fleet to host the game session. A fleet must have an `ACTIVE` status before a game session can be created in it.

To create a game session, specify either fleet ID or alias ID and indicate a maximum number of players to allow in the game session. You can also provide a name and game-specific properties for this game session. If successful, a [GameSession](@ref) object is returned containing the game session properties and other settings you specified.

**Idempotency tokens.** You can add a token that uniquely identifies game session requests. This is useful for ensuring that game session requests are idempotent. Multiple requests with the same idempotency token are processed only once; subsequent requests return the original result. All response values are the same with the exception of game session status, which may change.

**Resource creation limits.** If you are creating a game session on a fleet with a resource creation limit policy in force, then you must specify a creator ID. Without this ID, Amazon GameLift has no way to evaluate the policy for this new game session request.

**Player acceptance policy.** By default, newly created game sessions are open to new players. You can restrict new player access by using [UpdateGameSession](@ref) to change the game session's player session creation policy.

**Game session logs.** Logs are retained for all active game sessions for 14 days. To access the logs, call [GetGameSessionLogUrl](@ref) to download the log files.

*Available in Amazon GameLift Local.*

Game-session-related operations include:

*   [CreateGameSession](@ref)

*   [DescribeGameSessions](@ref)

*   [DescribeGameSessionDetails](@ref)

*   [SearchGameSessions](@ref)

*   [UpdateGameSession](@ref)

*   [GetGameSessionLogUrl](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `FleetId = ::String`
Unique identifier for a fleet to create a game session in. Each request must reference either a fleet ID or alias ID, but not both.


## `AliasId = ::String`
Unique identifier for an alias associated with the fleet to create a game session in. Each request must reference either a fleet ID or alias ID, but not both.


## `MaximumPlayerSessionCount = ::Int` -- *Required*
Maximum number of players that can be connected simultaneously to the game session.


## `Name = ::String`
Descriptive label that is associated with a game session. Session names do not need to be unique.


## `GameProperties = [[ ... ], ...]`
Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the [GameSession](@ref) object with a request to start a new game session (see [Start a Game Session](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).
```
 GameProperties = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `CreatorId = ::String`
Unique identifier for a player or entity creating the game session. This ID is used to enforce a resource protection policy (if one exists) that limits the number of concurrent active game sessions one player can have.


## `GameSessionId = ::String`
*This parameter is no longer preferred. Please use `IdempotencyToken` instead.* Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ARN has the following format: `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string or idempotency token>`.)


## `IdempotencyToken = ::String`
Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ARN has the following format: `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string or idempotency token>`.) Idempotency tokens remain in use for 30 days after a game session has ended; game session objects are retained for this time period and then deleted.


## `GameSessionData = ::String`
Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the [GameSession](@ref) object with a request to start a new game session (see [Start a Game Session](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).




# Returns

`CreateGameSessionOutput`

# Exceptions

`ConflictException`, `InternalServiceException`, `UnauthorizedException`, `InvalidFleetStatusException`, `TerminalRoutingStrategyException`, `InvalidRequestException`, `NotFoundException`, `FleetCapacityExceededException`, `LimitExceededException` or `IdempotentParameterMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSession)
"""
@inline create_game_session(aws::AWSConfig=default_aws_config(); args...) = create_game_session(aws, args)

@inline create_game_session(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreateGameSession", args)

@inline create_game_session(args) = create_game_session(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_game_session_queue
    create_game_session_queue([::AWSConfig], arguments::Dict)
    create_game_session_queue([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateGameSessionQueue", arguments::Dict)
    gamelift([::AWSConfig], "CreateGameSessionQueue", Name=, <keyword arguments>)

# CreateGameSessionQueue Operation

Establishes a new queue for processing requests to place new game sessions. A queue identifies where new game sessions can be hosted -- by specifying a list of destinations (fleets or aliases) -- and how long requests can wait in the queue before timing out. You can set up a queue to try to place game sessions on fleets in multiple regions. To add placement requests to a queue, call [StartGameSessionPlacement](@ref) and reference the queue name.

**Destination order.** When processing a request for a game session, Amazon GameLift tries each destination in order until it finds one with available resources to host the new game session. A queue's default order is determined by how destinations are listed. The default order is overridden when a game session placement request provides player latency information. Player latency information enables Amazon GameLift to prioritize destinations where players report the lowest average latency, as a result placing the new game session where the majority of players will have the best possible gameplay experience.

**Player latency policies.** For placement requests containing player latency information, use player latency policies to protect individual players from very high latencies. With a latency cap, even when a destination can deliver a low latency for most players, the game is not placed where any individual player is reporting latency higher than a policy's maximum. A queue can have multiple latency policies, which are enforced consecutively starting with the policy with the lowest latency cap. Use multiple policies to gradually relax latency controls; for example, you might set a policy with a low latency cap for the first 60 seconds, a second policy with a higher cap for the next 60 seconds, etc.

To create a new queue, provide a name, timeout value, a list of destinations and, if desired, a set of latency policies. If successful, a new queue object is returned.

Queue-related operations include:

*   [CreateGameSessionQueue](@ref)

*   [DescribeGameSessionQueues](@ref)

*   [UpdateGameSessionQueue](@ref)

*   [DeleteGameSessionQueue](@ref)

# Arguments

## `Name = ::String` -- *Required*
Descriptive label that is associated with game session queue. Queue names must be unique within each region.


## `TimeoutInSeconds = ::Int`
Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a `TIMED_OUT` status.


## `PlayerLatencyPolicies = [[ ... ], ...]`
Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. A player latency policy must set a value for MaximumIndividualPlayerLatencyMilliseconds; if none is set, this API requests will fail.
```
 PlayerLatencyPolicies = [[
        "MaximumIndividualPlayerLatencyMilliseconds" =>  ::Int,
        "PolicyDurationSeconds" =>  ::Int
    ], ...]
```

## `Destinations = [["DestinationArn" =>  ::String], ...]`
List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.




# Returns

`CreateGameSessionQueueOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `UnauthorizedException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionQueue)
"""
@inline create_game_session_queue(aws::AWSConfig=default_aws_config(); args...) = create_game_session_queue(aws, args)

@inline create_game_session_queue(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreateGameSessionQueue", args)

@inline create_game_session_queue(args) = create_game_session_queue(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_matchmaking_configuration
    create_matchmaking_configuration([::AWSConfig], arguments::Dict)
    create_matchmaking_configuration([::AWSConfig]; Name=, GameSessionQueueArns=, RequestTimeoutSeconds=, AcceptanceRequired=, RuleSetName=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateMatchmakingConfiguration", arguments::Dict)
    gamelift([::AWSConfig], "CreateMatchmakingConfiguration", Name=, GameSessionQueueArns=, RequestTimeoutSeconds=, AcceptanceRequired=, RuleSetName=, <keyword arguments>)

# CreateMatchmakingConfiguration Operation

Defines a new matchmaking configuration for use with FlexMatch. A matchmaking configuration sets out guidelines for matching players and getting the matches into games. You can set up multiple matchmaking configurations to handle the scenarios needed for your game. Each matchmaking ticket ([StartMatchmaking](@ref) or [StartMatchBackfill](@ref)) specifies a configuration for the match and provides player attributes to support the configuration being used.

To create a matchmaking configuration, at a minimum you must specify the following: configuration name; a rule set that governs how to evaluate players and find acceptable matches; a game session queue to use when placing a new game session for the match; and the maximum time allowed for a matchmaking attempt.

**Player acceptance** -- In each configuration, you have the option to require that all players accept participation in a proposed match. To enable this feature, set *AcceptanceRequired* to true and specify a time limit for player acceptance. Players have the option to accept or reject a proposed match, and a match does not move ahead to game session placement unless all matched players accept.

**Matchmaking status notification** -- There are two ways to track the progress of matchmaking tickets: (1) polling ticket status with [DescribeMatchmaking](@ref); or (2) receiving notifications with Amazon Simple Notification Service (SNS). To use notifications, you first need to set up an SNS topic to receive the notifications, and provide the topic ARN in the matchmaking configuration (see [Setting up Notifications for Matchmaking](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html)). Since notifications promise only "best effort" delivery, we recommend calling `DescribeMatchmaking` if no notifications are received within 30 seconds.

Operations related to match configurations and rule sets include:

*   [CreateMatchmakingConfiguration](@ref)

*   [DescribeMatchmakingConfigurations](@ref)

*   [UpdateMatchmakingConfiguration](@ref)

*   [DeleteMatchmakingConfiguration](@ref)

*   [CreateMatchmakingRuleSet](@ref)

*   [DescribeMatchmakingRuleSets](@ref)

*   [ValidateMatchmakingRuleSet](@ref)

# Arguments

## `Name = ::String` -- *Required*
Unique identifier for a matchmaking configuration. This name is used to identify the configuration associated with a matchmaking request or ticket.


## `Description = ::String`
Meaningful description of the matchmaking configuration.


## `GameSessionQueueArns = [::String, ...]` -- *Required*
Amazon Resource Name ([ARN](http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html)) that is assigned to a game session queue and uniquely identifies it. Format is `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`. These queues are used when placing game sessions for matches that are created with this matchmaking configuration. Queues can be located in any region.


## `RequestTimeoutSeconds = ::Int` -- *Required*
Maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out. Requests that time out can be resubmitted as needed.


## `AcceptanceTimeoutSeconds = ::Int`
Length of time (in seconds) to wait for players to accept a proposed match. If any player rejects the match or fails to accept before the timeout, the ticket continues to look for an acceptable match.


## `AcceptanceRequired = ::Bool` -- *Required*
Flag that determines whether or not a match that was created with this configuration must be accepted by the matched players. To require acceptance, set to TRUE.


## `RuleSetName = ::String` -- *Required*
Unique identifier for a matchmaking rule set to use with this configuration. A matchmaking configuration can only use rule sets that are defined in the same region.


## `NotificationTarget = ::String`
SNS topic ARN that is set up to receive matchmaking notifications.


## `AdditionalPlayerCount = ::Int`
Number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match.


## `CustomEventData = ::String`
Information to attached to all events related to the matchmaking configuration.


## `GameProperties = [[ ... ], ...]`
Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the [GameSession](@ref) object with a request to start a new game session (see [Start a Game Session](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)). This information is added to the new [GameSession](@ref) object that is created for a successful match.
```
 GameProperties = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `GameSessionData = ::String`
Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the [GameSession](@ref) object with a request to start a new game session (see [Start a Game Session](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)). This information is added to the new [GameSession](@ref) object that is created for a successful match.




# Returns

`CreateMatchmakingConfigurationOutput`

# Exceptions

`InvalidRequestException`, `LimitExceededException`, `NotFoundException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingConfiguration)
"""
@inline create_matchmaking_configuration(aws::AWSConfig=default_aws_config(); args...) = create_matchmaking_configuration(aws, args)

@inline create_matchmaking_configuration(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreateMatchmakingConfiguration", args)

@inline create_matchmaking_configuration(args) = create_matchmaking_configuration(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_matchmaking_rule_set
    create_matchmaking_rule_set([::AWSConfig], arguments::Dict)
    create_matchmaking_rule_set([::AWSConfig]; Name=, RuleSetBody=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateMatchmakingRuleSet", arguments::Dict)
    gamelift([::AWSConfig], "CreateMatchmakingRuleSet", Name=, RuleSetBody=)

# CreateMatchmakingRuleSet Operation

Creates a new rule set for FlexMatch matchmaking. A rule set describes the type of match to create, such as the number and size of teams, and sets the parameters for acceptable player matches, such as minimum skill level or character type. Rule sets are used in matchmaking configurations, which define how matchmaking requests are handled. Each [MatchmakingConfiguration](@ref) uses one rule set; you can set up multiple rule sets to handle the scenarios that suit your game (such as for different game modes), and create a separate matchmaking configuration for each rule set. See additional information on rule set content in the [MatchmakingRuleSet](@ref) structure. For help creating rule sets, including useful examples, see the topic [Adding FlexMatch to Your Game](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html).

Once created, matchmaking rule sets cannot be changed or deleted, so we recommend checking the rule set syntax using [ValidateMatchmakingRuleSet](@ref) before creating the rule set.

To create a matchmaking rule set, provide the set of rules and a unique name. Rule sets must be defined in the same region as the matchmaking configuration they will be used with. Rule sets cannot be edited or deleted. If you need to change a rule set, create a new one with the necessary edits and then update matchmaking configurations to use the new rule set.

Operations related to match configurations and rule sets include:

*   [CreateMatchmakingConfiguration](@ref)

*   [DescribeMatchmakingConfigurations](@ref)

*   [UpdateMatchmakingConfiguration](@ref)

*   [DeleteMatchmakingConfiguration](@ref)

*   [CreateMatchmakingRuleSet](@ref)

*   [DescribeMatchmakingRuleSets](@ref)

*   [ValidateMatchmakingRuleSet](@ref)

# Arguments

## `Name = ::String` -- *Required*
Unique identifier for a matchmaking rule set. This name is used to identify the rule set associated with a matchmaking configuration.


## `RuleSetBody = ::String` -- *Required*
Collection of matchmaking rules, formatted as a JSON string. (Note that comments are not allowed in JSON, but most elements support a description field.)




# Returns

`CreateMatchmakingRuleSetOutput`

# Exceptions

`InvalidRequestException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingRuleSet)
"""
@inline create_matchmaking_rule_set(aws::AWSConfig=default_aws_config(); args...) = create_matchmaking_rule_set(aws, args)

@inline create_matchmaking_rule_set(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreateMatchmakingRuleSet", args)

@inline create_matchmaking_rule_set(args) = create_matchmaking_rule_set(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_player_session
    create_player_session([::AWSConfig], arguments::Dict)
    create_player_session([::AWSConfig]; GameSessionId=, PlayerId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreatePlayerSession", arguments::Dict)
    gamelift([::AWSConfig], "CreatePlayerSession", GameSessionId=, PlayerId=, <keyword arguments>)

# CreatePlayerSession Operation

Adds a player to a game session and creates a player session record. Before a player can be added, a game session must have an `ACTIVE` status, have a creation policy of `ALLOW_ALL`, and have an open player slot. To add a group of players to a game session, use [CreatePlayerSessions](@ref).

To create a player session, specify a game session ID, player ID, and optionally a string of player data. If successful, the player is added to the game session and a new [PlayerSession](@ref) object is returned. Player sessions cannot be updated.

*Available in Amazon GameLift Local.*

Player-session-related operations include:

*   [CreatePlayerSession](@ref)

*   [CreatePlayerSessions](@ref)

*   [DescribePlayerSessions](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `GameSessionId = ::String` -- *Required*
Unique identifier for the game session to add a player to.


## `PlayerId = ::String` -- *Required*
Unique identifier for a player. Player IDs are developer-defined.


## `PlayerData = ::String`
Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game.




# Returns

`CreatePlayerSessionOutput`

# Exceptions

`InternalServiceException`, `UnauthorizedException`, `InvalidGameSessionStatusException`, `GameSessionFullException`, `TerminalRoutingStrategyException`, `InvalidRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSession)
"""
@inline create_player_session(aws::AWSConfig=default_aws_config(); args...) = create_player_session(aws, args)

@inline create_player_session(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreatePlayerSession", args)

@inline create_player_session(args) = create_player_session(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_player_sessions
    create_player_sessions([::AWSConfig], arguments::Dict)
    create_player_sessions([::AWSConfig]; GameSessionId=, PlayerIds=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreatePlayerSessions", arguments::Dict)
    gamelift([::AWSConfig], "CreatePlayerSessions", GameSessionId=, PlayerIds=, <keyword arguments>)

# CreatePlayerSessions Operation

Adds a group of players to a game session. This action is useful with a team matching feature. Before players can be added, a game session must have an `ACTIVE` status, have a creation policy of `ALLOW_ALL`, and have an open player slot. To add a single player to a game session, use [CreatePlayerSession](@ref).

To create player sessions, specify a game session ID, a list of player IDs, and optionally a set of player data strings. If successful, the players are added to the game session and a set of new [PlayerSession](@ref) objects is returned. Player sessions cannot be updated.

*Available in Amazon GameLift Local.*

Player-session-related operations include:

*   [CreatePlayerSession](@ref)

*   [CreatePlayerSessions](@ref)

*   [DescribePlayerSessions](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `GameSessionId = ::String` -- *Required*
Unique identifier for the game session to add players to.


## `PlayerIds = [::String, ...]` -- *Required*
List of unique identifiers for the players to be added.


## `PlayerDataMap = ::Dict{String,String}`
Map of string pairs, each specifying a player ID and a set of developer-defined information related to the player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. Player data strings for player IDs not included in the `PlayerIds` parameter are ignored.




# Returns

`CreatePlayerSessionsOutput`

# Exceptions

`InternalServiceException`, `UnauthorizedException`, `InvalidGameSessionStatusException`, `GameSessionFullException`, `TerminalRoutingStrategyException`, `InvalidRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessions)
"""
@inline create_player_sessions(aws::AWSConfig=default_aws_config(); args...) = create_player_sessions(aws, args)

@inline create_player_sessions(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreatePlayerSessions", args)

@inline create_player_sessions(args) = create_player_sessions(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_vpc_peering_authorization
    create_vpc_peering_authorization([::AWSConfig], arguments::Dict)
    create_vpc_peering_authorization([::AWSConfig]; GameLiftAwsAccountId=, PeerVpcId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateVpcPeeringAuthorization", arguments::Dict)
    gamelift([::AWSConfig], "CreateVpcPeeringAuthorization", GameLiftAwsAccountId=, PeerVpcId=)

# CreateVpcPeeringAuthorization Operation

Requests authorization to create or delete a peer connection between the VPC for your Amazon GameLift fleet and a virtual private cloud (VPC) in your AWS account. VPC peering enables the game servers on your fleet to communicate directly with other AWS resources. Once you've received authorization, call [CreateVpcPeeringConnection](@ref) to establish the peering connection. For more information, see [VPC Peering with Amazon GameLift Fleets](http://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

You can peer with VPCs that are owned by any AWS account you have access to, including the account that you use to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in different regions.

To request authorization to create a connection, call this operation from the AWS account with the VPC that you want to peer to your Amazon GameLift fleet. For example, to enable your game servers to retrieve data from a DynamoDB table, use the account that manages that DynamoDB resource. Identify the following values: (1) The ID of the VPC that you want to peer with, and (2) the ID of the AWS account that you use to manage Amazon GameLift. If successful, VPC peering is authorized for the specified VPC.

To request authorization to delete a connection, call this operation from the AWS account with the VPC that is peered with your Amazon GameLift fleet. Identify the following values: (1) VPC ID that you want to delete the peering connection for, and (2) ID of the AWS account that you use to manage Amazon GameLift.

The authorization remains valid for 24 hours unless it is canceled by a call to [DeleteVpcPeeringAuthorization](@ref). You must create or delete the peering connection while the authorization is valid.

VPC peering connection operations include:

*   [CreateVpcPeeringAuthorization](@ref)

*   [DescribeVpcPeeringAuthorizations](@ref)

*   [DeleteVpcPeeringAuthorization](@ref)

*   [CreateVpcPeeringConnection](@ref)

*   [DescribeVpcPeeringConnections](@ref)

*   [DeleteVpcPeeringConnection](@ref)

# Arguments

## `GameLiftAwsAccountId = ::String` -- *Required*
Unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings.


## `PeerVpcId = ::String` -- *Required*
Unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same region where your fleet is deployed. To get VPC information, including IDs, use the Virtual Private Cloud service tools, including the VPC Dashboard in the AWS Management Console.




# Returns

`CreateVpcPeeringAuthorizationOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringAuthorization)
"""
@inline create_vpc_peering_authorization(aws::AWSConfig=default_aws_config(); args...) = create_vpc_peering_authorization(aws, args)

@inline create_vpc_peering_authorization(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreateVpcPeeringAuthorization", args)

@inline create_vpc_peering_authorization(args) = create_vpc_peering_authorization(default_aws_config(), args)


"""
    using AWSSDK.GameLift.create_vpc_peering_connection
    create_vpc_peering_connection([::AWSConfig], arguments::Dict)
    create_vpc_peering_connection([::AWSConfig]; FleetId=, PeerVpcAwsAccountId=, PeerVpcId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateVpcPeeringConnection", arguments::Dict)
    gamelift([::AWSConfig], "CreateVpcPeeringConnection", FleetId=, PeerVpcAwsAccountId=, PeerVpcId=)

# CreateVpcPeeringConnection Operation

Establishes a VPC peering connection between a virtual private cloud (VPC) in an AWS account with the VPC for your Amazon GameLift fleet. VPC peering enables the game servers on your fleet to communicate directly with other AWS resources. You can peer with VPCs in any AWS account that you have access to, including the account that you use to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in different regions. For more information, see [VPC Peering with Amazon GameLift Fleets](http://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

Before calling this operation to establish the peering connection, you first need to call [CreateVpcPeeringAuthorization](@ref) and identify the VPC you want to peer with. Once the authorization for the specified VPC is issued, you have 24 hours to establish the connection. These two operations handle all tasks necessary to peer the two VPCs, including acceptance, updating routing tables, etc.

To establish the connection, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Identify the following values: (1) The ID of the fleet you want to be enable a VPC peering connection for; (2) The AWS account with the VPC that you want to peer with; and (3) The ID of the VPC you want to peer with. This operation is asynchronous. If successful, a [VpcPeeringConnection](@ref) request is created. You can use continuous polling to track the request's status using [DescribeVpcPeeringConnections](@ref), or by monitoring fleet events for success or failure using [DescribeFleetEvents](@ref).

VPC peering connection operations include:

*   [CreateVpcPeeringAuthorization](@ref)

*   [DescribeVpcPeeringAuthorizations](@ref)

*   [DeleteVpcPeeringAuthorization](@ref)

*   [CreateVpcPeeringConnection](@ref)

*   [DescribeVpcPeeringConnections](@ref)

*   [DeleteVpcPeeringConnection](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet. This tells Amazon GameLift which GameLift VPC to peer with.


## `PeerVpcAwsAccountId = ::String` -- *Required*
Unique identifier for the AWS account with the VPC that you want to peer your Amazon GameLift fleet with. You can find your Account ID in the AWS Management Console under account settings.


## `PeerVpcId = ::String` -- *Required*
Unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same region where your fleet is deployed. To get VPC information, including IDs, use the Virtual Private Cloud service tools, including the VPC Dashboard in the AWS Management Console.




# Returns

`CreateVpcPeeringConnectionOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringConnection)
"""
@inline create_vpc_peering_connection(aws::AWSConfig=default_aws_config(); args...) = create_vpc_peering_connection(aws, args)

@inline create_vpc_peering_connection(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "CreateVpcPeeringConnection", args)

@inline create_vpc_peering_connection(args) = create_vpc_peering_connection(default_aws_config(), args)


"""
    using AWSSDK.GameLift.delete_alias
    delete_alias([::AWSConfig], arguments::Dict)
    delete_alias([::AWSConfig]; AliasId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteAlias", arguments::Dict)
    gamelift([::AWSConfig], "DeleteAlias", AliasId=)

# DeleteAlias Operation

Deletes an alias. This action removes all record of the alias. Game clients attempting to access a server process using the deleted alias receive an error. To delete an alias, specify the alias ID to be deleted.

Alias-related operations include:

*   [CreateAlias](@ref)

*   [ListAliases](@ref)

*   [DescribeAlias](@ref)

*   [UpdateAlias](@ref)

*   [DeleteAlias](@ref)

*   [ResolveAlias](@ref)

# Arguments

## `AliasId = ::String` -- *Required*
Unique identifier for a fleet alias. Specify the alias you want to delete.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `InvalidRequestException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteAlias)
"""
@inline delete_alias(aws::AWSConfig=default_aws_config(); args...) = delete_alias(aws, args)

@inline delete_alias(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DeleteAlias", args)

@inline delete_alias(args) = delete_alias(default_aws_config(), args)


"""
    using AWSSDK.GameLift.delete_build
    delete_build([::AWSConfig], arguments::Dict)
    delete_build([::AWSConfig]; BuildId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteBuild", arguments::Dict)
    gamelift([::AWSConfig], "DeleteBuild", BuildId=)

# DeleteBuild Operation

Deletes a build. This action permanently deletes the build record and any uploaded build files.

To delete a build, specify its ID. Deleting a build does not affect the status of any active fleets using the build, but you can no longer create new fleets with the deleted build.

Build-related operations include:

*   [CreateBuild](@ref)

*   [ListBuilds](@ref)

*   [DescribeBuild](@ref)

*   [UpdateBuild](@ref)

*   [DeleteBuild](@ref)

# Arguments

## `BuildId = ::String` -- *Required*
Unique identifier for a build to delete.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `InternalServiceException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteBuild)
"""
@inline delete_build(aws::AWSConfig=default_aws_config(); args...) = delete_build(aws, args)

@inline delete_build(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DeleteBuild", args)

@inline delete_build(args) = delete_build(default_aws_config(), args)


"""
    using AWSSDK.GameLift.delete_fleet
    delete_fleet([::AWSConfig], arguments::Dict)
    delete_fleet([::AWSConfig]; FleetId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteFleet", arguments::Dict)
    gamelift([::AWSConfig], "DeleteFleet", FleetId=)

# DeleteFleet Operation

Deletes everything related to a fleet. Before deleting a fleet, you must set the fleet's desired capacity to zero. See [UpdateFleetCapacity](@ref).

This action removes the fleet's resources and the fleet record. Once a fleet is deleted, you can no longer use that fleet.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to be deleted.




# Exceptions

`NotFoundException`, `InternalServiceException`, `InvalidFleetStatusException`, `UnauthorizedException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteFleet)
"""
@inline delete_fleet(aws::AWSConfig=default_aws_config(); args...) = delete_fleet(aws, args)

@inline delete_fleet(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DeleteFleet", args)

@inline delete_fleet(args) = delete_fleet(default_aws_config(), args)


"""
    using AWSSDK.GameLift.delete_game_session_queue
    delete_game_session_queue([::AWSConfig], arguments::Dict)
    delete_game_session_queue([::AWSConfig]; Name=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteGameSessionQueue", arguments::Dict)
    gamelift([::AWSConfig], "DeleteGameSessionQueue", Name=)

# DeleteGameSessionQueue Operation

Deletes a game session queue. This action means that any [StartGameSessionPlacement](@ref) requests that reference this queue will fail. To delete a queue, specify the queue name.

Queue-related operations include:

*   [CreateGameSessionQueue](@ref)

*   [DescribeGameSessionQueues](@ref)

*   [UpdateGameSessionQueue](@ref)

*   [DeleteGameSessionQueue](@ref)

# Arguments

## `Name = ::String` -- *Required*
Descriptive label that is associated with game session queue. Queue names must be unique within each region.




# Returns

`DeleteGameSessionQueueOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `NotFoundException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameSessionQueue)
"""
@inline delete_game_session_queue(aws::AWSConfig=default_aws_config(); args...) = delete_game_session_queue(aws, args)

@inline delete_game_session_queue(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DeleteGameSessionQueue", args)

@inline delete_game_session_queue(args) = delete_game_session_queue(default_aws_config(), args)


"""
    using AWSSDK.GameLift.delete_matchmaking_configuration
    delete_matchmaking_configuration([::AWSConfig], arguments::Dict)
    delete_matchmaking_configuration([::AWSConfig]; Name=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteMatchmakingConfiguration", arguments::Dict)
    gamelift([::AWSConfig], "DeleteMatchmakingConfiguration", Name=)

# DeleteMatchmakingConfiguration Operation

Permanently removes a FlexMatch matchmaking configuration. To delete, specify the configuration name. A matchmaking configuration cannot be deleted if it is being used in any active matchmaking tickets.

Operations related to match configurations and rule sets include:

*   [CreateMatchmakingConfiguration](@ref)

*   [DescribeMatchmakingConfigurations](@ref)

*   [UpdateMatchmakingConfiguration](@ref)

*   [DeleteMatchmakingConfiguration](@ref)

*   [CreateMatchmakingRuleSet](@ref)

*   [DescribeMatchmakingRuleSets](@ref)

*   [ValidateMatchmakingRuleSet](@ref)

# Arguments

## `Name = ::String` -- *Required*
Unique identifier for a matchmaking configuration




# Returns

`DeleteMatchmakingConfigurationOutput`

# Exceptions

`InvalidRequestException`, `NotFoundException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingConfiguration)
"""
@inline delete_matchmaking_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_matchmaking_configuration(aws, args)

@inline delete_matchmaking_configuration(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DeleteMatchmakingConfiguration", args)

@inline delete_matchmaking_configuration(args) = delete_matchmaking_configuration(default_aws_config(), args)


"""
    using AWSSDK.GameLift.delete_scaling_policy
    delete_scaling_policy([::AWSConfig], arguments::Dict)
    delete_scaling_policy([::AWSConfig]; Name=, FleetId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteScalingPolicy", arguments::Dict)
    gamelift([::AWSConfig], "DeleteScalingPolicy", Name=, FleetId=)

# DeleteScalingPolicy Operation

Deletes a fleet scaling policy. This action means that the policy is no longer in force and removes all record of it. To delete a scaling policy, specify both the scaling policy name and the fleet ID it is associated with.

To temporarily suspend scaling policies, call [StopFleetActions](@ref). This operation suspends all policies for the fleet.

Operations related to fleet capacity scaling include:

*   [DescribeFleetCapacity](@ref)

*   [UpdateFleetCapacity](@ref)

*   [DescribeEC2InstanceLimits](@ref)

*   Manage scaling policies:

    *   [PutScalingPolicy](@ref) (auto-scaling)

    *   [DescribeScalingPolicies](@ref) (auto-scaling)

    *   [DeleteScalingPolicy](@ref) (auto-scaling)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `Name = ::String` -- *Required*
Descriptive label that is associated with a scaling policy. Policy names do not need to be unique.


## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to be deleted.




# Exceptions

`InternalServiceException`, `InvalidRequestException`, `UnauthorizedException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteScalingPolicy)
"""
@inline delete_scaling_policy(aws::AWSConfig=default_aws_config(); args...) = delete_scaling_policy(aws, args)

@inline delete_scaling_policy(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DeleteScalingPolicy", args)

@inline delete_scaling_policy(args) = delete_scaling_policy(default_aws_config(), args)


"""
    using AWSSDK.GameLift.delete_vpc_peering_authorization
    delete_vpc_peering_authorization([::AWSConfig], arguments::Dict)
    delete_vpc_peering_authorization([::AWSConfig]; GameLiftAwsAccountId=, PeerVpcId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteVpcPeeringAuthorization", arguments::Dict)
    gamelift([::AWSConfig], "DeleteVpcPeeringAuthorization", GameLiftAwsAccountId=, PeerVpcId=)

# DeleteVpcPeeringAuthorization Operation

Cancels a pending VPC peering authorization for the specified VPC. If the authorization has already been used to create a peering connection, call [DeleteVpcPeeringConnection](@ref) to remove the connection.

VPC peering connection operations include:

*   [CreateVpcPeeringAuthorization](@ref)

*   [DescribeVpcPeeringAuthorizations](@ref)

*   [DeleteVpcPeeringAuthorization](@ref)

*   [CreateVpcPeeringConnection](@ref)

*   [DescribeVpcPeeringConnections](@ref)

*   [DeleteVpcPeeringConnection](@ref)

# Arguments

## `GameLiftAwsAccountId = ::String` -- *Required*
Unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings.


## `PeerVpcId = ::String` -- *Required*
Unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same region where your fleet is deployed. To get VPC information, including IDs, use the Virtual Private Cloud service tools, including the VPC Dashboard in the AWS Management Console.




# Returns

`DeleteVpcPeeringAuthorizationOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringAuthorization)
"""
@inline delete_vpc_peering_authorization(aws::AWSConfig=default_aws_config(); args...) = delete_vpc_peering_authorization(aws, args)

@inline delete_vpc_peering_authorization(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DeleteVpcPeeringAuthorization", args)

@inline delete_vpc_peering_authorization(args) = delete_vpc_peering_authorization(default_aws_config(), args)


"""
    using AWSSDK.GameLift.delete_vpc_peering_connection
    delete_vpc_peering_connection([::AWSConfig], arguments::Dict)
    delete_vpc_peering_connection([::AWSConfig]; FleetId=, VpcPeeringConnectionId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteVpcPeeringConnection", arguments::Dict)
    gamelift([::AWSConfig], "DeleteVpcPeeringConnection", FleetId=, VpcPeeringConnectionId=)

# DeleteVpcPeeringConnection Operation

Removes a VPC peering connection. To delete the connection, you must have a valid authorization for the VPC peering connection that you want to delete. You can check for an authorization by calling [DescribeVpcPeeringAuthorizations](@ref) or request a new one using [CreateVpcPeeringAuthorization](@ref).

Once a valid authorization exists, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Identify the connection to delete by the connection ID and fleet ID. If successful, the connection is removed.

VPC peering connection operations include:

*   [CreateVpcPeeringAuthorization](@ref)

*   [DescribeVpcPeeringAuthorizations](@ref)

*   [DeleteVpcPeeringAuthorization](@ref)

*   [CreateVpcPeeringConnection](@ref)

*   [DescribeVpcPeeringConnections](@ref)

*   [DeleteVpcPeeringConnection](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet. This value must match the fleet ID referenced in the VPC peering connection record.


## `VpcPeeringConnectionId = ::String` -- *Required*
Unique identifier for a VPC peering connection. This value is included in the [VpcPeeringConnection](@ref) object, which can be retrieved by calling [DescribeVpcPeeringConnections](@ref).




# Returns

`DeleteVpcPeeringConnectionOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringConnection)
"""
@inline delete_vpc_peering_connection(aws::AWSConfig=default_aws_config(); args...) = delete_vpc_peering_connection(aws, args)

@inline delete_vpc_peering_connection(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DeleteVpcPeeringConnection", args)

@inline delete_vpc_peering_connection(args) = delete_vpc_peering_connection(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_alias
    describe_alias([::AWSConfig], arguments::Dict)
    describe_alias([::AWSConfig]; AliasId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeAlias", arguments::Dict)
    gamelift([::AWSConfig], "DescribeAlias", AliasId=)

# DescribeAlias Operation

Retrieves properties for an alias. This operation returns all alias metadata and settings. To get an alias's target fleet ID only, use `ResolveAlias`.

To get alias properties, specify the alias ID. If successful, the requested alias record is returned.

Alias-related operations include:

*   [CreateAlias](@ref)

*   [ListAliases](@ref)

*   [DescribeAlias](@ref)

*   [UpdateAlias](@ref)

*   [DeleteAlias](@ref)

*   [ResolveAlias](@ref)

# Arguments

## `AliasId = ::String` -- *Required*
Unique identifier for a fleet alias. Specify the alias you want to retrieve.




# Returns

`DescribeAliasOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeAlias)
"""
@inline describe_alias(aws::AWSConfig=default_aws_config(); args...) = describe_alias(aws, args)

@inline describe_alias(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeAlias", args)

@inline describe_alias(args) = describe_alias(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_build
    describe_build([::AWSConfig], arguments::Dict)
    describe_build([::AWSConfig]; BuildId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeBuild", arguments::Dict)
    gamelift([::AWSConfig], "DescribeBuild", BuildId=)

# DescribeBuild Operation

Retrieves properties for a build. To request a build record, specify a build ID. If successful, an object containing the build properties is returned.

Build-related operations include:

*   [CreateBuild](@ref)

*   [ListBuilds](@ref)

*   [DescribeBuild](@ref)

*   [UpdateBuild](@ref)

*   [DeleteBuild](@ref)

# Arguments

## `BuildId = ::String` -- *Required*
Unique identifier for a build to retrieve properties for.




# Returns

`DescribeBuildOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeBuild)
"""
@inline describe_build(aws::AWSConfig=default_aws_config(); args...) = describe_build(aws, args)

@inline describe_build(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeBuild", args)

@inline describe_build(args) = describe_build(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_ec2instance_limits
    describe_ec2instance_limits([::AWSConfig], arguments::Dict)
    describe_ec2instance_limits([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeEC2InstanceLimits", arguments::Dict)
    gamelift([::AWSConfig], "DescribeEC2InstanceLimits", <keyword arguments>)

# DescribeEC2InstanceLimits Operation

Retrieves the following information for the specified EC2 instance type:

*   maximum number of instances allowed per AWS account (service limit)

*   current usage level for the AWS account

Service limits vary depending on region. Available regions for Amazon GameLift can be found in the AWS Management Console for Amazon GameLift (see the drop-down list in the upper right corner).

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `EC2InstanceType = "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge" or "m4.10xlarge"`
Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See [Amazon EC2 Instance Types](http://aws.amazon.com/ec2/instance-types/) for detailed descriptions. Leave this parameter blank to retrieve limits for all types.




# Returns

`DescribeEC2InstanceLimitsOutput`

# Exceptions

`InvalidRequestException`, `InternalServiceException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeEC2InstanceLimits)
"""
@inline describe_ec2instance_limits(aws::AWSConfig=default_aws_config(); args...) = describe_ec2instance_limits(aws, args)

@inline describe_ec2instance_limits(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeEC2InstanceLimits", args)

@inline describe_ec2instance_limits(args) = describe_ec2instance_limits(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_fleet_attributes
    describe_fleet_attributes([::AWSConfig], arguments::Dict)
    describe_fleet_attributes([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeFleetAttributes", arguments::Dict)
    gamelift([::AWSConfig], "DescribeFleetAttributes", <keyword arguments>)

# DescribeFleetAttributes Operation

Retrieves fleet properties, including metadata, status, and configuration, for one or more fleets. You can request attributes for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a [FleetAttributes](@ref) object is returned for each requested fleet ID. When specifying a list of fleet IDs, attribute objects are returned only for fleets that currently exist.

**Note**
> Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetIds = [::String, ...]`
Unique identifier for a fleet(s) to retrieve attributes for. To request attributes for all fleets, leave this parameter empty.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.




# Returns

`DescribeFleetAttributesOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetAttributes)
"""
@inline describe_fleet_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_fleet_attributes(aws, args)

@inline describe_fleet_attributes(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeFleetAttributes", args)

@inline describe_fleet_attributes(args) = describe_fleet_attributes(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_fleet_capacity
    describe_fleet_capacity([::AWSConfig], arguments::Dict)
    describe_fleet_capacity([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeFleetCapacity", arguments::Dict)
    gamelift([::AWSConfig], "DescribeFleetCapacity", <keyword arguments>)

# DescribeFleetCapacity Operation

Retrieves the current status of fleet capacity for one or more fleets. This information includes the number of instances that have been requested for the fleet and the number currently active. You can request capacity for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a [FleetCapacity](@ref) object is returned for each requested fleet ID. When specifying a list of fleet IDs, attribute objects are returned only for fleets that currently exist.

**Note**
> Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetIds = [::String, ...]`
Unique identifier for a fleet(s) to retrieve capacity information for. To request capacity information for all fleets, leave this parameter empty.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.




# Returns

`DescribeFleetCapacityOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetCapacity)
"""
@inline describe_fleet_capacity(aws::AWSConfig=default_aws_config(); args...) = describe_fleet_capacity(aws, args)

@inline describe_fleet_capacity(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeFleetCapacity", args)

@inline describe_fleet_capacity(args) = describe_fleet_capacity(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_fleet_events
    describe_fleet_events([::AWSConfig], arguments::Dict)
    describe_fleet_events([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeFleetEvents", arguments::Dict)
    gamelift([::AWSConfig], "DescribeFleetEvents", FleetId=, <keyword arguments>)

# DescribeFleetEvents Operation

Retrieves entries from the specified fleet's event log. You can specify a time range to limit the result set. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a collection of event log entries matching the request are returned.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to get event logs for.


## `StartTime = timestamp`
Earliest date to retrieve event logs for. If no start time is specified, this call returns entries starting from when the fleet was created to the specified end time. Format is a number expressed in Unix time as milliseconds (ex: "1469498468.057").


## `EndTime = timestamp`
Most recent date to retrieve event logs for. If no end time is specified, this call returns entries from the specified start time up to the present. Format is a number expressed in Unix time as milliseconds (ex: "1469498468.057").


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`DescribeFleetEventsOutput`

# Exceptions

`NotFoundException`, `InternalServiceException`, `UnauthorizedException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetEvents)
"""
@inline describe_fleet_events(aws::AWSConfig=default_aws_config(); args...) = describe_fleet_events(aws, args)

@inline describe_fleet_events(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeFleetEvents", args)

@inline describe_fleet_events(args) = describe_fleet_events(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_fleet_port_settings
    describe_fleet_port_settings([::AWSConfig], arguments::Dict)
    describe_fleet_port_settings([::AWSConfig]; FleetId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeFleetPortSettings", arguments::Dict)
    gamelift([::AWSConfig], "DescribeFleetPortSettings", FleetId=)

# DescribeFleetPortSettings Operation

Retrieves the inbound connection permissions for a fleet. Connection permissions include a range of IP addresses and port settings that incoming traffic can use to access server processes in the fleet. To get a fleet's inbound connection permissions, specify a fleet ID. If successful, a collection of [IpPermission](@ref) objects is returned for the requested fleet ID. If the requested fleet has been deleted, the result set is empty.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to retrieve port settings for.




# Returns

`DescribeFleetPortSettingsOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetPortSettings)
"""
@inline describe_fleet_port_settings(aws::AWSConfig=default_aws_config(); args...) = describe_fleet_port_settings(aws, args)

@inline describe_fleet_port_settings(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeFleetPortSettings", args)

@inline describe_fleet_port_settings(args) = describe_fleet_port_settings(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_fleet_utilization
    describe_fleet_utilization([::AWSConfig], arguments::Dict)
    describe_fleet_utilization([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeFleetUtilization", arguments::Dict)
    gamelift([::AWSConfig], "DescribeFleetUtilization", <keyword arguments>)

# DescribeFleetUtilization Operation

Retrieves utilization statistics for one or more fleets. You can request utilization data for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a [FleetUtilization](@ref) object is returned for each requested fleet ID. When specifying a list of fleet IDs, utilization objects are returned only for fleets that currently exist.

**Note**
> Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetIds = [::String, ...]`
Unique identifier for a fleet(s) to retrieve utilization data for. To request utilization data for all fleets, leave this parameter empty.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.




# Returns

`DescribeFleetUtilizationOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetUtilization)
"""
@inline describe_fleet_utilization(aws::AWSConfig=default_aws_config(); args...) = describe_fleet_utilization(aws, args)

@inline describe_fleet_utilization(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeFleetUtilization", args)

@inline describe_fleet_utilization(args) = describe_fleet_utilization(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_game_session_details
    describe_game_session_details([::AWSConfig], arguments::Dict)
    describe_game_session_details([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeGameSessionDetails", arguments::Dict)
    gamelift([::AWSConfig], "DescribeGameSessionDetails", <keyword arguments>)

# DescribeGameSessionDetails Operation

Retrieves properties, including the protection policy in force, for one or more game sessions. This action can be used in several ways: (1) provide a `GameSessionId` or `GameSessionArn` to request details for a specific game session; (2) provide either a `FleetId` or an `AliasId` to request properties for all game sessions running on a fleet.

To get game session record(s), specify just one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a [GameSessionDetail](@ref) object is returned for each session matching the request.

Game-session-related operations include:

*   [CreateGameSession](@ref)

*   [DescribeGameSessions](@ref)

*   [DescribeGameSessionDetails](@ref)

*   [SearchGameSessions](@ref)

*   [UpdateGameSession](@ref)

*   [GetGameSessionLogUrl](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `FleetId = ::String`
Unique identifier for a fleet to retrieve all game sessions active on the fleet.


## `GameSessionId = ::String`
Unique identifier for the game session to retrieve.


## `AliasId = ::String`
Unique identifier for an alias associated with the fleet to retrieve all game sessions for.


## `StatusFilter = ::String`
Game session status to filter results on. Possible game session statuses include `ACTIVE`, `TERMINATED`, `ACTIVATING` and `TERMINATING` (the last two are transitory).


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`DescribeGameSessionDetailsOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `InvalidRequestException`, `UnauthorizedException` or `TerminalRoutingStrategyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionDetails)
"""
@inline describe_game_session_details(aws::AWSConfig=default_aws_config(); args...) = describe_game_session_details(aws, args)

@inline describe_game_session_details(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeGameSessionDetails", args)

@inline describe_game_session_details(args) = describe_game_session_details(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_game_session_placement
    describe_game_session_placement([::AWSConfig], arguments::Dict)
    describe_game_session_placement([::AWSConfig]; PlacementId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeGameSessionPlacement", arguments::Dict)
    gamelift([::AWSConfig], "DescribeGameSessionPlacement", PlacementId=)

# DescribeGameSessionPlacement Operation

Retrieves properties and current status of a game session placement request. To get game session placement details, specify the placement ID. If successful, a [GameSessionPlacement](@ref) object is returned.

Game-session-related operations include:

*   [CreateGameSession](@ref)

*   [DescribeGameSessions](@ref)

*   [DescribeGameSessionDetails](@ref)

*   [SearchGameSessions](@ref)

*   [UpdateGameSession](@ref)

*   [GetGameSessionLogUrl](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `PlacementId = ::String` -- *Required*
Unique identifier for a game session placement to retrieve.




# Returns

`DescribeGameSessionPlacementOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `NotFoundException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionPlacement)
"""
@inline describe_game_session_placement(aws::AWSConfig=default_aws_config(); args...) = describe_game_session_placement(aws, args)

@inline describe_game_session_placement(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeGameSessionPlacement", args)

@inline describe_game_session_placement(args) = describe_game_session_placement(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_game_session_queues
    describe_game_session_queues([::AWSConfig], arguments::Dict)
    describe_game_session_queues([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeGameSessionQueues", arguments::Dict)
    gamelift([::AWSConfig], "DescribeGameSessionQueues", <keyword arguments>)

# DescribeGameSessionQueues Operation

Retrieves the properties for one or more game session queues. When requesting multiple queues, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a [GameSessionQueue](@ref) object is returned for each requested queue. When specifying a list of queues, objects are returned only for queues that currently exist in the region.

Queue-related operations include:

*   [CreateGameSessionQueue](@ref)

*   [DescribeGameSessionQueues](@ref)

*   [UpdateGameSessionQueue](@ref)

*   [DeleteGameSessionQueue](@ref)

# Arguments

## `Names = [::String, ...]`
List of queue names to retrieve information for. To request settings for all queues, leave this parameter empty.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`DescribeGameSessionQueuesOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `NotFoundException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionQueues)
"""
@inline describe_game_session_queues(aws::AWSConfig=default_aws_config(); args...) = describe_game_session_queues(aws, args)

@inline describe_game_session_queues(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeGameSessionQueues", args)

@inline describe_game_session_queues(args) = describe_game_session_queues(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_game_sessions
    describe_game_sessions([::AWSConfig], arguments::Dict)
    describe_game_sessions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeGameSessions", arguments::Dict)
    gamelift([::AWSConfig], "DescribeGameSessions", <keyword arguments>)

# DescribeGameSessions Operation

Retrieves a set of one or more game sessions. Request a specific game session or request all game sessions on a fleet. Alternatively, use [SearchGameSessions](@ref) to request a set of active game sessions that are filtered by certain criteria. To retrieve protection policy settings for game sessions, use [DescribeGameSessionDetails](@ref).

To get game sessions, specify one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a [GameSession](@ref) object is returned for each game session matching the request.

*Available in Amazon GameLift Local.*

Game-session-related operations include:

*   [CreateGameSession](@ref)

*   [DescribeGameSessions](@ref)

*   [DescribeGameSessionDetails](@ref)

*   [SearchGameSessions](@ref)

*   [UpdateGameSession](@ref)

*   [GetGameSessionLogUrl](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `FleetId = ::String`
Unique identifier for a fleet to retrieve all game sessions for.


## `GameSessionId = ::String`
Unique identifier for the game session to retrieve. You can use either a `GameSessionId` or `GameSessionArn` value.


## `AliasId = ::String`
Unique identifier for an alias associated with the fleet to retrieve all game sessions for.


## `StatusFilter = ::String`
Game session status to filter results on. Possible game session statuses include `ACTIVE`, `TERMINATED`, `ACTIVATING`, and `TERMINATING` (the last two are transitory).


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`DescribeGameSessionsOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `InvalidRequestException`, `UnauthorizedException` or `TerminalRoutingStrategyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessions)
"""
@inline describe_game_sessions(aws::AWSConfig=default_aws_config(); args...) = describe_game_sessions(aws, args)

@inline describe_game_sessions(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeGameSessions", args)

@inline describe_game_sessions(args) = describe_game_sessions(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_instances
    describe_instances([::AWSConfig], arguments::Dict)
    describe_instances([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeInstances", arguments::Dict)
    gamelift([::AWSConfig], "DescribeInstances", FleetId=, <keyword arguments>)

# DescribeInstances Operation

Retrieves information about a fleet's instances, including instance IDs. Use this action to get details on all instances in the fleet or get details on one specific instance.

To get a specific instance, specify fleet ID and instance ID. To get all instances in a fleet, specify a fleet ID only. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, an [Instance](@ref) object is returned for each result.

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to retrieve instance information for.


## `InstanceId = ::String`
Unique identifier for an instance to retrieve. Specify an instance ID or leave blank to retrieve all instances in the fleet.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`DescribeInstancesOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeInstances)
"""
@inline describe_instances(aws::AWSConfig=default_aws_config(); args...) = describe_instances(aws, args)

@inline describe_instances(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeInstances", args)

@inline describe_instances(args) = describe_instances(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_matchmaking
    describe_matchmaking([::AWSConfig], arguments::Dict)
    describe_matchmaking([::AWSConfig]; TicketIds=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeMatchmaking", arguments::Dict)
    gamelift([::AWSConfig], "DescribeMatchmaking", TicketIds=)

# DescribeMatchmaking Operation

Retrieves one or more matchmaking tickets. Use this operation to retrieve ticket information, including status and--once a successful match is made--acquire connection information for the resulting new game session.

You can use this operation to track the progress of matchmaking requests (through polling) as an alternative to using event notifications. See more details on tracking matchmaking requests through polling or notifications in [StartMatchmaking](@ref).

To request matchmaking tickets, provide a list of up to 10 ticket IDs. If the request is successful, a ticket object is returned for each requested ID that currently exists.

Matchmaking-related operations include:

*   [StartMatchmaking](@ref)

*   [DescribeMatchmaking](@ref)

*   [StopMatchmaking](@ref)

*   [AcceptMatch](@ref)

*   [StartMatchBackfill](@ref)

# Arguments

## `TicketIds = [::String, ...]` -- *Required*
Unique identifier for a matchmaking ticket. You can include up to 10 ID values.




# Returns

`DescribeMatchmakingOutput`

# Exceptions

`InvalidRequestException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmaking)
"""
@inline describe_matchmaking(aws::AWSConfig=default_aws_config(); args...) = describe_matchmaking(aws, args)

@inline describe_matchmaking(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeMatchmaking", args)

@inline describe_matchmaking(args) = describe_matchmaking(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_matchmaking_configurations
    describe_matchmaking_configurations([::AWSConfig], arguments::Dict)
    describe_matchmaking_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeMatchmakingConfigurations", arguments::Dict)
    gamelift([::AWSConfig], "DescribeMatchmakingConfigurations", <keyword arguments>)

# DescribeMatchmakingConfigurations Operation

Retrieves the details of FlexMatch matchmaking configurations. with this operation, you have the following options: (1) retrieve all existing configurations, (2) provide the names of one or more configurations to retrieve, or (3) retrieve all configurations that use a specified rule set name. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a configuration is returned for each requested name. When specifying a list of names, only configurations that currently exist are returned.

Operations related to match configurations and rule sets include:

*   [CreateMatchmakingConfiguration](@ref)

*   [DescribeMatchmakingConfigurations](@ref)

*   [UpdateMatchmakingConfiguration](@ref)

*   [DeleteMatchmakingConfiguration](@ref)

*   [CreateMatchmakingRuleSet](@ref)

*   [DescribeMatchmakingRuleSets](@ref)

*   [ValidateMatchmakingRuleSet](@ref)

# Arguments

## `Names = [::String, ...]`
Unique identifier for a matchmaking configuration(s) to retrieve. To request all existing configurations, leave this parameter empty.


## `RuleSetName = ::String`
Unique identifier for a matchmaking rule set. Use this parameter to retrieve all matchmaking configurations that use this rule set.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. This parameter is limited to 10.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`DescribeMatchmakingConfigurationsOutput`

# Exceptions

`InvalidRequestException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingConfigurations)
"""
@inline describe_matchmaking_configurations(aws::AWSConfig=default_aws_config(); args...) = describe_matchmaking_configurations(aws, args)

@inline describe_matchmaking_configurations(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeMatchmakingConfigurations", args)

@inline describe_matchmaking_configurations(args) = describe_matchmaking_configurations(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_matchmaking_rule_sets
    describe_matchmaking_rule_sets([::AWSConfig], arguments::Dict)
    describe_matchmaking_rule_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeMatchmakingRuleSets", arguments::Dict)
    gamelift([::AWSConfig], "DescribeMatchmakingRuleSets", <keyword arguments>)

# DescribeMatchmakingRuleSets Operation

Retrieves the details for FlexMatch matchmaking rule sets. You can request all existing rule sets for the region, or provide a list of one or more rule set names. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a rule set is returned for each requested name.

Operations related to match configurations and rule sets include:

*   [CreateMatchmakingConfiguration](@ref)

*   [DescribeMatchmakingConfigurations](@ref)

*   [UpdateMatchmakingConfiguration](@ref)

*   [DeleteMatchmakingConfiguration](@ref)

*   [CreateMatchmakingRuleSet](@ref)

*   [DescribeMatchmakingRuleSets](@ref)

*   [ValidateMatchmakingRuleSet](@ref)

# Arguments

## `Names = [::String, ...]`
Unique identifier for a matchmaking rule set. This name is used to identify the rule set associated with a matchmaking configuration.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`DescribeMatchmakingRuleSetsOutput`

# Exceptions

`InvalidRequestException`, `InternalServiceException`, `NotFoundException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingRuleSets)
"""
@inline describe_matchmaking_rule_sets(aws::AWSConfig=default_aws_config(); args...) = describe_matchmaking_rule_sets(aws, args)

@inline describe_matchmaking_rule_sets(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeMatchmakingRuleSets", args)

@inline describe_matchmaking_rule_sets(args) = describe_matchmaking_rule_sets(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_player_sessions
    describe_player_sessions([::AWSConfig], arguments::Dict)
    describe_player_sessions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribePlayerSessions", arguments::Dict)
    gamelift([::AWSConfig], "DescribePlayerSessions", <keyword arguments>)

# DescribePlayerSessions Operation

Retrieves properties for one or more player sessions. This action can be used in several ways: (1) provide a `PlayerSessionId` to request properties for a specific player session; (2) provide a `GameSessionId` to request properties for all player sessions in the specified game session; (3) provide a `PlayerId` to request properties for all player sessions of a specified player.

To get game session record(s), specify only one of the following: a player session ID, a game session ID, or a player ID. You can filter this request by player session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a [PlayerSession](@ref) object is returned for each session matching the request.

*Available in Amazon GameLift Local.*

Player-session-related operations include:

*   [CreatePlayerSession](@ref)

*   [CreatePlayerSessions](@ref)

*   [DescribePlayerSessions](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `GameSessionId = ::String`
Unique identifier for the game session to retrieve player sessions for.


## `PlayerId = ::String`
Unique identifier for a player to retrieve player sessions for.


## `PlayerSessionId = ::String`
Unique identifier for a player session to retrieve.


## `PlayerSessionStatusFilter = ::String`
Player session status to filter results on.

Possible player session statuses include the following:

*   **RESERVED** -- The player session request has been received, but the player has not yet connected to the server process and/or been validated.

*   **ACTIVE** -- The player has been validated by the server process and is currently connected.

*   **COMPLETED** -- The player connection has been dropped.

*   **TIMEDOUT** -- A player session request was received, but the player did not connect and/or was not validated within the timeout limit (60 seconds).


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.




# Returns

`DescribePlayerSessionsOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribePlayerSessions)
"""
@inline describe_player_sessions(aws::AWSConfig=default_aws_config(); args...) = describe_player_sessions(aws, args)

@inline describe_player_sessions(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribePlayerSessions", args)

@inline describe_player_sessions(args) = describe_player_sessions(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_runtime_configuration
    describe_runtime_configuration([::AWSConfig], arguments::Dict)
    describe_runtime_configuration([::AWSConfig]; FleetId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeRuntimeConfiguration", arguments::Dict)
    gamelift([::AWSConfig], "DescribeRuntimeConfiguration", FleetId=)

# DescribeRuntimeConfiguration Operation

Retrieves the current run-time configuration for the specified fleet. The run-time configuration tells Amazon GameLift how to launch server processes on instances in the fleet.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to get the run-time configuration for.




# Returns

`DescribeRuntimeConfigurationOutput`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `InternalServiceException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeRuntimeConfiguration)
"""
@inline describe_runtime_configuration(aws::AWSConfig=default_aws_config(); args...) = describe_runtime_configuration(aws, args)

@inline describe_runtime_configuration(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeRuntimeConfiguration", args)

@inline describe_runtime_configuration(args) = describe_runtime_configuration(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_scaling_policies
    describe_scaling_policies([::AWSConfig], arguments::Dict)
    describe_scaling_policies([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeScalingPolicies", arguments::Dict)
    gamelift([::AWSConfig], "DescribeScalingPolicies", FleetId=, <keyword arguments>)

# DescribeScalingPolicies Operation

Retrieves all scaling policies applied to a fleet.

To get a fleet's scaling policies, specify the fleet ID. You can filter this request by policy status, such as to retrieve only active scaling policies. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, set of [ScalingPolicy](@ref) objects is returned for the fleet.

A fleet may have all of its scaling policies suspended ([StopFleetActions](@ref)). This action does not affect the status of the scaling policies, which remains ACTIVE. To see whether a fleet's scaling policies are in force or suspended, call [DescribeFleetAttributes](@ref) and check the stopped actions.

Operations related to fleet capacity scaling include:

*   [DescribeFleetCapacity](@ref)

*   [UpdateFleetCapacity](@ref)

*   [DescribeEC2InstanceLimits](@ref)

*   Manage scaling policies:

    *   [PutScalingPolicy](@ref) (auto-scaling)

    *   [DescribeScalingPolicies](@ref) (auto-scaling)

    *   [DeleteScalingPolicy](@ref) (auto-scaling)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to retrieve scaling policies for.


## `StatusFilter = "ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED" or "ERROR"`
Scaling policy status to filter results on. A scaling policy is only in force when in an `ACTIVE` status.

*   **ACTIVE** -- The scaling policy is currently in force.

*   **UPDATEREQUESTED** -- A request to update the scaling policy has been received.

*   **UPDATING** -- A change is being made to the scaling policy.

*   **DELETEREQUESTED** -- A request to delete the scaling policy has been received.

*   **DELETING** -- The scaling policy is being deleted.

*   **DELETED** -- The scaling policy has been deleted.

*   **ERROR** -- An error occurred in creating the policy. It should be removed and recreated.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`DescribeScalingPoliciesOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `UnauthorizedException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScalingPolicies)
"""
@inline describe_scaling_policies(aws::AWSConfig=default_aws_config(); args...) = describe_scaling_policies(aws, args)

@inline describe_scaling_policies(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeScalingPolicies", args)

@inline describe_scaling_policies(args) = describe_scaling_policies(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_vpc_peering_authorizations
    describe_vpc_peering_authorizations([::AWSConfig], arguments::Dict)
    describe_vpc_peering_authorizations([::AWSConfig]; )

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeVpcPeeringAuthorizations", arguments::Dict)
    gamelift([::AWSConfig], "DescribeVpcPeeringAuthorizations", )

# DescribeVpcPeeringAuthorizations Operation

Retrieves valid VPC peering authorizations that are pending for the AWS account. This operation returns all VPC peering authorizations and requests for peering. This includes those initiated and received by this account.

VPC peering connection operations include:

*   [CreateVpcPeeringAuthorization](@ref)

*   [DescribeVpcPeeringAuthorizations](@ref)

*   [DeleteVpcPeeringAuthorization](@ref)

*   [CreateVpcPeeringConnection](@ref)

*   [DescribeVpcPeeringConnections](@ref)

*   [DeleteVpcPeeringConnection](@ref)

# Arguments



# Returns

`DescribeVpcPeeringAuthorizationsOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringAuthorizations)
"""
@inline describe_vpc_peering_authorizations(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_peering_authorizations(aws, args)

@inline describe_vpc_peering_authorizations(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeVpcPeeringAuthorizations", args)

@inline describe_vpc_peering_authorizations(args) = describe_vpc_peering_authorizations(default_aws_config(), args)


"""
    using AWSSDK.GameLift.describe_vpc_peering_connections
    describe_vpc_peering_connections([::AWSConfig], arguments::Dict)
    describe_vpc_peering_connections([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeVpcPeeringConnections", arguments::Dict)
    gamelift([::AWSConfig], "DescribeVpcPeeringConnections", <keyword arguments>)

# DescribeVpcPeeringConnections Operation

Retrieves information on VPC peering connections. Use this operation to get peering information for all fleets or for one specific fleet ID.

To retrieve connection information, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Specify a fleet ID or leave the parameter empty to retrieve all connection records. If successful, the retrieved information includes both active and pending connections. Active connections identify the IpV4 CIDR block that the VPC uses to connect.

VPC peering connection operations include:

*   [CreateVpcPeeringAuthorization](@ref)

*   [DescribeVpcPeeringAuthorizations](@ref)

*   [DeleteVpcPeeringAuthorization](@ref)

*   [CreateVpcPeeringConnection](@ref)

*   [DescribeVpcPeeringConnections](@ref)

*   [DeleteVpcPeeringConnection](@ref)

# Arguments

## `FleetId = ::String`
Unique identifier for a fleet.




# Returns

`DescribeVpcPeeringConnectionsOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringConnections)
"""
@inline describe_vpc_peering_connections(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_peering_connections(aws, args)

@inline describe_vpc_peering_connections(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "DescribeVpcPeeringConnections", args)

@inline describe_vpc_peering_connections(args) = describe_vpc_peering_connections(default_aws_config(), args)


"""
    using AWSSDK.GameLift.get_game_session_log_url
    get_game_session_log_url([::AWSConfig], arguments::Dict)
    get_game_session_log_url([::AWSConfig]; GameSessionId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "GetGameSessionLogUrl", arguments::Dict)
    gamelift([::AWSConfig], "GetGameSessionLogUrl", GameSessionId=)

# GetGameSessionLogUrl Operation

Retrieves the location of stored game session logs for a specified game session. When a game session is terminated, Amazon GameLift automatically stores the logs in Amazon S3 and retains them for 14 days. Use this URL to download the logs.

**Note**
> See the [AWS Service Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift) page for maximum log file sizes. Log files that exceed this limit are not saved.

Game-session-related operations include:

*   [CreateGameSession](@ref)

*   [DescribeGameSessions](@ref)

*   [DescribeGameSessionDetails](@ref)

*   [SearchGameSessions](@ref)

*   [UpdateGameSession](@ref)

*   [GetGameSessionLogUrl](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `GameSessionId = ::String` -- *Required*
Unique identifier for the game session to get logs for.




# Returns

`GetGameSessionLogUrlOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `UnauthorizedException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetGameSessionLogUrl)
"""
@inline get_game_session_log_url(aws::AWSConfig=default_aws_config(); args...) = get_game_session_log_url(aws, args)

@inline get_game_session_log_url(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "GetGameSessionLogUrl", args)

@inline get_game_session_log_url(args) = get_game_session_log_url(default_aws_config(), args)


"""
    using AWSSDK.GameLift.get_instance_access
    get_instance_access([::AWSConfig], arguments::Dict)
    get_instance_access([::AWSConfig]; FleetId=, InstanceId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "GetInstanceAccess", arguments::Dict)
    gamelift([::AWSConfig], "GetInstanceAccess", FleetId=, InstanceId=)

# GetInstanceAccess Operation

Requests remote access to a fleet instance. Remote access is useful for debugging, gathering benchmarking data, or watching activity in real time.

Access requires credentials that match the operating system of the instance. For a Windows instance, Amazon GameLift returns a user name and password as strings for use with a Windows Remote Desktop client. For a Linux instance, Amazon GameLift returns a user name and RSA private key, also as strings, for use with an SSH client. The private key must be saved in the proper format to a `.pem` file before using. If you're making this request using the AWS CLI, saving the secret can be handled as part of the GetInstanceAccess request. (See the example later in this topic). For more information on remote access, see [Remotely Accessing an Instance](http://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html).

To request access to a specific instance, specify the IDs of the instance and the fleet it belongs to. If successful, an [InstanceAccess](@ref) object is returned containing the instance's IP address and a set of credentials.

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet that contains the instance you want access to. The fleet can be in any of the following statuses: `ACTIVATING`, `ACTIVE`, or `ERROR`. Fleets with an `ERROR` status may be accessible for a short time before they are deleted.


## `InstanceId = ::String` -- *Required*
Unique identifier for an instance you want to get access to. You can access an instance in any status.




# Returns

`GetInstanceAccessOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetInstanceAccess)
"""
@inline get_instance_access(aws::AWSConfig=default_aws_config(); args...) = get_instance_access(aws, args)

@inline get_instance_access(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "GetInstanceAccess", args)

@inline get_instance_access(args) = get_instance_access(default_aws_config(), args)


"""
    using AWSSDK.GameLift.list_aliases
    list_aliases([::AWSConfig], arguments::Dict)
    list_aliases([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "ListAliases", arguments::Dict)
    gamelift([::AWSConfig], "ListAliases", <keyword arguments>)

# ListAliases Operation

Retrieves all aliases for this AWS account. You can filter the result set by alias name and/or routing strategy type. Use the pagination parameters to retrieve results in sequential pages.

**Note**
> Returned aliases are not listed in any particular order.

Alias-related operations include:

*   [CreateAlias](@ref)

*   [ListAliases](@ref)

*   [DescribeAlias](@ref)

*   [UpdateAlias](@ref)

*   [DeleteAlias](@ref)

*   [ResolveAlias](@ref)

# Arguments

## `RoutingStrategyType = "SIMPLE" or "TERMINAL"`
Type of routing to filter results on. Use this parameter to retrieve only aliases of a certain type. To retrieve all aliases, leave this parameter empty.

Possible routing types include the following:

*   **SIMPLE** -- The alias resolves to one specific fleet. Use this type when routing to active fleets.

*   **TERMINAL** -- The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the [RoutingStrategy](@ref) message embedded.


## `Name = ::String`
Descriptive label that is associated with an alias. Alias names do not need to be unique.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`ListAliasesOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListAliases)
"""
@inline list_aliases(aws::AWSConfig=default_aws_config(); args...) = list_aliases(aws, args)

@inline list_aliases(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "ListAliases", args)

@inline list_aliases(args) = list_aliases(default_aws_config(), args)


"""
    using AWSSDK.GameLift.list_builds
    list_builds([::AWSConfig], arguments::Dict)
    list_builds([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "ListBuilds", arguments::Dict)
    gamelift([::AWSConfig], "ListBuilds", <keyword arguments>)

# ListBuilds Operation

Retrieves build records for all builds associated with the AWS account in use. You can limit results to builds that are in a specific status by using the `Status` parameter. Use the pagination parameters to retrieve results in a set of sequential pages.

**Note**
> Build records are not listed in any particular order.

Build-related operations include:

*   [CreateBuild](@ref)

*   [ListBuilds](@ref)

*   [DescribeBuild](@ref)

*   [UpdateBuild](@ref)

*   [DeleteBuild](@ref)

# Arguments

## `Status = "INITIALIZED", "READY" or "FAILED"`
Build status to filter results by. To retrieve all builds, leave this parameter empty.

Possible build statuses include the following:

*   **INITIALIZED** -- A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value.

*   **READY** -- The game build has been successfully uploaded. You can now create new fleets for this build.

*   **FAILED** -- The game build upload failed. You cannot create new fleets for this build.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`ListBuildsOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListBuilds)
"""
@inline list_builds(aws::AWSConfig=default_aws_config(); args...) = list_builds(aws, args)

@inline list_builds(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "ListBuilds", args)

@inline list_builds(args) = list_builds(default_aws_config(), args)


"""
    using AWSSDK.GameLift.list_fleets
    list_fleets([::AWSConfig], arguments::Dict)
    list_fleets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "ListFleets", arguments::Dict)
    gamelift([::AWSConfig], "ListFleets", <keyword arguments>)

# ListFleets Operation

Retrieves a collection of fleet records for this AWS account. You can filter the result set by build ID. Use the pagination parameters to retrieve results in sequential pages.

**Note**
> Fleet records are not listed in any particular order.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `BuildId = ::String`
Unique identifier for a build to return fleets for. Use this parameter to return only fleets using the specified build. To retrieve all fleets, leave this parameter empty.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`ListFleetsOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleets)
"""
@inline list_fleets(aws::AWSConfig=default_aws_config(); args...) = list_fleets(aws, args)

@inline list_fleets(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "ListFleets", args)

@inline list_fleets(args) = list_fleets(default_aws_config(), args)


"""
    using AWSSDK.GameLift.put_scaling_policy
    put_scaling_policy([::AWSConfig], arguments::Dict)
    put_scaling_policy([::AWSConfig]; Name=, FleetId=, MetricName=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "PutScalingPolicy", arguments::Dict)
    gamelift([::AWSConfig], "PutScalingPolicy", Name=, FleetId=, MetricName=, <keyword arguments>)

# PutScalingPolicy Operation

Creates or updates a scaling policy for a fleet. Scaling policies are used to automatically scale a fleet's hosting capacity to meet player demand. An active scaling policy instructs Amazon GameLift to track a fleet metric and automatically change the fleet's capacity when a certain threshold is reached. There are two types of scaling policies: target-based and rule-based. Use a target-based policy to quickly and efficiently manage fleet scaling; this option is the most commonly used. Use rule-based policies when you need to exert fine-grained control over auto-scaling.

Fleets can have multiple scaling policies of each type in force at the same time; you can have one target-based policy, one or multiple rule-based scaling policies, or both. We recommend caution, however, because multiple auto-scaling policies can have unintended consequences.

You can temporarily suspend all scaling policies for a fleet by calling [StopFleetActions](@ref) with the fleet action AUTO_SCALING. To resume scaling policies, call [StartFleetActions](@ref) with the same fleet action. To stop just one scaling policy--or to permanently remove it, you must delete the policy with [DeleteScalingPolicy](@ref).

Learn more about how to work with auto-scaling in [Set Up Fleet Automatic Scaling](http://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html).

**Target-based policy**

A target-based policy tracks a single metric: PercentAvailableGameSessions. This metric tells us how much of a fleet's hosting capacity is ready to host game sessions but is not currently in use. This is the fleet's buffer; it measures the additional player demand that the fleet could handle at current capacity. With a target-based policy, you set your ideal buffer size and leave it to Amazon GameLift to take whatever action is needed to maintain that target.

For example, you might choose to maintain a 10% buffer for a fleet that has the capacity to host 100 simultaneous game sessions. This policy tells Amazon GameLift to take action whenever the fleet's available capacity falls below or rises above 10 game sessions. Amazon GameLift will start new instances or stop unused instances in order to return to the 10% buffer.

To create or update a target-based policy, specify a fleet ID and name, and set the policy type to "TargetBased". Specify the metric to track (PercentAvailableGameSessions) and reference a [TargetConfiguration](@ref) object with your desired buffer value. Exclude all other parameters. On a successful request, the policy name is returned. The scaling policy is automatically in force as soon as it's successfully created. If the fleet's auto-scaling actions are temporarily suspended, the new policy will be in force once the fleet actions are restarted.

**Rule-based policy**

A rule-based policy tracks specified fleet metric, sets a threshold value, and specifies the type of action to initiate when triggered. With a rule-based policy, you can select from several available fleet metrics. Each policy specifies whether to scale up or scale down (and by how much), so you need one policy for each type of action.

For example, a policy may make the following statement: "If the percentage of idle instances is greater than 20% for more than 15 minutes, then reduce the fleet capacity by 10%."

A policy's rule statement has the following structure:

If `[MetricName]` is `[ComparisonOperator]` `[Threshold]` for `[EvaluationPeriods]` minutes, then `[ScalingAdjustmentType]` to/by `[ScalingAdjustment]`.

To implement the example, the rule statement would look like this:

If `[PercentIdleInstances]` is `[GreaterThanThreshold]` `[20]` for `[15]` minutes, then `[PercentChangeInCapacity]` to/by `[10]`.

To create or update a scaling policy, specify a unique combination of name and fleet ID, and set the policy type to "RuleBased". Specify the parameter values for a policy rule statement. On a successful request, the policy name is returned. Scaling policies are automatically in force as soon as they're successfully created. If the fleet's auto-scaling actions are temporarily suspended, the new policy will be in force once the fleet actions are restarted.

Operations related to fleet capacity scaling include:

*   [DescribeFleetCapacity](@ref)

*   [UpdateFleetCapacity](@ref)

*   [DescribeEC2InstanceLimits](@ref)

*   Manage scaling policies:

    *   [PutScalingPolicy](@ref) (auto-scaling)

    *   [DescribeScalingPolicies](@ref) (auto-scaling)

    *   [DeleteScalingPolicy](@ref) (auto-scaling)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `Name = ::String` -- *Required*
Descriptive label that is associated with a scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.


## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to apply this policy to. The fleet cannot be in any of the following statuses: ERROR or DELETING.


## `ScalingAdjustment = ::Int`
Amount of adjustment to make, based on the scaling adjustment type.


## `ScalingAdjustmentType = "ChangeInCapacity", "ExactCapacity" or "PercentChangeInCapacity"`
Type of adjustment to make to a fleet's instance count (see [FleetCapacity](@ref)):

*   **ChangeInCapacity** -- add (or subtract) the scaling adjustment value from the current instance count. Positive values scale up while negative values scale down.

*   **ExactCapacity** -- set the instance count to the scaling adjustment value.

*   **PercentChangeInCapacity** -- increase or reduce the current instance count by the scaling adjustment, read as a percentage. Positive values scale up while negative values scale down; for example, a value of "-10" scales the fleet down by 10%.


## `Threshold = double`
Metric value used to trigger a scaling event.


## `ComparisonOperator = "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold" or "LessThanOrEqualToThreshold"`
Comparison operator to use when measuring the metric against the threshold value.


## `EvaluationPeriods = ::Int`
Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.


## `MetricName = "ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth" or "WaitTime"` -- *Required*
Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment. For detailed descriptions of fleet metrics, see [Monitor Amazon GameLift with Amazon CloudWatch](http://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html).

*   **ActivatingGameSessions** -- Game sessions in the process of being created.

*   **ActiveGameSessions** -- Game sessions that are currently running.

*   **ActiveInstances** -- Fleet instances that are currently running at least one game session.

*   **AvailableGameSessions** -- Additional game sessions that fleet could host simultaneously, given current capacity.

*   **AvailablePlayerSessions** -- Empty player slots in currently active game sessions. This includes game sessions that are not currently accepting players. Reserved player slots are not included.

*   **CurrentPlayerSessions** -- Player slots in active game sessions that are being used by a player or are reserved for a player.

*   **IdleInstances** -- Active instances that are currently hosting zero game sessions.

*   **PercentAvailableGameSessions** -- Unused percentage of the total number of game sessions that a fleet could host simultaneously, given current capacity. Use this metric for a target-based scaling policy.

*   **PercentIdleInstances** -- Percentage of the total number of active instances that are hosting zero game sessions.

*   **QueueDepth** -- Pending game session placement requests, in any queue, where the current fleet is the top-priority destination.

*   **WaitTime** -- Current wait time for pending game session placement requests, in any queue, where the current fleet is the top-priority destination.


## `PolicyType = "RuleBased" or "TargetBased"`
Type of scaling policy to create. For a target-based policy, set the parameter *MetricName* to 'PercentAvailableGameSessions' and specify a *TargetConfiguration*. For a rule-based policy set the following parameters: *MetricName*, *ComparisonOperator*, *Threshold*, *EvaluationPeriods*, *ScalingAdjustmentType*, and *ScalingAdjustment*.


## `TargetConfiguration = ["TargetValue" => <required> double]`
Object that contains settings for a target-based scaling policy.




# Returns

`PutScalingPolicyOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `UnauthorizedException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PutScalingPolicy)
"""
@inline put_scaling_policy(aws::AWSConfig=default_aws_config(); args...) = put_scaling_policy(aws, args)

@inline put_scaling_policy(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "PutScalingPolicy", args)

@inline put_scaling_policy(args) = put_scaling_policy(default_aws_config(), args)


"""
    using AWSSDK.GameLift.request_upload_credentials
    request_upload_credentials([::AWSConfig], arguments::Dict)
    request_upload_credentials([::AWSConfig]; BuildId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "RequestUploadCredentials", arguments::Dict)
    gamelift([::AWSConfig], "RequestUploadCredentials", BuildId=)

# RequestUploadCredentials Operation

Retrieves a fresh set of credentials for use when uploading a new set of game build files to Amazon GameLift's Amazon S3. This is done as part of the build creation process; see [CreateBuild](@ref).

To request new credentials, specify the build ID as returned with an initial `CreateBuild` request. If successful, a new set of credentials are returned, along with the S3 storage location associated with the build ID.

# Arguments

## `BuildId = ::String` -- *Required*
Unique identifier for a build to get credentials for.




# Returns

`RequestUploadCredentialsOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RequestUploadCredentials)
"""
@inline request_upload_credentials(aws::AWSConfig=default_aws_config(); args...) = request_upload_credentials(aws, args)

@inline request_upload_credentials(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "RequestUploadCredentials", args)

@inline request_upload_credentials(args) = request_upload_credentials(default_aws_config(), args)


"""
    using AWSSDK.GameLift.resolve_alias
    resolve_alias([::AWSConfig], arguments::Dict)
    resolve_alias([::AWSConfig]; AliasId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "ResolveAlias", arguments::Dict)
    gamelift([::AWSConfig], "ResolveAlias", AliasId=)

# ResolveAlias Operation

Retrieves the fleet ID that a specified alias is currently pointing to.

Alias-related operations include:

*   [CreateAlias](@ref)

*   [ListAliases](@ref)

*   [DescribeAlias](@ref)

*   [UpdateAlias](@ref)

*   [DeleteAlias](@ref)

*   [ResolveAlias](@ref)

# Arguments

## `AliasId = ::String` -- *Required*
Unique identifier for the alias you want to resolve.




# Returns

`ResolveAliasOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException`, `TerminalRoutingStrategyException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResolveAlias)
"""
@inline resolve_alias(aws::AWSConfig=default_aws_config(); args...) = resolve_alias(aws, args)

@inline resolve_alias(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "ResolveAlias", args)

@inline resolve_alias(args) = resolve_alias(default_aws_config(), args)


"""
    using AWSSDK.GameLift.search_game_sessions
    search_game_sessions([::AWSConfig], arguments::Dict)
    search_game_sessions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "SearchGameSessions", arguments::Dict)
    gamelift([::AWSConfig], "SearchGameSessions", <keyword arguments>)

# SearchGameSessions Operation

Retrieves all active game sessions that match a set of search criteria and sorts them in a specified order. You can search or sort by the following game session attributes:

*   **gameSessionId** -- Unique identifier for the game session. You can use either a `GameSessionId` or `GameSessionArn` value.

*   **gameSessionName** -- Name assigned to a game session. This value is set when requesting a new game session with [CreateGameSession](@ref) or updating with [UpdateGameSession](@ref). Game session names do not need to be unique to a game session.

*   **gameSessionProperties** -- Custom data defined in a game session's `GameProperty` parameter. `GameProperty` values are stored as key:value pairs; the filter expression must indicate the key and a string to search the data values for. For example, to search for game sessions with custom data containing the key:value pair "gameMode:brawl", specify the following: `gameSessionProperties.gameMode = "brawl"`. All custom data values are searched as strings.

*   **maximumSessions** -- Maximum number of player sessions allowed for a game session. This value is set when requesting a new game session with [CreateGameSession](@ref) or updating with [UpdateGameSession](@ref).

*   **creationTimeMillis** -- Value indicating when a game session was created. It is expressed in Unix time as milliseconds.

*   **playerSessionCount** -- Number of players currently connected to a game session. This value changes rapidly as players join the session or drop out.

*   **hasAvailablePlayerSessions** -- Boolean value indicating whether a game session has reached its maximum number of players. It is highly recommended that all search requests include this filter attribute to optimize search performance and return only sessions that players can join.

**Note**
> Returned values for `playerSessionCount` and `hasAvailablePlayerSessions` change quickly as players join sessions and others drop out. Results should be considered a snapshot in time. Be sure to refresh search results often, and handle sessions that fill up before a player can join.

To search or sort, specify either a fleet ID or an alias ID, and provide a search filter expression, a sort expression, or both. If successful, a collection of [GameSession](@ref) objects matching the request is returned. Use the pagination parameters to retrieve results as a set of sequential pages.

You can search for game sessions one fleet at a time only. To find game sessions across multiple fleets, you must search each fleet separately and combine the results. This search feature finds only game sessions that are in `ACTIVE` status. To locate games in statuses other than active, use [DescribeGameSessionDetails](@ref).

Game-session-related operations include:

*   [CreateGameSession](@ref)

*   [DescribeGameSessions](@ref)

*   [DescribeGameSessionDetails](@ref)

*   [SearchGameSessions](@ref)

*   [UpdateGameSession](@ref)

*   [GetGameSessionLogUrl](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `FleetId = ::String`
Unique identifier for a fleet to search for active game sessions. Each request must reference either a fleet ID or alias ID, but not both.


## `AliasId = ::String`
Unique identifier for an alias associated with the fleet to search for active game sessions. Each request must reference either a fleet ID or alias ID, but not both.


## `FilterExpression = ::String`
String containing the search criteria for the session search. If no filter expression is included, the request returns results for all game sessions in the fleet that are in `ACTIVE` status.

A filter expression can contain one or multiple conditions. Each condition consists of the following:

*   **Operand** -- Name of a game session attribute. Valid values are `gameSessionName`, `gameSessionId`, `gameSessionProperties`, `maximumSessions`, `creationTimeMillis`, `playerSessionCount`, `hasAvailablePlayerSessions`.

*   **Comparator** -- Valid comparators are: `=`, `<>`, `<`, `>`, `<=`, `>=`.

*   **Value** -- Value to be searched for. Values may be numbers, boolean values (true/false) or strings depending on the operand. String values are case sensitive and must be enclosed in single quotes. Special characters must be escaped. Boolean and string values can only be used with the comparators `=` and `<>`. For example, the following filter expression searches on `gameSessionName`: "`FilterExpression": "gameSessionName = 'Matt\\\\'s Awesome Game 1'"`.

To chain multiple conditions in a single expression, use the logical keywords `AND`, `OR`, and `NOT` and parentheses as needed. For example: `x AND y AND NOT z`, `NOT (x OR y)`.

Session search evaluates conditions from left to right using the following precedence rules:

1.  `=`, `<>`, `<`, `>`, `<=`, `>=`

2.  Parentheses

3.  NOT

4.  AND

5.  OR

For example, this filter expression retrieves game sessions hosting at least ten players that have an open player slot: `"maximumSessions>=10 AND hasAvailablePlayerSessions=true"`.


## `SortExpression = ::String`
Instructions on how to sort the search results. If no sort expression is included, the request returns results in random order. A sort expression consists of the following elements:

*   **Operand** -- Name of a game session attribute. Valid values are `gameSessionName`, `gameSessionId`, `gameSessionProperties`, `maximumSessions`, `creationTimeMillis`, `playerSessionCount`, `hasAvailablePlayerSessions`.

*   **Order** -- Valid sort orders are `ASC` (ascending) and `DESC` (descending).

For example, this sort expression returns the oldest active sessions first: `"SortExpression": "creationTimeMillis ASC"`. Results with a null value for the sort operand are returned at the end of the list.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set or is set higher than 20.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.




# Returns

`SearchGameSessionsOutput`

# Exceptions

`InternalServiceException`, `NotFoundException`, `InvalidRequestException`, `UnauthorizedException` or `TerminalRoutingStrategyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SearchGameSessions)
"""
@inline search_game_sessions(aws::AWSConfig=default_aws_config(); args...) = search_game_sessions(aws, args)

@inline search_game_sessions(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "SearchGameSessions", args)

@inline search_game_sessions(args) = search_game_sessions(default_aws_config(), args)


"""
    using AWSSDK.GameLift.start_fleet_actions
    start_fleet_actions([::AWSConfig], arguments::Dict)
    start_fleet_actions([::AWSConfig]; FleetId=, Actions=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "StartFleetActions", arguments::Dict)
    gamelift([::AWSConfig], "StartFleetActions", FleetId=, Actions=)

# StartFleetActions Operation

Resumes activity on a fleet that was suspended with [StopFleetActions](@ref). Currently, this operation is used to restart a fleet's auto-scaling activity.

To start fleet actions, specify the fleet ID and the type of actions to restart. When auto-scaling fleet actions are restarted, Amazon GameLift once again initiates scaling events as triggered by the fleet's scaling policies. If actions on the fleet were never stopped, this operation will have no effect. You can view a fleet's stopped actions using [DescribeFleetAttributes](@ref).

Operations related to fleet capacity scaling include:

*   [DescribeFleetCapacity](@ref)

*   [UpdateFleetCapacity](@ref)

*   [DescribeEC2InstanceLimits](@ref)

*   Manage scaling policies:

    *   [PutScalingPolicy](@ref) (auto-scaling)

    *   [DescribeScalingPolicies](@ref) (auto-scaling)

    *   [DeleteScalingPolicy](@ref) (auto-scaling)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet


## `Actions = ["AUTO_SCALING", ...]` -- *Required*
List of actions to restart on the fleet.




# Returns

`StartFleetActionsOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `UnauthorizedException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartFleetActions)
"""
@inline start_fleet_actions(aws::AWSConfig=default_aws_config(); args...) = start_fleet_actions(aws, args)

@inline start_fleet_actions(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "StartFleetActions", args)

@inline start_fleet_actions(args) = start_fleet_actions(default_aws_config(), args)


"""
    using AWSSDK.GameLift.start_game_session_placement
    start_game_session_placement([::AWSConfig], arguments::Dict)
    start_game_session_placement([::AWSConfig]; PlacementId=, GameSessionQueueName=, MaximumPlayerSessionCount=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "StartGameSessionPlacement", arguments::Dict)
    gamelift([::AWSConfig], "StartGameSessionPlacement", PlacementId=, GameSessionQueueName=, MaximumPlayerSessionCount=, <keyword arguments>)

# StartGameSessionPlacement Operation

Places a request for a new game session in a queue (see [CreateGameSessionQueue](@ref)). When processing a placement request, Amazon GameLift searches for available resources on the queue's destinations, scanning each until it finds resources or the placement request times out.

A game session placement request can also request player sessions. When a new game session is successfully created, Amazon GameLift creates a player session for each player included in the request.

When placing a game session, by default Amazon GameLift tries each fleet in the order they are listed in the queue configuration. Ideally, a queue's destinations are listed in preference order.

Alternatively, when requesting a game session with players, you can also provide latency data for each player in relevant regions. Latency data indicates the performance lag a player experiences when connected to a fleet in the region. Amazon GameLift uses latency data to reorder the list of destinations to place the game session in a region with minimal lag. If latency data is provided for multiple players, Amazon GameLift calculates each region's average lag for all players and reorders to get the best game play across all players.

To place a new game session request, specify the following:

*   The queue name and a set of game session properties and settings

*   A unique ID (such as a UUID) for the placement. You use this ID to track the status of the placement request

*   (Optional) A set of IDs and player data for each player you want to join to the new game session

*   Latency data for all players (if you want to optimize game play for the players)

If successful, a new game session placement is created.

To track the status of a placement request, call [DescribeGameSessionPlacement](@ref) and check the request's status. If the status is `FULFILLED`, a new game session has been created and a game session ARN and region are referenced. If the placement request times out, you can resubmit the request or retry it with a different queue.

Game-session-related operations include:

*   [CreateGameSession](@ref)

*   [DescribeGameSessions](@ref)

*   [DescribeGameSessionDetails](@ref)

*   [SearchGameSessions](@ref)

*   [UpdateGameSession](@ref)

*   [GetGameSessionLogUrl](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `PlacementId = ::String` -- *Required*
Unique identifier to assign to the new game session placement. This value is developer-defined. The value must be unique across all regions and cannot be reused unless you are resubmitting a canceled or timed-out placement request.


## `GameSessionQueueName = ::String` -- *Required*
Name of the queue to use to place the new game session.


## `GameProperties = [[ ... ], ...]`
Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the [GameSession](@ref) object with a request to start a new game session (see [Start a Game Session](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).
```
 GameProperties = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `MaximumPlayerSessionCount = ::Int` -- *Required*
Maximum number of players that can be connected simultaneously to the game session.


## `GameSessionName = ::String`
Descriptive label that is associated with a game session. Session names do not need to be unique.


## `PlayerLatencies = [[ ... ], ...]`
Set of values, expressed in milliseconds, indicating the amount of latency that a player experiences when connected to AWS regions. This information is used to try to place the new game session where it can offer the best possible gameplay experience for the players.
```
 PlayerLatencies = [[
        "PlayerId" =>  ::String,
        "RegionIdentifier" =>  ::String,
        "LatencyInMilliseconds" =>  float
    ], ...]
```

## `DesiredPlayerSessions = [[ ... ], ...]`
Set of information on each player to create a player session for.
```
 DesiredPlayerSessions = [[
        "PlayerId" =>  ::String,
        "PlayerData" =>  ::String
    ], ...]
```

## `GameSessionData = ::String`
Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the [GameSession](@ref) object with a request to start a new game session (see [Start a Game Session](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).




# Returns

`StartGameSessionPlacementOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `NotFoundException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartGameSessionPlacement)
"""
@inline start_game_session_placement(aws::AWSConfig=default_aws_config(); args...) = start_game_session_placement(aws, args)

@inline start_game_session_placement(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "StartGameSessionPlacement", args)

@inline start_game_session_placement(args) = start_game_session_placement(default_aws_config(), args)


"""
    using AWSSDK.GameLift.start_match_backfill
    start_match_backfill([::AWSConfig], arguments::Dict)
    start_match_backfill([::AWSConfig]; ConfigurationName=, GameSessionArn=, Players=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "StartMatchBackfill", arguments::Dict)
    gamelift([::AWSConfig], "StartMatchBackfill", ConfigurationName=, GameSessionArn=, Players=, <keyword arguments>)

# StartMatchBackfill Operation

Finds new players to fill open slots in an existing game session. This operation can be used to add players to matched games that start with fewer than the maximum number of players or to replace players when they drop out. By backfilling with the same matchmaker used to create the original match, you ensure that new players meet the match criteria and maintain a consistent experience throughout the game session. You can backfill a match anytime after a game session has been created.

To request a match backfill, specify a unique ticket ID, the existing game session's ARN, a matchmaking configuration, and a set of data that describes all current players in the game session. If successful, a match backfill ticket is created and returned with status set to QUEUED. The ticket is placed in the matchmaker's ticket pool and processed. Track the status of the ticket to respond as needed. For more detail how to set up backfilling, see [Backfill Existing Games with FlexMatch](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html).

The process of finding backfill matches is essentially identical to the initial matchmaking process. The matchmaker searches the pool and groups tickets together to form potential matches, allowing only one backfill ticket per potential match. Once the a match is formed, the matchmaker creates player sessions for the new players. All tickets in the match are updated with the game session's connection information, and the [GameSession](@ref) object is updated to include matchmaker data on the new players. For more detail on how match backfill requests are processed, see [How Amazon GameLift FlexMatch Works](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html).

Matchmaking-related operations include:

*   [StartMatchmaking](@ref)

*   [DescribeMatchmaking](@ref)

*   [StopMatchmaking](@ref)

*   [AcceptMatch](@ref)

*   [StartMatchBackfill](@ref)

# Arguments

## `TicketId = ::String`
Unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of a UUID. Use this identifier to track the match backfill ticket status and retrieve match results.


## `ConfigurationName = ::String` -- *Required*
Name of the matchmaker to use for this request. The name of the matchmaker that was used with the original game session is listed in the [GameSession](@ref) object, `MatchmakerData` property. This property contains a matchmaking configuration ARN value, which includes the matchmaker name. (In the ARN value "arn:aws:gamelift:us-west-2:111122223333:matchmakingconfiguration/MM-4v4", the matchmaking configuration name is "MM-4v4".) Use only the name for this parameter.


## `GameSessionArn = ::String` -- *Required*
Amazon Resource Name ([ARN](http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html)) that is assigned to a game session and uniquely identifies it.


## `Players = [[ ... ], ...]` -- *Required*
Match information on all players that are currently assigned to the game session. This information is used by the matchmaker to find new players and add them to the existing game.

*   PlayerID, PlayerAttributes, Team -\\\\- This information is maintained in the [GameSession](@ref) object, `MatchmakerData` property, for all players who are currently assigned to the game session. The matchmaker data is in JSON syntax, formatted as a string. For more details, see [Match Data](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data).

*   LatencyInMs -\\\\- If the matchmaker uses player latency, include a latency value, in milliseconds, for the region that the game session is currently in. Do not include latency values for any other region.
```
 Players = [[
        "PlayerId" =>  ::String,
        "PlayerAttributes" =>  ::Dict{String,String},
        "Team" =>  ::String,
        "LatencyInMs" =>  ::Dict{String,String}
    ], ...]
```



# Returns

`StartMatchBackfillOutput`

# Exceptions

`InvalidRequestException`, `NotFoundException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchBackfill)
"""
@inline start_match_backfill(aws::AWSConfig=default_aws_config(); args...) = start_match_backfill(aws, args)

@inline start_match_backfill(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "StartMatchBackfill", args)

@inline start_match_backfill(args) = start_match_backfill(default_aws_config(), args)


"""
    using AWSSDK.GameLift.start_matchmaking
    start_matchmaking([::AWSConfig], arguments::Dict)
    start_matchmaking([::AWSConfig]; ConfigurationName=, Players=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "StartMatchmaking", arguments::Dict)
    gamelift([::AWSConfig], "StartMatchmaking", ConfigurationName=, Players=, <keyword arguments>)

# StartMatchmaking Operation

Uses FlexMatch to create a game match for a group of players based on custom matchmaking rules, and starts a new game for the matched players. Each matchmaking request specifies the type of match to build (team configuration, rules for an acceptable match, etc.). The request also specifies the players to find a match for and where to host the new game session for optimal performance. A matchmaking request might start with a single player or a group of players who want to play together. FlexMatch finds additional players as needed to fill the match. Match type, rules, and the queue used to place a new game session are defined in a `MatchmakingConfiguration`. For complete information on setting up and using FlexMatch, see the topic [Adding FlexMatch to Your Game](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html).

To start matchmaking, provide a unique ticket ID, specify a matchmaking configuration, and include the players to be matched. You must also include a set of player attributes relevant for the matchmaking configuration. If successful, a matchmaking ticket is returned with status set to `QUEUED`. Track the status of the ticket to respond as needed and acquire game session connection information for successfully completed matches.

**Tracking ticket status** -- A couple of options are available for tracking the status of matchmaking requests:

*   Polling -- Call `DescribeMatchmaking`. This operation returns the full ticket object, including current status and (for completed tickets) game session connection info. We recommend polling no more than once every 10 seconds.

*   Notifications -- Get event notifications for changes in ticket status using Amazon Simple Notification Service (SNS). Notifications are easy to set up (see [CreateMatchmakingConfiguration](@ref)) and typically deliver match status changes faster and more efficiently than polling. We recommend that you use polling to back up to notifications (since delivery is not guaranteed) and call `DescribeMatchmaking` only when notifications are not received within 30 seconds.

**Processing a matchmaking request** -- FlexMatch handles a matchmaking request as follows:

1.  Your client code submits a `StartMatchmaking` request for one or more players and tracks the status of the request ticket.

2.  FlexMatch uses this ticket and others in process to build an acceptable match. When a potential match is identified, all tickets in the proposed match are advanced to the next status.

3.  If the match requires player acceptance (set in the matchmaking configuration), the tickets move into status `REQUIRES_ACCEPTANCE`. This status triggers your client code to solicit acceptance from all players in every ticket involved in the match, and then call [AcceptMatch](@ref) for each player. If any player rejects or fails to accept the match before a specified timeout, the proposed match is dropped (see `AcceptMatch` for more details).

4.  Once a match is proposed and accepted, the matchmaking tickets move into status `PLACING`. FlexMatch locates resources for a new game session using the game session queue (set in the matchmaking configuration) and creates the game session based on the match data.

5.  When the match is successfully placed, the matchmaking tickets move into `COMPLETED` status. Connection information (including game session endpoint and player session) is added to the matchmaking tickets. Matched players can use the connection information to join the game.

Matchmaking-related operations include:

*   [StartMatchmaking](@ref)

*   [DescribeMatchmaking](@ref)

*   [StopMatchmaking](@ref)

*   [AcceptMatch](@ref)

*   [StartMatchBackfill](@ref)

# Arguments

## `TicketId = ::String`
Unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of a UUID. Use this identifier to track the matchmaking ticket status and retrieve match results.


## `ConfigurationName = ::String` -- *Required*
Name of the matchmaking configuration to use for this request. Matchmaking configurations must exist in the same region as this request.


## `Players = [[ ... ], ...]` -- *Required*
Information on each player to be matched. This information must include a player ID, and may contain player attributes and latency data to be used in the matchmaking process. After a successful match, `Player` objects contain the name of the team the player is assigned to.
```
 Players = [[
        "PlayerId" =>  ::String,
        "PlayerAttributes" =>  ::Dict{String,String},
        "Team" =>  ::String,
        "LatencyInMs" =>  ::Dict{String,String}
    ], ...]
```



# Returns

`StartMatchmakingOutput`

# Exceptions

`InvalidRequestException`, `NotFoundException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchmaking)
"""
@inline start_matchmaking(aws::AWSConfig=default_aws_config(); args...) = start_matchmaking(aws, args)

@inline start_matchmaking(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "StartMatchmaking", args)

@inline start_matchmaking(args) = start_matchmaking(default_aws_config(), args)


"""
    using AWSSDK.GameLift.stop_fleet_actions
    stop_fleet_actions([::AWSConfig], arguments::Dict)
    stop_fleet_actions([::AWSConfig]; FleetId=, Actions=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "StopFleetActions", arguments::Dict)
    gamelift([::AWSConfig], "StopFleetActions", FleetId=, Actions=)

# StopFleetActions Operation

Suspends activity on a fleet. Currently, this operation is used to stop a fleet's auto-scaling activity. It is used to temporarily stop scaling events triggered by the fleet's scaling policies. The policies can be retained and auto-scaling activity can be restarted using [StartFleetActions](@ref). You can view a fleet's stopped actions using [DescribeFleetAttributes](@ref).

To stop fleet actions, specify the fleet ID and the type of actions to suspend. When auto-scaling fleet actions are stopped, Amazon GameLift no longer initiates scaling events except to maintain the fleet's desired instances setting ([FleetCapacity](@ref). Changes to the fleet's capacity must be done manually using [UpdateFleetCapacity](@ref).

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet


## `Actions = ["AUTO_SCALING", ...]` -- *Required*
List of actions to suspend on the fleet.




# Returns

`StopFleetActionsOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `UnauthorizedException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopFleetActions)
"""
@inline stop_fleet_actions(aws::AWSConfig=default_aws_config(); args...) = stop_fleet_actions(aws, args)

@inline stop_fleet_actions(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "StopFleetActions", args)

@inline stop_fleet_actions(args) = stop_fleet_actions(default_aws_config(), args)


"""
    using AWSSDK.GameLift.stop_game_session_placement
    stop_game_session_placement([::AWSConfig], arguments::Dict)
    stop_game_session_placement([::AWSConfig]; PlacementId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "StopGameSessionPlacement", arguments::Dict)
    gamelift([::AWSConfig], "StopGameSessionPlacement", PlacementId=)

# StopGameSessionPlacement Operation

Cancels a game session placement that is in `PENDING` status. To stop a placement, provide the placement ID values. If successful, the placement is moved to `CANCELLED` status.

Game-session-related operations include:

*   [CreateGameSession](@ref)

*   [DescribeGameSessions](@ref)

*   [DescribeGameSessionDetails](@ref)

*   [SearchGameSessions](@ref)

*   [UpdateGameSession](@ref)

*   [GetGameSessionLogUrl](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `PlacementId = ::String` -- *Required*
Unique identifier for a game session placement to cancel.




# Returns

`StopGameSessionPlacementOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `NotFoundException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopGameSessionPlacement)
"""
@inline stop_game_session_placement(aws::AWSConfig=default_aws_config(); args...) = stop_game_session_placement(aws, args)

@inline stop_game_session_placement(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "StopGameSessionPlacement", args)

@inline stop_game_session_placement(args) = stop_game_session_placement(default_aws_config(), args)


"""
    using AWSSDK.GameLift.stop_matchmaking
    stop_matchmaking([::AWSConfig], arguments::Dict)
    stop_matchmaking([::AWSConfig]; TicketId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "StopMatchmaking", arguments::Dict)
    gamelift([::AWSConfig], "StopMatchmaking", TicketId=)

# StopMatchmaking Operation

Cancels a matchmaking ticket that is currently being processed. To stop the matchmaking operation, specify the ticket ID. If successful, work on the ticket is stopped, and the ticket status is changed to `CANCELLED`.

Matchmaking-related operations include:

*   [StartMatchmaking](@ref)

*   [DescribeMatchmaking](@ref)

*   [StopMatchmaking](@ref)

*   [AcceptMatch](@ref)

*   [StartMatchBackfill](@ref)

# Arguments

## `TicketId = ::String` -- *Required*
Unique identifier for a matchmaking ticket.




# Returns

`StopMatchmakingOutput`

# Exceptions

`InvalidRequestException`, `NotFoundException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopMatchmaking)
"""
@inline stop_matchmaking(aws::AWSConfig=default_aws_config(); args...) = stop_matchmaking(aws, args)

@inline stop_matchmaking(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "StopMatchmaking", args)

@inline stop_matchmaking(args) = stop_matchmaking(default_aws_config(), args)


"""
    using AWSSDK.GameLift.update_alias
    update_alias([::AWSConfig], arguments::Dict)
    update_alias([::AWSConfig]; AliasId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateAlias", arguments::Dict)
    gamelift([::AWSConfig], "UpdateAlias", AliasId=, <keyword arguments>)

# UpdateAlias Operation

Updates properties for an alias. To update properties, specify the alias ID to be updated and provide the information to be changed. To reassign an alias to another fleet, provide an updated routing strategy. If successful, the updated alias record is returned.

Alias-related operations include:

*   [CreateAlias](@ref)

*   [ListAliases](@ref)

*   [DescribeAlias](@ref)

*   [UpdateAlias](@ref)

*   [DeleteAlias](@ref)

*   [ResolveAlias](@ref)

# Arguments

## `AliasId = ::String` -- *Required*
Unique identifier for a fleet alias. Specify the alias you want to update.


## `Name = ::String`
Descriptive label that is associated with an alias. Alias names do not need to be unique.


## `Description = ::String`
Human-readable description of an alias.


## `RoutingStrategy = [ ... ]`
Object that specifies the fleet and routing type to use for the alias.
```
 RoutingStrategy = [
        "Type" =>  "SIMPLE" or "TERMINAL",
        "FleetId" =>  ::String,
        "Message" =>  ::String
    ]
```



# Returns

`UpdateAliasOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateAlias)
"""
@inline update_alias(aws::AWSConfig=default_aws_config(); args...) = update_alias(aws, args)

@inline update_alias(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "UpdateAlias", args)

@inline update_alias(args) = update_alias(default_aws_config(), args)


"""
    using AWSSDK.GameLift.update_build
    update_build([::AWSConfig], arguments::Dict)
    update_build([::AWSConfig]; BuildId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateBuild", arguments::Dict)
    gamelift([::AWSConfig], "UpdateBuild", BuildId=, <keyword arguments>)

# UpdateBuild Operation

Updates metadata in a build record, including the build name and version. To update the metadata, specify the build ID to update and provide the new values. If successful, a build object containing the updated metadata is returned.

Build-related operations include:

*   [CreateBuild](@ref)

*   [ListBuilds](@ref)

*   [DescribeBuild](@ref)

*   [UpdateBuild](@ref)

*   [DeleteBuild](@ref)

# Arguments

## `BuildId = ::String` -- *Required*
Unique identifier for a build to update.


## `Name = ::String`
Descriptive label that is associated with a build. Build names do not need to be unique.


## `Version = ::String`
Version that is associated with this build. Version strings do not need to be unique.




# Returns

`UpdateBuildOutput`

# Exceptions

`UnauthorizedException`, `InvalidRequestException`, `NotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateBuild)
"""
@inline update_build(aws::AWSConfig=default_aws_config(); args...) = update_build(aws, args)

@inline update_build(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "UpdateBuild", args)

@inline update_build(args) = update_build(default_aws_config(), args)


"""
    using AWSSDK.GameLift.update_fleet_attributes
    update_fleet_attributes([::AWSConfig], arguments::Dict)
    update_fleet_attributes([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateFleetAttributes", arguments::Dict)
    gamelift([::AWSConfig], "UpdateFleetAttributes", FleetId=, <keyword arguments>)

# UpdateFleetAttributes Operation

Updates fleet properties, including name and description, for a fleet. To update metadata, specify the fleet ID and the property values that you want to change. If successful, the fleet ID for the updated fleet is returned.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to update attribute metadata for.


## `Name = ::String`
Descriptive label that is associated with a fleet. Fleet names do not need to be unique.


## `Description = ::String`
Human-readable description of a fleet.


## `NewGameSessionProtectionPolicy = "NoProtection" or "FullProtection"`
Game session protection policy to apply to all new instances created in this fleet. Instances that already exist are not affected. You can set protection for individual instances using [UpdateGameSession](@ref).

*   **NoProtection** -- The game session can be terminated during a scale-down event.

*   **FullProtection** -- If the game session is in an `ACTIVE` status, it cannot be terminated during a scale-down event.


## `ResourceCreationLimitPolicy = [ ... ]`
Policy that limits the number of game sessions an individual player can create over a span of time.
```
 ResourceCreationLimitPolicy = [
        "NewGameSessionsPerCreator" =>  ::Int,
        "PolicyPeriodInMinutes" =>  ::Int
    ]
```

## `MetricGroups = [::String, ...]`
Names of metric groups to include this fleet in. Amazon CloudWatch uses a fleet metric group is to aggregate metrics from multiple fleets. Use an existing metric group name to add this fleet to the group. Or use a new name to create a new metric group. A fleet can only be included in one metric group at a time.




# Returns

`UpdateFleetAttributesOutput`

# Exceptions

`NotFoundException`, `ConflictException`, `InvalidFleetStatusException`, `LimitExceededException`, `InternalServiceException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetAttributes)
"""
@inline update_fleet_attributes(aws::AWSConfig=default_aws_config(); args...) = update_fleet_attributes(aws, args)

@inline update_fleet_attributes(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "UpdateFleetAttributes", args)

@inline update_fleet_attributes(args) = update_fleet_attributes(default_aws_config(), args)


"""
    using AWSSDK.GameLift.update_fleet_capacity
    update_fleet_capacity([::AWSConfig], arguments::Dict)
    update_fleet_capacity([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateFleetCapacity", arguments::Dict)
    gamelift([::AWSConfig], "UpdateFleetCapacity", FleetId=, <keyword arguments>)

# UpdateFleetCapacity Operation

Updates capacity settings for a fleet. Use this action to specify the number of EC2 instances (hosts) that you want this fleet to contain. Before calling this action, you may want to call [DescribeEC2InstanceLimits](@ref) to get the maximum capacity based on the fleet's EC2 instance type.

Specify minimum and maximum number of instances. Amazon GameLift will not change fleet capacity to values fall outside of this range. This is particularly important when using auto-scaling (see [PutScalingPolicy](@ref)) to allow capacity to adjust based on player demand while imposing limits on automatic adjustments.

To update fleet capacity, specify the fleet ID and the number of instances you want the fleet to host. If successful, Amazon GameLift starts or terminates instances so that the fleet's active instance count matches the desired instance count. You can view a fleet's current capacity information by calling [DescribeFleetCapacity](@ref). If the desired instance count is higher than the instance type's limit, the "Limit Exceeded" exception occurs.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to update capacity for.


## `DesiredInstances = ::Int`
Number of EC2 instances you want this fleet to host.


## `MinSize = ::Int`
Minimum value allowed for the fleet's instance count. Default if not set is 0.


## `MaxSize = ::Int`
Maximum value allowed for the fleet's instance count. Default if not set is 1.




# Returns

`UpdateFleetCapacityOutput`

# Exceptions

`NotFoundException`, `ConflictException`, `LimitExceededException`, `InvalidFleetStatusException`, `InternalServiceException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetCapacity)
"""
@inline update_fleet_capacity(aws::AWSConfig=default_aws_config(); args...) = update_fleet_capacity(aws, args)

@inline update_fleet_capacity(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "UpdateFleetCapacity", args)

@inline update_fleet_capacity(args) = update_fleet_capacity(default_aws_config(), args)


"""
    using AWSSDK.GameLift.update_fleet_port_settings
    update_fleet_port_settings([::AWSConfig], arguments::Dict)
    update_fleet_port_settings([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateFleetPortSettings", arguments::Dict)
    gamelift([::AWSConfig], "UpdateFleetPortSettings", FleetId=, <keyword arguments>)

# UpdateFleetPortSettings Operation

Updates port settings for a fleet. To update settings, specify the fleet ID to be updated and list the permissions you want to update. List the permissions you want to add in `InboundPermissionAuthorizations`, and permissions you want to remove in `InboundPermissionRevocations`. Permissions to be removed must match existing fleet permissions. If successful, the fleet ID for the updated fleet is returned.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to update port settings for.


## `InboundPermissionAuthorizations = [[ ... ], ...]`
Collection of port settings to be added to the fleet record.
```
 InboundPermissionAuthorizations = [[
        "FromPort" => <required> ::Int,
        "ToPort" => <required> ::Int,
        "IpRange" => <required> ::String,
        "Protocol" => <required> "TCP" or "UDP"
    ], ...]
```

## `InboundPermissionRevocations = [[ ... ], ...]`
Collection of port settings to be removed from the fleet record.
```
 InboundPermissionRevocations = [[
        "FromPort" => <required> ::Int,
        "ToPort" => <required> ::Int,
        "IpRange" => <required> ::String,
        "Protocol" => <required> "TCP" or "UDP"
    ], ...]
```



# Returns

`UpdateFleetPortSettingsOutput`

# Exceptions

`NotFoundException`, `ConflictException`, `InvalidFleetStatusException`, `LimitExceededException`, `InternalServiceException`, `InvalidRequestException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetPortSettings)
"""
@inline update_fleet_port_settings(aws::AWSConfig=default_aws_config(); args...) = update_fleet_port_settings(aws, args)

@inline update_fleet_port_settings(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "UpdateFleetPortSettings", args)

@inline update_fleet_port_settings(args) = update_fleet_port_settings(default_aws_config(), args)


"""
    using AWSSDK.GameLift.update_game_session
    update_game_session([::AWSConfig], arguments::Dict)
    update_game_session([::AWSConfig]; GameSessionId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateGameSession", arguments::Dict)
    gamelift([::AWSConfig], "UpdateGameSession", GameSessionId=, <keyword arguments>)

# UpdateGameSession Operation

Updates game session properties. This includes the session name, maximum player count, protection policy, which controls whether or not an active game session can be terminated during a scale-down event, and the player session creation policy, which controls whether or not new players can join the session. To update a game session, specify the game session ID and the values you want to change. If successful, an updated [GameSession](@ref) object is returned.

Game-session-related operations include:

*   [CreateGameSession](@ref)

*   [DescribeGameSessions](@ref)

*   [DescribeGameSessionDetails](@ref)

*   [SearchGameSessions](@ref)

*   [UpdateGameSession](@ref)

*   [GetGameSessionLogUrl](@ref)

*   Game session placements

    *   [StartGameSessionPlacement](@ref)

    *   [DescribeGameSessionPlacement](@ref)

    *   [StopGameSessionPlacement](@ref)

# Arguments

## `GameSessionId = ::String` -- *Required*
Unique identifier for the game session to update.


## `MaximumPlayerSessionCount = ::Int`
Maximum number of players that can be connected simultaneously to the game session.


## `Name = ::String`
Descriptive label that is associated with a game session. Session names do not need to be unique.


## `PlayerSessionCreationPolicy = "ACCEPT_ALL" or "DENY_ALL"`
Policy determining whether or not the game session accepts new players.


## `ProtectionPolicy = "NoProtection" or "FullProtection"`
Game session protection policy to apply to this game session only.

*   **NoProtection** -- The game session can be terminated during a scale-down event.

*   **FullProtection** -- If the game session is in an `ACTIVE` status, it cannot be terminated during a scale-down event.




# Returns

`UpdateGameSessionOutput`

# Exceptions

`NotFoundException`, `ConflictException`, `InternalServiceException`, `UnauthorizedException`, `InvalidGameSessionStatusException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSession)
"""
@inline update_game_session(aws::AWSConfig=default_aws_config(); args...) = update_game_session(aws, args)

@inline update_game_session(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "UpdateGameSession", args)

@inline update_game_session(args) = update_game_session(default_aws_config(), args)


"""
    using AWSSDK.GameLift.update_game_session_queue
    update_game_session_queue([::AWSConfig], arguments::Dict)
    update_game_session_queue([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateGameSessionQueue", arguments::Dict)
    gamelift([::AWSConfig], "UpdateGameSessionQueue", Name=, <keyword arguments>)

# UpdateGameSessionQueue Operation

Updates settings for a game session queue, which determines how new game session requests in the queue are processed. To update settings, specify the queue name to be updated and provide the new settings. When updating destinations, provide a complete list of destinations.

Queue-related operations include:

*   [CreateGameSessionQueue](@ref)

*   [DescribeGameSessionQueues](@ref)

*   [UpdateGameSessionQueue](@ref)

*   [DeleteGameSessionQueue](@ref)

# Arguments

## `Name = ::String` -- *Required*
Descriptive label that is associated with game session queue. Queue names must be unique within each region.


## `TimeoutInSeconds = ::Int`
Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a `TIMED_OUT` status.


## `PlayerLatencyPolicies = [[ ... ], ...]`
Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. When updating policies, provide a complete collection of policies.
```
 PlayerLatencyPolicies = [[
        "MaximumIndividualPlayerLatencyMilliseconds" =>  ::Int,
        "PolicyDurationSeconds" =>  ::Int
    ], ...]
```

## `Destinations = [["DestinationArn" =>  ::String], ...]`
List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order. When updating this list, provide a complete list of destinations.




# Returns

`UpdateGameSessionQueueOutput`

# Exceptions

`InternalServiceException`, `InvalidRequestException`, `NotFoundException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionQueue)
"""
@inline update_game_session_queue(aws::AWSConfig=default_aws_config(); args...) = update_game_session_queue(aws, args)

@inline update_game_session_queue(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "UpdateGameSessionQueue", args)

@inline update_game_session_queue(args) = update_game_session_queue(default_aws_config(), args)


"""
    using AWSSDK.GameLift.update_matchmaking_configuration
    update_matchmaking_configuration([::AWSConfig], arguments::Dict)
    update_matchmaking_configuration([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateMatchmakingConfiguration", arguments::Dict)
    gamelift([::AWSConfig], "UpdateMatchmakingConfiguration", Name=, <keyword arguments>)

# UpdateMatchmakingConfiguration Operation

Updates settings for a FlexMatch matchmaking configuration. To update settings, specify the configuration name to be updated and provide the new settings.

Operations related to match configurations and rule sets include:

*   [CreateMatchmakingConfiguration](@ref)

*   [DescribeMatchmakingConfigurations](@ref)

*   [UpdateMatchmakingConfiguration](@ref)

*   [DeleteMatchmakingConfiguration](@ref)

*   [CreateMatchmakingRuleSet](@ref)

*   [DescribeMatchmakingRuleSets](@ref)

*   [ValidateMatchmakingRuleSet](@ref)

# Arguments

## `Name = ::String` -- *Required*
Unique identifier for a matchmaking configuration to update.


## `Description = ::String`
Descriptive label that is associated with matchmaking configuration.


## `GameSessionQueueArns = [::String, ...]`
Amazon Resource Name ([ARN](http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html)) that is assigned to a game session queue and uniquely identifies it. Format is `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`. These queues are used when placing game sessions for matches that are created with this matchmaking configuration. Queues can be located in any region.


## `RequestTimeoutSeconds = ::Int`
Maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out. Requests that time out can be resubmitted as needed.


## `AcceptanceTimeoutSeconds = ::Int`
Length of time (in seconds) to wait for players to accept a proposed match. If any player rejects the match or fails to accept before the timeout, the ticket continues to look for an acceptable match.


## `AcceptanceRequired = ::Bool`
Flag that determines whether or not a match that was created with this configuration must be accepted by the matched players. To require acceptance, set to TRUE.


## `RuleSetName = ::String`
Unique identifier for a matchmaking rule set to use with this configuration. A matchmaking configuration can only use rule sets that are defined in the same region.


## `NotificationTarget = ::String`
SNS topic ARN that is set up to receive matchmaking notifications. See [Setting up Notifications for Matchmaking](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html) for more information.


## `AdditionalPlayerCount = ::Int`
Number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match.


## `CustomEventData = ::String`
Information to attached to all events related to the matchmaking configuration.


## `GameProperties = [[ ... ], ...]`
Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the [GameSession](@ref) object with a request to start a new game session (see [Start a Game Session](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)). This information is added to the new [GameSession](@ref) object that is created for a successful match.
```
 GameProperties = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `GameSessionData = ::String`
Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the [GameSession](@ref) object with a request to start a new game session (see [Start a Game Session](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)). This information is added to the new [GameSession](@ref) object that is created for a successful match.




# Returns

`UpdateMatchmakingConfigurationOutput`

# Exceptions

`InvalidRequestException`, `NotFoundException`, `InternalServiceException` or `UnsupportedRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateMatchmakingConfiguration)
"""
@inline update_matchmaking_configuration(aws::AWSConfig=default_aws_config(); args...) = update_matchmaking_configuration(aws, args)

@inline update_matchmaking_configuration(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "UpdateMatchmakingConfiguration", args)

@inline update_matchmaking_configuration(args) = update_matchmaking_configuration(default_aws_config(), args)


"""
    using AWSSDK.GameLift.update_runtime_configuration
    update_runtime_configuration([::AWSConfig], arguments::Dict)
    update_runtime_configuration([::AWSConfig]; FleetId=, RuntimeConfiguration=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateRuntimeConfiguration", arguments::Dict)
    gamelift([::AWSConfig], "UpdateRuntimeConfiguration", FleetId=, RuntimeConfiguration=)

# UpdateRuntimeConfiguration Operation

Updates the current run-time configuration for the specified fleet, which tells Amazon GameLift how to launch server processes on instances in the fleet. You can update a fleet's run-time configuration at any time after the fleet is created; it does not need to be in an `ACTIVE` status.

To update run-time configuration, specify the fleet ID and provide a `RuntimeConfiguration` object with the updated collection of server process configurations.

Each instance in a Amazon GameLift fleet checks regularly for an updated run-time configuration and changes how it launches server processes to comply with the latest version. Existing server processes are not affected by the update; they continue to run until they end, while Amazon GameLift simply adds new server processes to fit the current run-time configuration. As a result, the run-time configuration changes are applied gradually as existing processes shut down and new processes are launched in Amazon GameLift's normal process recycling activity.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   [DeleteFleet](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetCapacity](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeEC2InstanceLimits](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet actions:

    *   [StartFleetActions](@ref)

    *   [StopFleetActions](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to update run-time configuration for.


## `RuntimeConfiguration = [ ... ]` -- *Required*
Instructions for launching server processes on each instance in the fleet. The run-time configuration for a fleet has a collection of server process configurations, one for each type of server process to run on an instance. A server process configuration specifies the location of the server executable, launch parameters, and the number of concurrent processes with that configuration to maintain on each instance.
```
 RuntimeConfiguration = [
        "ServerProcesses" =>  [[
            "LaunchPath" => <required> ::String,
            "Parameters" =>  ::String,
            "ConcurrentExecutions" => <required> ::Int
        ], ...],
        "MaxConcurrentGameSessionActivations" =>  ::Int,
        "GameSessionActivationTimeoutSeconds" =>  ::Int
    ]
```



# Returns

`UpdateRuntimeConfigurationOutput`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `InternalServiceException`, `InvalidRequestException` or `InvalidFleetStatusException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateRuntimeConfiguration)
"""
@inline update_runtime_configuration(aws::AWSConfig=default_aws_config(); args...) = update_runtime_configuration(aws, args)

@inline update_runtime_configuration(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "UpdateRuntimeConfiguration", args)

@inline update_runtime_configuration(args) = update_runtime_configuration(default_aws_config(), args)


"""
    using AWSSDK.GameLift.validate_matchmaking_rule_set
    validate_matchmaking_rule_set([::AWSConfig], arguments::Dict)
    validate_matchmaking_rule_set([::AWSConfig]; RuleSetBody=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "ValidateMatchmakingRuleSet", arguments::Dict)
    gamelift([::AWSConfig], "ValidateMatchmakingRuleSet", RuleSetBody=)

# ValidateMatchmakingRuleSet Operation

Validates the syntax of a matchmaking rule or rule set. This operation checks that the rule set uses syntactically correct JSON and that it conforms to allowed property expressions. To validate syntax, provide a rule set string.

Operations related to match configurations and rule sets include:

*   [CreateMatchmakingConfiguration](@ref)

*   [DescribeMatchmakingConfigurations](@ref)

*   [UpdateMatchmakingConfiguration](@ref)

*   [DeleteMatchmakingConfiguration](@ref)

*   [CreateMatchmakingRuleSet](@ref)

*   [DescribeMatchmakingRuleSets](@ref)

*   [ValidateMatchmakingRuleSet](@ref)

# Arguments

## `RuleSetBody = ::String` -- *Required*
Collection of matchmaking rules to validate, formatted as a JSON string.




# Returns

`ValidateMatchmakingRuleSetOutput`

# Exceptions

`InternalServiceException`, `UnsupportedRegionException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ValidateMatchmakingRuleSet)
"""
@inline validate_matchmaking_rule_set(aws::AWSConfig=default_aws_config(); args...) = validate_matchmaking_rule_set(aws, args)

@inline validate_matchmaking_rule_set(aws::AWSConfig, args) = AWSCore.Services.gamelift(aws, "ValidateMatchmakingRuleSet", args)

@inline validate_matchmaking_rule_set(args) = validate_matchmaking_rule_set(default_aws_config(), args)




end # module GameLift


#==============================================================================#
# End of file
#==============================================================================#
