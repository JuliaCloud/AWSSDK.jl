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
    using AWSSDK.GameLift
    GameLift.create_alias([::AWSConfig], arguments::Dict)
    GameLift.create_alias([::AWSConfig]; Name=, RoutingStrategy=, <keyword arguments>)

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
    using AWSSDK.GameLift
    GameLift.create_build([::AWSConfig], arguments::Dict)
    GameLift.create_build([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateBuild", arguments::Dict)
    gamelift([::AWSConfig], "CreateBuild", <keyword arguments>)

# CreateBuild Operation

Creates a new Amazon GameLift build from a set of game server binary files stored in an Amazon Simple Storage Service (Amazon S3) location. To use this API call, create a `.zip` file containing all of the files for the build and store it in an Amazon S3 bucket under your AWS account. For help on packaging your build files and creating a build, see [Uploading Your Game to Amazon GameLift](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html).

**Important**
> Use this API action ONLY if you are storing your game build files in an Amazon S3 bucket. To create a build using files stored locally, use the CLI command [`upload-build`](http://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html) , which uploads the build files from a file location you specify.

To create a new build using `CreateBuild`, identify the storage location and operating system of your game build. You also have the option of specifying a build name and version. If successful, this action creates a new build record with an unique build ID and in `INITIALIZED` status. Use the API call [DescribeBuild](@ref) to check the status of your build. A build must be in `READY` status before it can be used to create fleets to host your game.

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
Amazon S3 location of the game build files to be uploaded. The S3 bucket must be owned by the same AWS account that you're using to manage Amazon GameLift. It also must in the same region that you want to create a new build in. Before calling `CreateBuild` with this location, you must allow Amazon GameLift to access your Amazon S3 bucket (see [Create a Build with Files in Amazon S3](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build)).
```
 StorageLocation = [
        "Bucket" =>  ::String,
        "Key" =>  ::String,
        "RoleArn" =>  ::String
    ]
```

## `OperatingSystem = "WINDOWS_2012" or "AMAZON_LINUX"`
Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build. If your game build contains multiple executables, they all must run on the same operating system.




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
    using AWSSDK.GameLift
    GameLift.create_fleet([::AWSConfig], arguments::Dict)
    GameLift.create_fleet([::AWSConfig]; Name=, BuildId=, EC2InstanceType=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateFleet", arguments::Dict)
    gamelift([::AWSConfig], "CreateFleet", Name=, BuildId=, EC2InstanceType=, <keyword arguments>)

# CreateFleet Operation

Creates a new fleet to run your game servers. A fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can run multiple server processes to host game sessions. You configure a fleet to create instances with certain hardware specifications (see [Amazon EC2 Instance Types](http://aws.amazon.com/ec2/instance-types/) for more information), and deploy a specified game build to each instance. A newly created fleet passes through several statuses; once it reaches the `ACTIVE` status, it can begin hosting game sessions.

To create a new fleet, you must specify the following: (1) fleet name, (2) build ID of an uploaded game build, (3) an EC2 instance type, and (4) a run-time configuration that describes which server processes to run on each instance in the fleet. (Although the run-time configuration is not a required parameter, the fleet cannot be successfully activated without it.)

You can also configure the new fleet with the following settings:

*   Fleet description

*   Access permissions for inbound traffic

*   Fleetwide game session protection

*   Resource creation limit

If you use Amazon CloudWatch for metrics, you can add the new fleet to a metric group. This allows you to view aggregated metrics for a set of fleets. Once you specify a metric group, the new fleet's metrics are included in the metric group's data.

If the CreateFleet call is successful, Amazon GameLift performs the following tasks:

*   Creates a fleet record and sets the status to `NEW` (followed by other statuses as the fleet is activated).

*   Sets the fleet's target capacity to 1 (desired instances), which causes Amazon GameLift to start one new EC2 instance.

*   Starts launching server processes on the instance. If the fleet is configured to run multiple server processes per instance, Amazon GameLift staggers each launch by a few seconds.

*   Begins writing events to the fleet event log, which can be accessed in the Amazon GameLift console.

*   Sets the fleet's status to `ACTIVE` as soon as one server process in the fleet is ready to host a game session.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

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


## `EC2InstanceType = "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge" or "m4.10xlarge"` -- *Required*
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
Game session protection policy to apply to all instances in this fleet. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy using UpdateFleetAttributes, but this change will only affect sessions created after the policy change. You can also set protection for individual instances using [UpdateGameSession](@ref).

*   **NoProtection** – The game session can be terminated during a scale-down event.

*   **FullProtection** – If the game session is in an `ACTIVE` status, it cannot be terminated during a scale-down event.


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
Names of metric groups to add this fleet to. Use an existing metric group name to add this fleet to the group. Or use a new name to create a new metric group. A fleet can only be included in one metric group at a time.




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
    using AWSSDK.GameLift
    GameLift.create_game_session([::AWSConfig], arguments::Dict)
    GameLift.create_game_session([::AWSConfig]; MaximumPlayerSessionCount=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "CreateGameSession", arguments::Dict)
    gamelift([::AWSConfig], "CreateGameSession", MaximumPlayerSessionCount=, <keyword arguments>)

# CreateGameSession Operation

Creates a multiplayer game session for players. This action creates a game session record and assigns an available server process in the specified fleet to host the game session. A fleet must have an `ACTIVE` status before a game session can be created in it.

To create a game session, specify either fleet ID or alias ID and indicate a maximum number of players to allow in the game session. You can also provide a name and game-specific properties for this game session. If successful, a [GameSession](@ref) object is returned containing game session properties, including a game session ID with the custom string you provided.

**Idempotency tokens.** You can add a token that uniquely identifies game session requests. This is useful for ensuring that game session requests are idempotent. Multiple requests with the same idempotency token are processed only once; subsequent requests return the original result. All response values are the same with the exception of game session status, which may change.

**Resource creation limits.** If you are creating a game session on a fleet with a resource creation limit policy in force, then you must specify a creator ID. Without this ID, Amazon GameLift has no way to evaluate the policy for this new game session request.

By default, newly created game sessions allow new players to join. Use [UpdateGameSession](@ref) to change the game session's player session creation policy.

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
Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.
```
 GameProperties = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `CreatorId = ::String`
Unique identifier for a player or entity creating the game session. This ID is used to enforce a resource protection policy (if one exists) that limits the number of concurrent active game sessions one player can have.


## `GameSessionId = ::String`
*This parameter is no longer preferred. Please use `IdempotencyToken` instead.* Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ID has the following format: `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string or idempotency token>`.)


## `IdempotencyToken = ::String`
Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ID has the following format: `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string or idempotency token>`.)




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
    using AWSSDK.GameLift
    GameLift.create_game_session_queue([::AWSConfig], arguments::Dict)
    GameLift.create_game_session_queue([::AWSConfig]; Name=, <keyword arguments>)

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
Descriptive label that is associated with queue. Queue names must be unique within each region.


## `TimeoutInSeconds = ::Int`
Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status.


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
    using AWSSDK.GameLift
    GameLift.create_player_session([::AWSConfig], arguments::Dict)
    GameLift.create_player_session([::AWSConfig]; GameSessionId=, PlayerId=, <keyword arguments>)

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
    using AWSSDK.GameLift
    GameLift.create_player_sessions([::AWSConfig], arguments::Dict)
    GameLift.create_player_sessions([::AWSConfig]; GameSessionId=, PlayerIds=, <keyword arguments>)

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
    using AWSSDK.GameLift
    GameLift.delete_alias([::AWSConfig], arguments::Dict)
    GameLift.delete_alias([::AWSConfig]; AliasId=)

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
    using AWSSDK.GameLift
    GameLift.delete_build([::AWSConfig], arguments::Dict)
    GameLift.delete_build([::AWSConfig]; BuildId=)

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
    using AWSSDK.GameLift
    GameLift.delete_fleet([::AWSConfig], arguments::Dict)
    GameLift.delete_fleet([::AWSConfig]; FleetId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteFleet", arguments::Dict)
    gamelift([::AWSConfig], "DeleteFleet", FleetId=)

# DeleteFleet Operation

Deletes everything related to a fleet. Before deleting a fleet, you must set the fleet's desired capacity to zero. See [UpdateFleetCapacity](@ref).

This action removes the fleet's resources and the fleet record. Once a fleet is deleted, you can no longer use that fleet.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

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
    using AWSSDK.GameLift
    GameLift.delete_game_session_queue([::AWSConfig], arguments::Dict)
    GameLift.delete_game_session_queue([::AWSConfig]; Name=)

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
Descriptive label that is associated with queue. Queue names must be unique within each region.




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
    using AWSSDK.GameLift
    GameLift.delete_scaling_policy([::AWSConfig], arguments::Dict)
    GameLift.delete_scaling_policy([::AWSConfig]; Name=, FleetId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DeleteScalingPolicy", arguments::Dict)
    gamelift([::AWSConfig], "DeleteScalingPolicy", Name=, FleetId=)

# DeleteScalingPolicy Operation

Deletes a fleet scaling policy. This action means that the policy is no longer in force and removes all record of it. To delete a scaling policy, specify both the scaling policy name and the fleet ID it is associated with.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

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
    using AWSSDK.GameLift
    GameLift.describe_alias([::AWSConfig], arguments::Dict)
    GameLift.describe_alias([::AWSConfig]; AliasId=)

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
    using AWSSDK.GameLift
    GameLift.describe_build([::AWSConfig], arguments::Dict)
    GameLift.describe_build([::AWSConfig]; BuildId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeBuild", arguments::Dict)
    gamelift([::AWSConfig], "DescribeBuild", BuildId=)

# DescribeBuild Operation

Retrieves properties for a build. To get a build record, specify a build ID. If successful, an object containing the build properties is returned.

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
    using AWSSDK.GameLift
    GameLift.describe_ec2instance_limits([::AWSConfig], arguments::Dict)
    GameLift.describe_ec2instance_limits([::AWSConfig]; <keyword arguments>)

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

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

# Arguments

## `EC2InstanceType = "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge" or "m4.10xlarge"`
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
    using AWSSDK.GameLift
    GameLift.describe_fleet_attributes([::AWSConfig], arguments::Dict)
    GameLift.describe_fleet_attributes([::AWSConfig]; <keyword arguments>)

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

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

# Arguments

## `FleetIds = [::String, ...]`
Unique identifier for a fleet(s) to retrieve attributes for. To request attributes for all fleets, leave this parameter empty.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.




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
    using AWSSDK.GameLift
    GameLift.describe_fleet_capacity([::AWSConfig], arguments::Dict)
    GameLift.describe_fleet_capacity([::AWSConfig]; <keyword arguments>)

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

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

# Arguments

## `FleetIds = [::String, ...]`
Unique identifier for a fleet(s) to retrieve capacity information for. To request capacity information for all fleets, leave this parameter empty.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.




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
    using AWSSDK.GameLift
    GameLift.describe_fleet_events([::AWSConfig], arguments::Dict)
    GameLift.describe_fleet_events([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeFleetEvents", arguments::Dict)
    gamelift([::AWSConfig], "DescribeFleetEvents", FleetId=, <keyword arguments>)

# DescribeFleetEvents Operation

Retrieves entries from the specified fleet's event log. You can specify a time range to limit the result set. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a collection of event log entries matching the request are returned.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

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
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.describe_fleet_port_settings([::AWSConfig], arguments::Dict)
    GameLift.describe_fleet_port_settings([::AWSConfig]; FleetId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeFleetPortSettings", arguments::Dict)
    gamelift([::AWSConfig], "DescribeFleetPortSettings", FleetId=)

# DescribeFleetPortSettings Operation

Retrieves the inbound connection permissions for a fleet. Connection permissions include a range of IP addresses and port settings that incoming traffic can use to access server processes in the fleet. To get a fleet's inbound connection permissions, specify a fleet ID. If successful, a collection of [IpPermission](@ref) objects is returned for the requested fleet ID. If the requested fleet has been deleted, the result set is empty.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

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
    using AWSSDK.GameLift
    GameLift.describe_fleet_utilization([::AWSConfig], arguments::Dict)
    GameLift.describe_fleet_utilization([::AWSConfig]; <keyword arguments>)

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

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

# Arguments

## `FleetIds = [::String, ...]`
Unique identifier for a fleet(s) to retrieve utilization data for. To request utilization data for all fleets, leave this parameter empty.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.




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
    using AWSSDK.GameLift
    GameLift.describe_game_session_details([::AWSConfig], arguments::Dict)
    GameLift.describe_game_session_details([::AWSConfig]; <keyword arguments>)

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
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.describe_game_session_placement([::AWSConfig], arguments::Dict)
    GameLift.describe_game_session_placement([::AWSConfig]; PlacementId=)

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
    using AWSSDK.GameLift
    GameLift.describe_game_session_queues([::AWSConfig], arguments::Dict)
    GameLift.describe_game_session_queues([::AWSConfig]; <keyword arguments>)

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
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.describe_game_sessions([::AWSConfig], arguments::Dict)
    GameLift.describe_game_sessions([::AWSConfig]; <keyword arguments>)

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
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.describe_instances([::AWSConfig], arguments::Dict)
    GameLift.describe_instances([::AWSConfig]; FleetId=, <keyword arguments>)

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
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.describe_player_sessions([::AWSConfig], arguments::Dict)
    GameLift.describe_player_sessions([::AWSConfig]; <keyword arguments>)

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

*   **RESERVED** – The player session request has been received, but the player has not yet connected to the server process and/or been validated.

*   **ACTIVE** – The player has been validated by the server process and is currently connected.

*   **COMPLETED** – The player connection has been dropped.

*   **TIMEDOUT** – A player session request was received, but the player did not connect and/or was not validated within the time-out limit (60 seconds).


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.




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
    using AWSSDK.GameLift
    GameLift.describe_runtime_configuration([::AWSConfig], arguments::Dict)
    GameLift.describe_runtime_configuration([::AWSConfig]; FleetId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeRuntimeConfiguration", arguments::Dict)
    gamelift([::AWSConfig], "DescribeRuntimeConfiguration", FleetId=)

# DescribeRuntimeConfiguration Operation

Retrieves the current run-time configuration for the specified fleet. The run-time configuration tells Amazon GameLift how to launch server processes on instances in the fleet.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

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
    using AWSSDK.GameLift
    GameLift.describe_scaling_policies([::AWSConfig], arguments::Dict)
    GameLift.describe_scaling_policies([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "DescribeScalingPolicies", arguments::Dict)
    gamelift([::AWSConfig], "DescribeScalingPolicies", FleetId=, <keyword arguments>)

# DescribeScalingPolicies Operation

Retrieves all scaling policies applied to a fleet.

To get a fleet's scaling policies, specify the fleet ID. You can filter this request by policy status, such as to retrieve only active scaling policies. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, set of [ScalingPolicy](@ref) objects is returned for the fleet.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to retrieve scaling policies for.


## `StatusFilter = "ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED" or "ERROR"`
Scaling policy status to filter results on. A scaling policy is only in force when in an `ACTIVE` status.

*   **ACTIVE** – The scaling policy is currently in force.

*   **UPDATEREQUESTED** – A request to update the scaling policy has been received.

*   **UPDATING** – A change is being made to the scaling policy.

*   **DELETEREQUESTED** – A request to delete the scaling policy has been received.

*   **DELETING** – The scaling policy is being deleted.

*   **DELETED** – The scaling policy has been deleted.

*   **ERROR** – An error occurred in creating the policy. It should be removed and recreated.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.get_game_session_log_url([::AWSConfig], arguments::Dict)
    GameLift.get_game_session_log_url([::AWSConfig]; GameSessionId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "GetGameSessionLogUrl", arguments::Dict)
    gamelift([::AWSConfig], "GetGameSessionLogUrl", GameSessionId=)

# GetGameSessionLogUrl Operation

Retrieves the location of stored game session logs for a specified game session. When a game session is terminated, Amazon GameLift automatically stores the logs in Amazon S3\. Use this URL to download the logs.

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
    using AWSSDK.GameLift
    GameLift.get_instance_access([::AWSConfig], arguments::Dict)
    GameLift.get_instance_access([::AWSConfig]; FleetId=, InstanceId=)

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
    using AWSSDK.GameLift
    GameLift.list_aliases([::AWSConfig], arguments::Dict)
    GameLift.list_aliases([::AWSConfig]; <keyword arguments>)

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

*   **SIMPLE** – The alias resolves to one specific fleet. Use this type when routing to active fleets.

*   **TERMINAL** – The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the [RoutingStrategy](@ref) message embedded.


## `Name = ::String`
Descriptive label that is associated with an alias. Alias names do not need to be unique.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.list_builds([::AWSConfig], arguments::Dict)
    GameLift.list_builds([::AWSConfig]; <keyword arguments>)

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

*   **INITIALIZED** – A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value.

*   **READY** – The game build has been successfully uploaded. You can now create new fleets for this build.

*   **FAILED** – The game build upload failed. You cannot create new fleets for this build.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.list_fleets([::AWSConfig], arguments::Dict)
    GameLift.list_fleets([::AWSConfig]; <keyword arguments>)

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

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

# Arguments

## `BuildId = ::String`
Unique identifier for a build to return fleets for. Use this parameter to return only fleets using the specified build. To retrieve all fleets, leave this parameter empty.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.put_scaling_policy([::AWSConfig], arguments::Dict)
    GameLift.put_scaling_policy([::AWSConfig]; Name=, FleetId=, ScalingAdjustment=, ScalingAdjustmentType=, Threshold=, ComparisonOperator=, EvaluationPeriods=, MetricName=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "PutScalingPolicy", arguments::Dict)
    gamelift([::AWSConfig], "PutScalingPolicy", Name=, FleetId=, ScalingAdjustment=, ScalingAdjustmentType=, Threshold=, ComparisonOperator=, EvaluationPeriods=, MetricName=)

# PutScalingPolicy Operation

Creates or updates a scaling policy for a fleet. An active scaling policy prompts Amazon GameLift to track a certain metric for a fleet and automatically change the fleet's capacity in specific circumstances. Each scaling policy contains one rule statement. Fleets can have multiple scaling policies in force simultaneously.

A scaling policy rule statement has the following structure:

If `[MetricName]` is `[ComparisonOperator]` `[Threshold]` for `[EvaluationPeriods]` minutes, then `[ScalingAdjustmentType]` to/by `[ScalingAdjustment]`.

For example, this policy: "If the number of idle instances exceeds 20 for more than 15 minutes, then reduce the fleet capacity by 10 instances" could be implemented as the following rule statement:

If [IdleInstances] is [GreaterThanOrEqualToThreshold] [20] for [15] minutes, then [ChangeInCapacity] by [-10].

To create or update a scaling policy, specify a unique combination of name and fleet ID, and set the rule values. All parameters for this action are required. If successful, the policy name is returned. Scaling policies cannot be suspended or made inactive. To stop enforcing a scaling policy, call [DeleteScalingPolicy](@ref).

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

# Arguments

## `Name = ::String` -- *Required*
Descriptive label that is associated with a scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.


## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to apply this policy to.


## `ScalingAdjustment = ::Int` -- *Required*
Amount of adjustment to make, based on the scaling adjustment type.


## `ScalingAdjustmentType = "ChangeInCapacity", "ExactCapacity" or "PercentChangeInCapacity"` -- *Required*
Type of adjustment to make to a fleet's instance count (see [FleetCapacity](@ref)):

*   **ChangeInCapacity** – add (or subtract) the scaling adjustment value from the current instance count. Positive values scale up while negative values scale down.

*   **ExactCapacity** – set the instance count to the scaling adjustment value.

*   **PercentChangeInCapacity** – increase or reduce the current instance count by the scaling adjustment, read as a percentage. Positive values scale up while negative values scale down; for example, a value of "-10" scales the fleet down by 10%.


## `Threshold = double` -- *Required*
Metric value used to trigger a scaling event.


## `ComparisonOperator = "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold" or "LessThanOrEqualToThreshold"` -- *Required*
Comparison operator to use when measuring the metric against the threshold value.


## `EvaluationPeriods = ::Int` -- *Required*
Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.


## `MetricName = "ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth" or "WaitTime"` -- *Required*
Name of the Amazon GameLift-defined metric that is used to trigger an adjustment.

*   **ActivatingGameSessions** – number of game sessions in the process of being created (game session status = `ACTIVATING`).

*   **ActiveGameSessions** – number of game sessions currently running (game session status = `ACTIVE`).

*   **CurrentPlayerSessions** – number of active or reserved player sessions (player session status = `ACTIVE` or `RESERVED`).

*   **AvailablePlayerSessions** – number of player session slots currently available in active game sessions across the fleet, calculated by subtracting a game session's current player session count from its maximum player session count. This number includes game sessions that are not currently accepting players (game session `PlayerSessionCreationPolicy` = `DENY_ALL`).

*   **ActiveInstances** – number of instances currently running a game session.

*   **IdleInstances** – number of instances not currently running a game session.




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
    using AWSSDK.GameLift
    GameLift.request_upload_credentials([::AWSConfig], arguments::Dict)
    GameLift.request_upload_credentials([::AWSConfig]; BuildId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "RequestUploadCredentials", arguments::Dict)
    gamelift([::AWSConfig], "RequestUploadCredentials", BuildId=)

# RequestUploadCredentials Operation

*This API call is not currently in use.* Retrieves a fresh set of upload credentials and the assigned Amazon S3 storage location for a specific build. Valid credentials are required to upload your game build files to Amazon S3.

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
    using AWSSDK.GameLift
    GameLift.resolve_alias([::AWSConfig], arguments::Dict)
    GameLift.resolve_alias([::AWSConfig]; AliasId=)

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
    using AWSSDK.GameLift
    GameLift.search_game_sessions([::AWSConfig], arguments::Dict)
    GameLift.search_game_sessions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "SearchGameSessions", arguments::Dict)
    gamelift([::AWSConfig], "SearchGameSessions", <keyword arguments>)

# SearchGameSessions Operation

Retrieves a set of game sessions that match a set of search criteria and sorts them in a specified order. A game session search is limited to a single fleet. Search results include only game sessions that are in `ACTIVE` status. If you need to retrieve game sessions with a status other than active, use [DescribeGameSessions](@ref). If you need to retrieve the protection policy for each game session, use [DescribeGameSessionDetails](@ref).

You can search or sort by the following game session attributes:

*   **gameSessionId** -- Unique identifier for the game session. You can use either a `GameSessionId` or `GameSessionArn` value.

*   **gameSessionName** -- Name assigned to a game session. This value is set when requesting a new game session with [CreateGameSession](@ref) or updating with [UpdateGameSession](@ref). Game session names do not need to be unique to a game session.

*   **creationTimeMillis** -- Value indicating when a game session was created. It is expressed in Unix time as milliseconds.

*   **playerSessionCount** -- Number of players currently connected to a game session. This value changes rapidly as players join the session or drop out.

*   **maximumSessions** -- Maximum number of player sessions allowed for a game session. This value is set when requesting a new game session with [CreateGameSession](@ref) or updating with [UpdateGameSession](@ref).

*   **hasAvailablePlayerSessions** -- Boolean value indicating whether a game session has reached its maximum number of players. When searching with this attribute, the search value must be `true` or `false`. It is highly recommended that all search requests include this filter attribute to optimize search performance and return only sessions that players can join.

To search or sort, specify either a fleet ID or an alias ID, and provide a search filter expression, a sort expression, or both. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a collection of [GameSession](@ref) objects matching the request is returned.

**Note**
> Returned values for `playerSessionCount` and `hasAvailablePlayerSessions` change quickly as players join sessions and others drop out. Results should be considered a snapshot in time. Be sure to refresh search results often, and handle sessions that fill up before a player can join.

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

*   **Operand** -- Name of a game session attribute. Valid values are `gameSessionName`, `gameSessionId`, `creationTimeMillis`, `playerSessionCount`, `maximumSessions`, `hasAvailablePlayerSessions`.

*   **Comparator** -- Valid comparators are: `=`, `<>`, `<`, `>`, `<=`, `>=`.

*   **Value** -- Value to be searched for. Values can be numbers, boolean values (true/false) or strings. String values are case sensitive, enclosed in single quotes. Special characters must be escaped. Boolean and string values can only be used with the comparators `=` and `<>`. For example, the following filter expression searches on `gameSessionName`: "`FilterExpression": "gameSessionName = 'Matt\\\\'s Awesome Game 1'"`.

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

*   **Operand** -- Name of a game session attribute. Valid values are `gameSessionName`, `gameSessionId`, `creationTimeMillis`, `playerSessionCount`, `maximumSessions`, `hasAvailablePlayerSessions`.

*   **Order** -- Valid sort orders are `ASC` (ascending) and `DESC` (descending).

For example, this sort expression returns the oldest active sessions first: `"SortExpression": "creationTimeMillis ASC"`. Results with a null value for the sort operand are returned at the end of the list.


## `Limit = ::Int`
Maximum number of results to return. Use this parameter with `NextToken` to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set or is set higher than 20\.


## `NextToken = ::String`
Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.




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
    using AWSSDK.GameLift
    GameLift.start_game_session_placement([::AWSConfig], arguments::Dict)
    GameLift.start_game_session_placement([::AWSConfig]; PlacementId=, GameSessionQueueName=, MaximumPlayerSessionCount=, <keyword arguments>)

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

To track the status of a placement request, call [DescribeGameSessionPlacement](@ref) and check the request's status. If the status is `Fulfilled`, a new game session has been created and a game session ARN and region are referenced. If the placement request times out, you can resubmit the request or retry it with a different queue.

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
Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.
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
Set of values, expressed in milliseconds, indicating the amount of latency that players are experiencing when connected to AWS regions. This information is used to try to place the new game session where it can offer the best possible gameplay experience for the players.
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
    using AWSSDK.GameLift
    GameLift.stop_game_session_placement([::AWSConfig], arguments::Dict)
    GameLift.stop_game_session_placement([::AWSConfig]; PlacementId=)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "StopGameSessionPlacement", arguments::Dict)
    gamelift([::AWSConfig], "StopGameSessionPlacement", PlacementId=)

# StopGameSessionPlacement Operation

Cancels a game session placement that is in Pending status. To stop a placement, provide the placement ID values. If successful, the placement is moved to Cancelled status.

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
    using AWSSDK.GameLift
    GameLift.update_alias([::AWSConfig], arguments::Dict)
    GameLift.update_alias([::AWSConfig]; AliasId=, <keyword arguments>)

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
    using AWSSDK.GameLift
    GameLift.update_build([::AWSConfig], arguments::Dict)
    GameLift.update_build([::AWSConfig]; BuildId=, <keyword arguments>)

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
    using AWSSDK.GameLift
    GameLift.update_fleet_attributes([::AWSConfig], arguments::Dict)
    GameLift.update_fleet_attributes([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateFleetAttributes", arguments::Dict)
    gamelift([::AWSConfig], "UpdateFleetAttributes", FleetId=, <keyword arguments>)

# UpdateFleetAttributes Operation

Updates fleet properties, including name and description, for a fleet. To update metadata, specify the fleet ID and the property values that you want to change. If successful, the fleet ID for the updated fleet is returned.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

# Arguments

## `FleetId = ::String` -- *Required*
Unique identifier for a fleet to update attribute metadata for.


## `Name = ::String`
Descriptive label that is associated with a fleet. Fleet names do not need to be unique.


## `Description = ::String`
Human-readable description of a fleet.


## `NewGameSessionProtectionPolicy = "NoProtection" or "FullProtection"`
Game session protection policy to apply to all new instances created in this fleet. Instances that already exist are not affected. You can set protection for individual instances using [UpdateGameSession](@ref).

*   **NoProtection** – The game session can be terminated during a scale-down event.

*   **FullProtection** – If the game session is in an `ACTIVE` status, it cannot be terminated during a scale-down event.


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
    using AWSSDK.GameLift
    GameLift.update_fleet_capacity([::AWSConfig], arguments::Dict)
    GameLift.update_fleet_capacity([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateFleetCapacity", arguments::Dict)
    gamelift([::AWSConfig], "UpdateFleetCapacity", FleetId=, <keyword arguments>)

# UpdateFleetCapacity Operation

Updates capacity settings for a fleet. Use this action to specify the number of EC2 instances (hosts) that you want this fleet to contain. Before calling this action, you may want to call [DescribeEC2InstanceLimits](@ref) to get the maximum capacity based on the fleet's EC2 instance type.

If you're using autoscaling (see [PutScalingPolicy](@ref)), you may want to specify a minimum and/or maximum capacity. If you don't provide these, autoscaling can set capacity anywhere between zero and the [service limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift).

To update fleet capacity, specify the fleet ID and the number of instances you want the fleet to host. If successful, Amazon GameLift starts or terminates instances so that the fleet's active instance count matches the desired instance count. You can view a fleet's current capacity information by calling [DescribeFleetCapacity](@ref). If the desired instance count is higher than the instance type's limit, the "Limit Exceeded" exception occurs.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

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
    using AWSSDK.GameLift
    GameLift.update_fleet_port_settings([::AWSConfig], arguments::Dict)
    GameLift.update_fleet_port_settings([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.gamelift
    gamelift([::AWSConfig], "UpdateFleetPortSettings", arguments::Dict)
    gamelift([::AWSConfig], "UpdateFleetPortSettings", FleetId=, <keyword arguments>)

# UpdateFleetPortSettings Operation

Updates port settings for a fleet. To update settings, specify the fleet ID to be updated and list the permissions you want to update. List the permissions you want to add in `InboundPermissionAuthorizations`, and permissions you want to remove in `InboundPermissionRevocations`. Permissions to be removed must match existing fleet permissions. If successful, the fleet ID for the updated fleet is returned.

Fleet-related operations include:

*   [CreateFleet](@ref)

*   [ListFleets](@ref)

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

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
    using AWSSDK.GameLift
    GameLift.update_game_session([::AWSConfig], arguments::Dict)
    GameLift.update_game_session([::AWSConfig]; GameSessionId=, <keyword arguments>)

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

*   **NoProtection** – The game session can be terminated during a scale-down event.

*   **FullProtection** – If the game session is in an `ACTIVE` status, it cannot be terminated during a scale-down event.




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
    using AWSSDK.GameLift
    GameLift.update_game_session_queue([::AWSConfig], arguments::Dict)
    GameLift.update_game_session_queue([::AWSConfig]; Name=, <keyword arguments>)

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
Descriptive label that is associated with queue. Queue names must be unique within each region.


## `TimeoutInSeconds = ::Int`
Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status.


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
    using AWSSDK.GameLift
    GameLift.update_runtime_configuration([::AWSConfig], arguments::Dict)
    GameLift.update_runtime_configuration([::AWSConfig]; FleetId=, RuntimeConfiguration=)

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

*   Describe fleets:

    *   [DescribeFleetAttributes](@ref)

    *   [DescribeFleetPortSettings](@ref)

    *   [DescribeFleetUtilization](@ref)

    *   [DescribeRuntimeConfiguration](@ref)

    *   [DescribeFleetEvents](@ref)

*   Update fleets:

    *   [UpdateFleetAttributes](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [UpdateFleetPortSettings](@ref)

    *   [UpdateRuntimeConfiguration](@ref)

*   Manage fleet capacity:

    *   [DescribeFleetCapacity](@ref)

    *   [UpdateFleetCapacity](@ref)

    *   [PutScalingPolicy](@ref) (automatic scaling)

    *   [DescribeScalingPolicies](@ref) (automatic scaling)

    *   [DeleteScalingPolicy](@ref) (automatic scaling)

    *   [DescribeEC2InstanceLimits](@ref)

*   [DeleteFleet](@ref)

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




end # module GameLift


#==============================================================================#
# End of file
#==============================================================================#
