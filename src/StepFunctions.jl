#==============================================================================#
# StepFunctions.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/states-2016-11-23.normal.json
#==============================================================================#

__precompile__()

module StepFunctions

using AWSCore


"""
    using AWSSDK.StepFunctions.create_activity
    create_activity([::AWSConfig], arguments::Dict)
    create_activity([::AWSConfig]; name=)

    using AWSCore.Services.states
    states([::AWSConfig], "CreateActivity", arguments::Dict)
    states([::AWSConfig], "CreateActivity", name=)

# CreateActivity Operation

Creates an activity. An activity is a task which you write in any programming language and host on any machine which has access to AWS Step Functions. Activities must poll Step Functions using the `GetActivityTask` API action and respond using `SendTask*` API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.

# Arguments

## `name = ::String` -- *Required*
The name of the activity to create. This name must be unique for your AWS account and region for 90 days. For more information, see [Limits Related to State Machine Executions](http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions) in the *AWS Step Functions Developer Guide*.

A name must *not* contain:

*   whitespace

*   brackets `< > { } [ ]`

*   wildcard characters `? *`

*   special characters `" # % \\ ^ | ~ ` \$ & , ; : /`

*   control characters (`U+0000-001F`, `U+007F-009F`)




# Returns

`CreateActivityOutput`

# Exceptions

`ActivityLimitExceeded` or `InvalidName`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateActivity)
"""
@inline create_activity(aws::AWSConfig=default_aws_config(); args...) = create_activity(aws, args)

@inline create_activity(aws::AWSConfig, args) = AWSCore.Services.states(aws, "CreateActivity", args)

@inline create_activity(args) = create_activity(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.create_state_machine
    create_state_machine([::AWSConfig], arguments::Dict)
    create_state_machine([::AWSConfig]; name=, definition=, roleArn=)

    using AWSCore.Services.states
    states([::AWSConfig], "CreateStateMachine", arguments::Dict)
    states([::AWSConfig], "CreateStateMachine", name=, definition=, roleArn=)

# CreateStateMachine Operation

Creates a state machine. A state machine consists of a collection of states that can do work (`Task` states), determine to which states to transition next (`Choice` states), stop an execution with an error (`Fail` states), and so on. State machines are specified using a JSON-based, structured language.

# Arguments

## `name = ::String` -- *Required*
The name of the state machine. This name must be unique for your AWS account and region for 90 days. For more information, see [Limits Related to State Machine Executions](http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions) in the *AWS Step Functions Developer Guide*.

A name must *not* contain:

*   whitespace

*   brackets `< > { } [ ]`

*   wildcard characters `? *`

*   special characters `" # % \\ ^ | ~ ` \$ & , ; : /`

*   control characters (`U+0000-001F`, `U+007F-009F`)


## `definition = ::String` -- *Required*
The Amazon States Language definition of the state machine.


## `roleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role to use for this state machine.




# Returns

`CreateStateMachineOutput`

# Exceptions

`InvalidArn`, `InvalidDefinition`, `InvalidName`, `StateMachineAlreadyExists`, `StateMachineDeleting` or `StateMachineLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachine)
"""
@inline create_state_machine(aws::AWSConfig=default_aws_config(); args...) = create_state_machine(aws, args)

@inline create_state_machine(aws::AWSConfig, args) = AWSCore.Services.states(aws, "CreateStateMachine", args)

@inline create_state_machine(args) = create_state_machine(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.delete_activity
    delete_activity([::AWSConfig], arguments::Dict)
    delete_activity([::AWSConfig]; activityArn=)

    using AWSCore.Services.states
    states([::AWSConfig], "DeleteActivity", arguments::Dict)
    states([::AWSConfig], "DeleteActivity", activityArn=)

# DeleteActivity Operation

Deletes an activity.

# Arguments

## `activityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the activity to delete.




# Returns

`DeleteActivityOutput`

# Exceptions

`InvalidArn`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteActivity)
"""
@inline delete_activity(aws::AWSConfig=default_aws_config(); args...) = delete_activity(aws, args)

@inline delete_activity(aws::AWSConfig, args) = AWSCore.Services.states(aws, "DeleteActivity", args)

@inline delete_activity(args) = delete_activity(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.delete_state_machine
    delete_state_machine([::AWSConfig], arguments::Dict)
    delete_state_machine([::AWSConfig]; stateMachineArn=)

    using AWSCore.Services.states
    states([::AWSConfig], "DeleteStateMachine", arguments::Dict)
    states([::AWSConfig], "DeleteStateMachine", stateMachineArn=)

# DeleteStateMachine Operation

Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to `DELETING` and begins the deletion process. Each state machine execution is deleted the next time it makes a state transition.

**Note**
> The state machine itself is deleted after all executions are completed or deleted.

# Arguments

## `stateMachineArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the state machine to delete.




# Returns

`DeleteStateMachineOutput`

# Exceptions

`InvalidArn`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachine)
"""
@inline delete_state_machine(aws::AWSConfig=default_aws_config(); args...) = delete_state_machine(aws, args)

@inline delete_state_machine(aws::AWSConfig, args) = AWSCore.Services.states(aws, "DeleteStateMachine", args)

@inline delete_state_machine(args) = delete_state_machine(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.describe_activity
    describe_activity([::AWSConfig], arguments::Dict)
    describe_activity([::AWSConfig]; activityArn=)

    using AWSCore.Services.states
    states([::AWSConfig], "DescribeActivity", arguments::Dict)
    states([::AWSConfig], "DescribeActivity", activityArn=)

# DescribeActivity Operation

Describes an activity.

# Arguments

## `activityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the activity to describe.




# Returns

`DescribeActivityOutput`

# Exceptions

`ActivityDoesNotExist` or `InvalidArn`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeActivity)
"""
@inline describe_activity(aws::AWSConfig=default_aws_config(); args...) = describe_activity(aws, args)

@inline describe_activity(aws::AWSConfig, args) = AWSCore.Services.states(aws, "DescribeActivity", args)

@inline describe_activity(args) = describe_activity(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.describe_execution
    describe_execution([::AWSConfig], arguments::Dict)
    describe_execution([::AWSConfig]; executionArn=)

    using AWSCore.Services.states
    states([::AWSConfig], "DescribeExecution", arguments::Dict)
    states([::AWSConfig], "DescribeExecution", executionArn=)

# DescribeExecution Operation

Describes an execution.

# Arguments

## `executionArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the execution to describe.




# Returns

`DescribeExecutionOutput`

# Exceptions

`ExecutionDoesNotExist` or `InvalidArn`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeExecution)
"""
@inline describe_execution(aws::AWSConfig=default_aws_config(); args...) = describe_execution(aws, args)

@inline describe_execution(aws::AWSConfig, args) = AWSCore.Services.states(aws, "DescribeExecution", args)

@inline describe_execution(args) = describe_execution(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.describe_state_machine
    describe_state_machine([::AWSConfig], arguments::Dict)
    describe_state_machine([::AWSConfig]; stateMachineArn=)

    using AWSCore.Services.states
    states([::AWSConfig], "DescribeStateMachine", arguments::Dict)
    states([::AWSConfig], "DescribeStateMachine", stateMachineArn=)

# DescribeStateMachine Operation

Describes a state machine.

# Arguments

## `stateMachineArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the state machine to describe.




# Returns

`DescribeStateMachineOutput`

# Exceptions

`InvalidArn` or `StateMachineDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachine)
"""
@inline describe_state_machine(aws::AWSConfig=default_aws_config(); args...) = describe_state_machine(aws, args)

@inline describe_state_machine(aws::AWSConfig, args) = AWSCore.Services.states(aws, "DescribeStateMachine", args)

@inline describe_state_machine(args) = describe_state_machine(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.describe_state_machine_for_execution
    describe_state_machine_for_execution([::AWSConfig], arguments::Dict)
    describe_state_machine_for_execution([::AWSConfig]; executionArn=)

    using AWSCore.Services.states
    states([::AWSConfig], "DescribeStateMachineForExecution", arguments::Dict)
    states([::AWSConfig], "DescribeStateMachineForExecution", executionArn=)

# DescribeStateMachineForExecution Operation

Describes the state machine associated with a specific execution.

# Arguments

## `executionArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the execution you want state machine information for.




# Returns

`DescribeStateMachineForExecutionOutput`

# Exceptions

`ExecutionDoesNotExist` or `InvalidArn`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineForExecution)
"""
@inline describe_state_machine_for_execution(aws::AWSConfig=default_aws_config(); args...) = describe_state_machine_for_execution(aws, args)

@inline describe_state_machine_for_execution(aws::AWSConfig, args) = AWSCore.Services.states(aws, "DescribeStateMachineForExecution", args)

@inline describe_state_machine_for_execution(args) = describe_state_machine_for_execution(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.get_activity_task
    get_activity_task([::AWSConfig], arguments::Dict)
    get_activity_task([::AWSConfig]; activityArn=, <keyword arguments>)

    using AWSCore.Services.states
    states([::AWSConfig], "GetActivityTask", arguments::Dict)
    states([::AWSConfig], "GetActivityTask", activityArn=, <keyword arguments>)

# GetActivityTask Operation

Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a `taskToken` with a null string.

**Important**
> Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).

# Arguments

## `activityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task using [CreateActivity](@ref).)


## `workerName = ::String`
You can provide an arbitrary name in order to identify the worker that the task is assigned to. This name is used when it is logged in the execution history.




# Returns

`GetActivityTaskOutput`

# Exceptions

`ActivityDoesNotExist`, `ActivityWorkerLimitExceeded` or `InvalidArn`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetActivityTask)
"""
@inline get_activity_task(aws::AWSConfig=default_aws_config(); args...) = get_activity_task(aws, args)

@inline get_activity_task(aws::AWSConfig, args) = AWSCore.Services.states(aws, "GetActivityTask", args)

@inline get_activity_task(args) = get_activity_task(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.get_execution_history
    get_execution_history([::AWSConfig], arguments::Dict)
    get_execution_history([::AWSConfig]; executionArn=, <keyword arguments>)

    using AWSCore.Services.states
    states([::AWSConfig], "GetExecutionHistory", arguments::Dict)
    states([::AWSConfig], "GetExecutionHistory", executionArn=, <keyword arguments>)

# GetExecutionHistory Operation

Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the `timeStamp` of the events. Use the `reverseOrder` parameter to get the latest events first.

If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.

# Arguments

## `executionArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the execution.


## `maxResults = ::Int`
The maximum number of results that are returned per call. You can use `nextToken` to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.

This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.


## `reverseOrder = ::Bool`
Lists events in descending order of their `timeStamp`.


## `nextToken = ::String`
If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.

The configured `maxResults` determines how many results can be returned in a single call.




# Returns

`GetExecutionHistoryOutput`

# Exceptions

`ExecutionDoesNotExist`, `InvalidArn` or `InvalidToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetExecutionHistory)
"""
@inline get_execution_history(aws::AWSConfig=default_aws_config(); args...) = get_execution_history(aws, args)

@inline get_execution_history(aws::AWSConfig, args) = AWSCore.Services.states(aws, "GetExecutionHistory", args)

@inline get_execution_history(args) = get_execution_history(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.list_activities
    list_activities([::AWSConfig], arguments::Dict)
    list_activities([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.states
    states([::AWSConfig], "ListActivities", arguments::Dict)
    states([::AWSConfig], "ListActivities", <keyword arguments>)

# ListActivities Operation

Lists the existing activities.

If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.

# Arguments

## `maxResults = ::Int`
The maximum number of results that are returned per call. You can use `nextToken` to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.

This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.


## `nextToken = ::String`
If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.

The configured `maxResults` determines how many results can be returned in a single call.




# Returns

`ListActivitiesOutput`

# Exceptions

`InvalidToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListActivities)
"""
@inline list_activities(aws::AWSConfig=default_aws_config(); args...) = list_activities(aws, args)

@inline list_activities(aws::AWSConfig, args) = AWSCore.Services.states(aws, "ListActivities", args)

@inline list_activities(args) = list_activities(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.list_executions
    list_executions([::AWSConfig], arguments::Dict)
    list_executions([::AWSConfig]; stateMachineArn=, <keyword arguments>)

    using AWSCore.Services.states
    states([::AWSConfig], "ListExecutions", arguments::Dict)
    states([::AWSConfig], "ListExecutions", stateMachineArn=, <keyword arguments>)

# ListExecutions Operation

Lists the executions of a state machine that meet the filtering criteria.

If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.

# Arguments

## `stateMachineArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the state machine whose executions is listed.


## `statusFilter = "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT" or "ABORTED"`
If specified, only list the executions whose current execution status matches the given filter.


## `maxResults = ::Int`
The maximum number of results that are returned per call. You can use `nextToken` to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.

This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.


## `nextToken = ::String`
If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.

The configured `maxResults` determines how many results can be returned in a single call.




# Returns

`ListExecutionsOutput`

# Exceptions

`InvalidArn`, `InvalidToken` or `StateMachineDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListExecutions)
"""
@inline list_executions(aws::AWSConfig=default_aws_config(); args...) = list_executions(aws, args)

@inline list_executions(aws::AWSConfig, args) = AWSCore.Services.states(aws, "ListExecutions", args)

@inline list_executions(args) = list_executions(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.list_state_machines
    list_state_machines([::AWSConfig], arguments::Dict)
    list_state_machines([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.states
    states([::AWSConfig], "ListStateMachines", arguments::Dict)
    states([::AWSConfig], "ListStateMachines", <keyword arguments>)

# ListStateMachines Operation

Lists the existing state machines.

If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.

# Arguments

## `maxResults = ::Int`
The maximum number of results that are returned per call. You can use `nextToken` to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.

This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.


## `nextToken = ::String`
If a `nextToken` is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextToken`. Keep all other arguments unchanged.

The configured `maxResults` determines how many results can be returned in a single call.




# Returns

`ListStateMachinesOutput`

# Exceptions

`InvalidToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachines)
"""
@inline list_state_machines(aws::AWSConfig=default_aws_config(); args...) = list_state_machines(aws, args)

@inline list_state_machines(aws::AWSConfig, args) = AWSCore.Services.states(aws, "ListStateMachines", args)

@inline list_state_machines(args) = list_state_machines(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.send_task_failure
    send_task_failure([::AWSConfig], arguments::Dict)
    send_task_failure([::AWSConfig]; taskToken=, <keyword arguments>)

    using AWSCore.Services.states
    states([::AWSConfig], "SendTaskFailure", arguments::Dict)
    states([::AWSConfig], "SendTaskFailure", taskToken=, <keyword arguments>)

# SendTaskFailure Operation

Used by workers to report that the task identified by the `taskToken` failed.

# Arguments

## `taskToken = ::String` -- *Required*
The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTask::taskToken).


## `error = ::String`
An arbitrary error code that identifies the cause of the failure.


## `cause = ::String`
A more detailed explanation of the cause of the failure.




# Returns

`SendTaskFailureOutput`

# Exceptions

`TaskDoesNotExist`, `InvalidToken` or `TaskTimedOut`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskFailure)
"""
@inline send_task_failure(aws::AWSConfig=default_aws_config(); args...) = send_task_failure(aws, args)

@inline send_task_failure(aws::AWSConfig, args) = AWSCore.Services.states(aws, "SendTaskFailure", args)

@inline send_task_failure(args) = send_task_failure(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.send_task_heartbeat
    send_task_heartbeat([::AWSConfig], arguments::Dict)
    send_task_heartbeat([::AWSConfig]; taskToken=)

    using AWSCore.Services.states
    states([::AWSConfig], "SendTaskHeartbeat", arguments::Dict)
    states([::AWSConfig], "SendTaskHeartbeat", taskToken=)

# SendTaskHeartbeat Operation

Used by workers to report to the service that the task represented by the specified `taskToken` is still making progress. This action resets the `Heartbeat` clock. The `Heartbeat` threshold is specified in the state machine's Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an `ActivityTimedOut` event.

**Note**
> The `Timeout` of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of [SendTaskHeartbeat](@ref) requests received.

**Note**
> This operation is only useful for long-lived tasks to report the liveliness of the task.

# Arguments

## `taskToken = ::String` -- *Required*
The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see [GetActivityTaskOutput\$taskToken](@ref)).




# Returns

`SendTaskHeartbeatOutput`

# Exceptions

`TaskDoesNotExist`, `InvalidToken` or `TaskTimedOut`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskHeartbeat)
"""
@inline send_task_heartbeat(aws::AWSConfig=default_aws_config(); args...) = send_task_heartbeat(aws, args)

@inline send_task_heartbeat(aws::AWSConfig, args) = AWSCore.Services.states(aws, "SendTaskHeartbeat", args)

@inline send_task_heartbeat(args) = send_task_heartbeat(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.send_task_success
    send_task_success([::AWSConfig], arguments::Dict)
    send_task_success([::AWSConfig]; taskToken=, output=)

    using AWSCore.Services.states
    states([::AWSConfig], "SendTaskSuccess", arguments::Dict)
    states([::AWSConfig], "SendTaskSuccess", taskToken=, output=)

# SendTaskSuccess Operation

Used by workers to report that the task identified by the `taskToken` completed successfully.

# Arguments

## `taskToken = ::String` -- *Required*
The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see [GetActivityTaskOutput\$taskToken](@ref)).


## `output = ::String` -- *Required*
The JSON output of the task.




# Returns

`SendTaskSuccessOutput`

# Exceptions

`TaskDoesNotExist`, `InvalidOutput`, `InvalidToken` or `TaskTimedOut`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskSuccess)
"""
@inline send_task_success(aws::AWSConfig=default_aws_config(); args...) = send_task_success(aws, args)

@inline send_task_success(aws::AWSConfig, args) = AWSCore.Services.states(aws, "SendTaskSuccess", args)

@inline send_task_success(args) = send_task_success(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.start_execution
    start_execution([::AWSConfig], arguments::Dict)
    start_execution([::AWSConfig]; stateMachineArn=, <keyword arguments>)

    using AWSCore.Services.states
    states([::AWSConfig], "StartExecution", arguments::Dict)
    states([::AWSConfig], "StartExecution", stateMachineArn=, <keyword arguments>)

# StartExecution Operation

Starts a state machine execution.

# Arguments

## `stateMachineArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the state machine to execute.


## `name = ::String`
The name of the execution. This name must be unique for your AWS account and region for 90 days. For more information, see [Limits Related to State Machine Executions](http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions) in the *AWS Step Functions Developer Guide*.

**Important**
> An execution can't use the name of another execution for 90 days.

When you make multiple `StartExecution` calls with the same name, the new execution doesn't run and the following rules apply:

*   When the original execution is open and the execution input from the new call is *different*, the `ExecutionAlreadyExists` message is returned.

*   When the original execution is open and the execution input from the new call is *identical*, the `Success` message is returned.

*   When the original execution is closed, the `ExecutionAlreadyExists` message is returned regardless of input.

A name must *not* contain:

*   whitespace

*   brackets `< > { } [ ]`

*   wildcard characters `? *`

*   special characters `" # % \\ ^ | ~ ` \$ & , ; : /`

*   control characters (`U+0000-001F`, `U+007F-009F`)


## `input = ::String`
The string that contains the JSON input data for the execution, for example:

`"input": "{\\"first_name\\" : \\"test\\"}"`

**Note**
> If you don't include any JSON input data, you still must include the two braces, for example: `"input": "{}"`




# Returns

`StartExecutionOutput`

# Exceptions

`ExecutionLimitExceeded`, `ExecutionAlreadyExists`, `InvalidArn`, `InvalidExecutionInput`, `InvalidName`, `StateMachineDoesNotExist` or `StateMachineDeleting`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StartExecution)
"""
@inline start_execution(aws::AWSConfig=default_aws_config(); args...) = start_execution(aws, args)

@inline start_execution(aws::AWSConfig, args) = AWSCore.Services.states(aws, "StartExecution", args)

@inline start_execution(args) = start_execution(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.stop_execution
    stop_execution([::AWSConfig], arguments::Dict)
    stop_execution([::AWSConfig]; executionArn=, <keyword arguments>)

    using AWSCore.Services.states
    states([::AWSConfig], "StopExecution", arguments::Dict)
    states([::AWSConfig], "StopExecution", executionArn=, <keyword arguments>)

# StopExecution Operation

Stops an execution.

# Arguments

## `executionArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the execution to stop.


## `error = ::String`
An arbitrary error code that identifies the cause of the termination.


## `cause = ::String`
A more detailed explanation of the cause of the termination.




# Returns

`StopExecutionOutput`

# Exceptions

`ExecutionDoesNotExist` or `InvalidArn`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StopExecution)
"""
@inline stop_execution(aws::AWSConfig=default_aws_config(); args...) = stop_execution(aws, args)

@inline stop_execution(aws::AWSConfig, args) = AWSCore.Services.states(aws, "StopExecution", args)

@inline stop_execution(args) = stop_execution(default_aws_config(), args)


"""
    using AWSSDK.StepFunctions.update_state_machine
    update_state_machine([::AWSConfig], arguments::Dict)
    update_state_machine([::AWSConfig]; stateMachineArn=, <keyword arguments>)

    using AWSCore.Services.states
    states([::AWSConfig], "UpdateStateMachine", arguments::Dict)
    states([::AWSConfig], "UpdateStateMachine", stateMachineArn=, <keyword arguments>)

# UpdateStateMachine Operation

Updates an existing state machine by modifying its `definition` and/or `roleArn`. Running executions will continue to use the previous `definition` and `roleArn`.

**Note**
> All `StartExecution` calls within a few seconds will use the updated `definition` and `roleArn`. Executions started immediately after calling `UpdateStateMachine` may use the previous state machine `definition` and `roleArn`. You must include at least one of `definition` or `roleArn` or you will receive a `MissingRequiredParameter` error.

# Arguments

## `stateMachineArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the state machine.


## `definition = ::String`
The Amazon States Language definition of the state machine.


## `roleArn = ::String`
The Amazon Resource Name (ARN) of the IAM role of the state machine.




# Returns

`UpdateStateMachineOutput`

# Exceptions

`InvalidArn`, `InvalidDefinition`, `MissingRequiredParameter`, `StateMachineDeleting` or `StateMachineDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachine)
"""
@inline update_state_machine(aws::AWSConfig=default_aws_config(); args...) = update_state_machine(aws, args)

@inline update_state_machine(aws::AWSConfig, args) = AWSCore.Services.states(aws, "UpdateStateMachine", args)

@inline update_state_machine(args) = update_state_machine(default_aws_config(), args)




end # module StepFunctions


#==============================================================================#
# End of file
#==============================================================================#
