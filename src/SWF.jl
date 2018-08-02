#==============================================================================#
# SWF.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/swf-2012-01-25.normal.json
#==============================================================================#

__precompile__()

module SWF

using AWSCore


"""
    using AWSSDK.SWF.count_closed_workflow_executions
    count_closed_workflow_executions([::AWSConfig], arguments::Dict)
    count_closed_workflow_executions([::AWSConfig]; domain=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "CountClosedWorkflowExecutions", arguments::Dict)
    swf([::AWSConfig], "CountClosedWorkflowExecutions", domain=, <keyword arguments>)

# CountClosedWorkflowExecutions Operation

Returns the number of closed workflow executions within the given domain that meet the specified filtering criteria.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `tagFilter.tag`: String constraint. The key is `swf:tagFilter.tag`.

    *   `typeFilter.name`: String constraint. The key is `swf:typeFilter.name`.

    *   `typeFilter.version`: String constraint. The key is `swf:typeFilter.version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain containing the workflow executions to count.


## `startTimeFilter = [ ... ]`
If specified, only workflow executions that meet the start time criteria of the filter are counted.

**Note**
> `startTimeFilter` and `closeTimeFilter` are mutually exclusive. You must specify one of these in a request but not both.
```
 startTimeFilter = [
        "oldestDate" => <required> timestamp,
        "latestDate" =>  timestamp
    ]
```

## `closeTimeFilter = [ ... ]`
If specified, only workflow executions that meet the close time criteria of the filter are counted.

**Note**
> `startTimeFilter` and `closeTimeFilter` are mutually exclusive. You must specify one of these in a request but not both.
```
 closeTimeFilter = [
        "oldestDate" => <required> timestamp,
        "latestDate" =>  timestamp
    ]
```

## `executionFilter = ["workflowId" => <required> ::String]`
If specified, only workflow executions matching the `WorkflowId` in the filter are counted.

**Note**
> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.


## `typeFilter = [ ... ]`
If specified, indicates the type of the workflow executions to be counted.

**Note**
> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.
```
 typeFilter = [
        "name" => <required> ::String,
        "version" =>  ::String
    ]
```

## `tagFilter = ["tag" => <required> ::String]`
If specified, only executions that have a tag that matches the filter are counted.

**Note**
> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.


## `closeStatusFilter = ["status" => <required> "COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW" or "TIMED_OUT"]`
If specified, only workflow executions that match this close status are counted. This filter has an affect only if `executionStatus` is specified as `CLOSED`.

**Note**
> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.




# Returns

`WorkflowExecutionCount`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/CountClosedWorkflowExecutions)
"""
@inline count_closed_workflow_executions(aws::AWSConfig=default_aws_config(); args...) = count_closed_workflow_executions(aws, args)

@inline count_closed_workflow_executions(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "CountClosedWorkflowExecutions", args)

@inline count_closed_workflow_executions(args) = count_closed_workflow_executions(default_aws_config(), args)


"""
    using AWSSDK.SWF.count_open_workflow_executions
    count_open_workflow_executions([::AWSConfig], arguments::Dict)
    count_open_workflow_executions([::AWSConfig]; domain=, startTimeFilter=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "CountOpenWorkflowExecutions", arguments::Dict)
    swf([::AWSConfig], "CountOpenWorkflowExecutions", domain=, startTimeFilter=, <keyword arguments>)

# CountOpenWorkflowExecutions Operation

Returns the number of open workflow executions within the given domain that meet the specified filtering criteria.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `tagFilter.tag`: String constraint. The key is `swf:tagFilter.tag`.

    *   `typeFilter.name`: String constraint. The key is `swf:typeFilter.name`.

    *   `typeFilter.version`: String constraint. The key is `swf:typeFilter.version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain containing the workflow executions to count.


## `startTimeFilter = [ ... ]` -- *Required*
Specifies the start time criteria that workflow executions must meet in order to be counted.
```
 startTimeFilter = [
        "oldestDate" => <required> timestamp,
        "latestDate" =>  timestamp
    ]
```

## `typeFilter = [ ... ]`
Specifies the type of the workflow executions to be counted.

**Note**
> `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.
```
 typeFilter = [
        "name" => <required> ::String,
        "version" =>  ::String
    ]
```

## `tagFilter = ["tag" => <required> ::String]`
If specified, only executions that have a tag that matches the filter are counted.

**Note**
> `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.


## `executionFilter = ["workflowId" => <required> ::String]`
If specified, only workflow executions matching the `WorkflowId` in the filter are counted.

**Note**
> `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.




# Returns

`WorkflowExecutionCount`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/CountOpenWorkflowExecutions)
"""
@inline count_open_workflow_executions(aws::AWSConfig=default_aws_config(); args...) = count_open_workflow_executions(aws, args)

@inline count_open_workflow_executions(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "CountOpenWorkflowExecutions", args)

@inline count_open_workflow_executions(args) = count_open_workflow_executions(default_aws_config(), args)


"""
    using AWSSDK.SWF.count_pending_activity_tasks
    count_pending_activity_tasks([::AWSConfig], arguments::Dict)
    count_pending_activity_tasks([::AWSConfig]; domain=, taskList=)

    using AWSCore.Services.swf
    swf([::AWSConfig], "CountPendingActivityTasks", arguments::Dict)
    swf([::AWSConfig], "CountPendingActivityTasks", domain=, taskList=)

# CountPendingActivityTasks Operation

Returns the estimated number of activity tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no activity task was ever scheduled in then `0` is returned.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the `taskList.name` parameter by using a `Condition` element with the `swf:taskList.name` key to allow the action to access only certain task lists.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain that contains the task list.


## `taskList = ["name" => <required> ::String]` -- *Required*
The name of the task list.




# Returns

`PendingTaskCount`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/CountPendingActivityTasks)
"""
@inline count_pending_activity_tasks(aws::AWSConfig=default_aws_config(); args...) = count_pending_activity_tasks(aws, args)

@inline count_pending_activity_tasks(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "CountPendingActivityTasks", args)

@inline count_pending_activity_tasks(args) = count_pending_activity_tasks(default_aws_config(), args)


"""
    using AWSSDK.SWF.count_pending_decision_tasks
    count_pending_decision_tasks([::AWSConfig], arguments::Dict)
    count_pending_decision_tasks([::AWSConfig]; domain=, taskList=)

    using AWSCore.Services.swf
    swf([::AWSConfig], "CountPendingDecisionTasks", arguments::Dict)
    swf([::AWSConfig], "CountPendingDecisionTasks", domain=, taskList=)

# CountPendingDecisionTasks Operation

Returns the estimated number of decision tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no decision task was ever scheduled in then `0` is returned.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the `taskList.name` parameter by using a `Condition` element with the `swf:taskList.name` key to allow the action to access only certain task lists.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain that contains the task list.


## `taskList = ["name" => <required> ::String]` -- *Required*
The name of the task list.




# Returns

`PendingTaskCount`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/CountPendingDecisionTasks)
"""
@inline count_pending_decision_tasks(aws::AWSConfig=default_aws_config(); args...) = count_pending_decision_tasks(aws, args)

@inline count_pending_decision_tasks(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "CountPendingDecisionTasks", args)

@inline count_pending_decision_tasks(args) = count_pending_decision_tasks(default_aws_config(), args)


"""
    using AWSSDK.SWF.deprecate_activity_type
    deprecate_activity_type([::AWSConfig], arguments::Dict)
    deprecate_activity_type([::AWSConfig]; domain=, activityType=)

    using AWSCore.Services.swf
    swf([::AWSConfig], "DeprecateActivityType", arguments::Dict)
    swf([::AWSConfig], "DeprecateActivityType", domain=, activityType=)

# DeprecateActivityType Operation

Deprecates the specified *activity type*. After an activity type has been deprecated, you cannot create new tasks of that activity type. Tasks of this type that were scheduled before the type was deprecated continue to run.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `activityType.name`: String constraint. The key is `swf:activityType.name`.

    *   `activityType.version`: String constraint. The key is `swf:activityType.version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain in which the activity type is registered.


## `activityType = [ ... ]` -- *Required*
The activity type to deprecate.
```
 activityType = [
        "name" => <required> ::String,
        "version" => <required> ::String
    ]
```



# Exceptions

`UnknownResourceFault`, `TypeDeprecatedFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/DeprecateActivityType)
"""
@inline deprecate_activity_type(aws::AWSConfig=default_aws_config(); args...) = deprecate_activity_type(aws, args)

@inline deprecate_activity_type(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "DeprecateActivityType", args)

@inline deprecate_activity_type(args) = deprecate_activity_type(default_aws_config(), args)


"""
    using AWSSDK.SWF.deprecate_domain
    deprecate_domain([::AWSConfig], arguments::Dict)
    deprecate_domain([::AWSConfig]; name=)

    using AWSCore.Services.swf
    swf([::AWSConfig], "DeprecateDomain", arguments::Dict)
    swf([::AWSConfig], "DeprecateDomain", name=)

# DeprecateDomain Operation

Deprecates the specified domain. After a domain has been deprecated it cannot be used to create new workflow executions or register new types. However, you can still use visibility actions on this domain. Deprecating a domain also deprecates all activity and workflow types registered in the domain. Executions that were started before the domain was deprecated continues to run.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `name = ::String` -- *Required*
The name of the domain to deprecate.




# Exceptions

`UnknownResourceFault`, `DomainDeprecatedFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/DeprecateDomain)
"""
@inline deprecate_domain(aws::AWSConfig=default_aws_config(); args...) = deprecate_domain(aws, args)

@inline deprecate_domain(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "DeprecateDomain", args)

@inline deprecate_domain(args) = deprecate_domain(default_aws_config(), args)


"""
    using AWSSDK.SWF.deprecate_workflow_type
    deprecate_workflow_type([::AWSConfig], arguments::Dict)
    deprecate_workflow_type([::AWSConfig]; domain=, workflowType=)

    using AWSCore.Services.swf
    swf([::AWSConfig], "DeprecateWorkflowType", arguments::Dict)
    swf([::AWSConfig], "DeprecateWorkflowType", domain=, workflowType=)

# DeprecateWorkflowType Operation

Deprecates the specified *workflow type*. After a workflow type has been deprecated, you cannot create new executions of that type. Executions that were started before the type was deprecated continues to run. A deprecated workflow type may still be used when calling visibility actions.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `workflowType.name`: String constraint. The key is `swf:workflowType.name`.

    *   `workflowType.version`: String constraint. The key is `swf:workflowType.version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain in which the workflow type is registered.


## `workflowType = [ ... ]` -- *Required*
The workflow type to deprecate.
```
 workflowType = [
        "name" => <required> ::String,
        "version" => <required> ::String
    ]
```



# Exceptions

`UnknownResourceFault`, `TypeDeprecatedFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/DeprecateWorkflowType)
"""
@inline deprecate_workflow_type(aws::AWSConfig=default_aws_config(); args...) = deprecate_workflow_type(aws, args)

@inline deprecate_workflow_type(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "DeprecateWorkflowType", args)

@inline deprecate_workflow_type(args) = deprecate_workflow_type(default_aws_config(), args)


"""
    using AWSSDK.SWF.describe_activity_type
    describe_activity_type([::AWSConfig], arguments::Dict)
    describe_activity_type([::AWSConfig]; domain=, activityType=)

    using AWSCore.Services.swf
    swf([::AWSConfig], "DescribeActivityType", arguments::Dict)
    swf([::AWSConfig], "DescribeActivityType", domain=, activityType=)

# DescribeActivityType Operation

Returns information about the specified activity type. This includes configuration settings provided when the type was registered and other general information about the type.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `activityType.name`: String constraint. The key is `swf:activityType.name`.

    *   `activityType.version`: String constraint. The key is `swf:activityType.version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain in which the activity type is registered.


## `activityType = [ ... ]` -- *Required*
The activity type to get information about. Activity types are identified by the `name` and `version` that were supplied when the activity was registered.
```
 activityType = [
        "name" => <required> ::String,
        "version" => <required> ::String
    ]
```



# Returns

`ActivityTypeDetail`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/DescribeActivityType)
"""
@inline describe_activity_type(aws::AWSConfig=default_aws_config(); args...) = describe_activity_type(aws, args)

@inline describe_activity_type(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "DescribeActivityType", args)

@inline describe_activity_type(args) = describe_activity_type(default_aws_config(), args)


"""
    using AWSSDK.SWF.describe_domain
    describe_domain([::AWSConfig], arguments::Dict)
    describe_domain([::AWSConfig]; name=)

    using AWSCore.Services.swf
    swf([::AWSConfig], "DescribeDomain", arguments::Dict)
    swf([::AWSConfig], "DescribeDomain", name=)

# DescribeDomain Operation

Returns information about the specified domain, including description and status.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `name = ::String` -- *Required*
The name of the domain to describe.




# Returns

`DomainDetail`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/DescribeDomain)
"""
@inline describe_domain(aws::AWSConfig=default_aws_config(); args...) = describe_domain(aws, args)

@inline describe_domain(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "DescribeDomain", args)

@inline describe_domain(args) = describe_domain(default_aws_config(), args)


"""
    using AWSSDK.SWF.describe_workflow_execution
    describe_workflow_execution([::AWSConfig], arguments::Dict)
    describe_workflow_execution([::AWSConfig]; domain=, execution=)

    using AWSCore.Services.swf
    swf([::AWSConfig], "DescribeWorkflowExecution", arguments::Dict)
    swf([::AWSConfig], "DescribeWorkflowExecution", domain=, execution=)

# DescribeWorkflowExecution Operation

Returns information about the specified workflow execution including its type and some statistics.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain containing the workflow execution.


## `execution = [ ... ]` -- *Required*
The workflow execution to describe.
```
 execution = [
        "workflowId" => <required> ::String,
        "runId" => <required> ::String
    ]
```



# Returns

`WorkflowExecutionDetail`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/DescribeWorkflowExecution)
"""
@inline describe_workflow_execution(aws::AWSConfig=default_aws_config(); args...) = describe_workflow_execution(aws, args)

@inline describe_workflow_execution(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "DescribeWorkflowExecution", args)

@inline describe_workflow_execution(args) = describe_workflow_execution(default_aws_config(), args)


"""
    using AWSSDK.SWF.describe_workflow_type
    describe_workflow_type([::AWSConfig], arguments::Dict)
    describe_workflow_type([::AWSConfig]; domain=, workflowType=)

    using AWSCore.Services.swf
    swf([::AWSConfig], "DescribeWorkflowType", arguments::Dict)
    swf([::AWSConfig], "DescribeWorkflowType", domain=, workflowType=)

# DescribeWorkflowType Operation

Returns information about the specified *workflow type*. This includes configuration settings specified when the type was registered and other information such as creation date, current status, etc.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `workflowType.name`: String constraint. The key is `swf:workflowType.name`.

    *   `workflowType.version`: String constraint. The key is `swf:workflowType.version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain in which this workflow type is registered.


## `workflowType = [ ... ]` -- *Required*
The workflow type to describe.
```
 workflowType = [
        "name" => <required> ::String,
        "version" => <required> ::String
    ]
```



# Returns

`WorkflowTypeDetail`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/DescribeWorkflowType)
"""
@inline describe_workflow_type(aws::AWSConfig=default_aws_config(); args...) = describe_workflow_type(aws, args)

@inline describe_workflow_type(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "DescribeWorkflowType", args)

@inline describe_workflow_type(args) = describe_workflow_type(default_aws_config(), args)


"""
    using AWSSDK.SWF.get_workflow_execution_history
    get_workflow_execution_history([::AWSConfig], arguments::Dict)
    get_workflow_execution_history([::AWSConfig]; domain=, execution=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "GetWorkflowExecutionHistory", arguments::Dict)
    swf([::AWSConfig], "GetWorkflowExecutionHistory", domain=, execution=, <keyword arguments>)

# GetWorkflowExecutionHistory Operation

Returns the history of the specified workflow execution. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the `nextPageToken` returned by the initial call.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain containing the workflow execution.


## `execution = [ ... ]` -- *Required*
Specifies the workflow execution for which to return the history.
```
 execution = [
        "workflowId" => <required> ::String,
        "runId" => <required> ::String
    ]
```

## `nextPageToken = ::String`
If a `NextPageToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextPageToken`. Keep all other arguments unchanged.

The configured `maximumPageSize` determines how many results can be returned in a single call.


## `maximumPageSize = ::Int`
The maximum number of results that are returned per call. `nextPageToken` can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size *smaller* than the maximum.

This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.


## `reverseOrder = ::Bool`
When set to `true`, returns the events in reverse order. By default the results are returned in ascending order of the `eventTimeStamp` of the events.




# Returns

`History`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/GetWorkflowExecutionHistory)
"""
@inline get_workflow_execution_history(aws::AWSConfig=default_aws_config(); args...) = get_workflow_execution_history(aws, args)

@inline get_workflow_execution_history(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "GetWorkflowExecutionHistory", args)

@inline get_workflow_execution_history(args) = get_workflow_execution_history(default_aws_config(), args)


"""
    using AWSSDK.SWF.list_activity_types
    list_activity_types([::AWSConfig], arguments::Dict)
    list_activity_types([::AWSConfig]; domain=, registrationStatus=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "ListActivityTypes", arguments::Dict)
    swf([::AWSConfig], "ListActivityTypes", domain=, registrationStatus=, <keyword arguments>)

# ListActivityTypes Operation

Returns information about all activities registered in the specified domain that match the specified name and registration status. The result includes information like creation date, current status of the activity, etc. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the `nextPageToken` returned by the initial call.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain in which the activity types have been registered.


## `name = ::String`
If specified, only lists the activity types that have this name.


## `registrationStatus = "REGISTERED" or "DEPRECATED"` -- *Required*
Specifies the registration status of the activity types to list.


## `nextPageToken = ::String`
If a `NextPageToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextPageToken`. Keep all other arguments unchanged.

The configured `maximumPageSize` determines how many results can be returned in a single call.


## `maximumPageSize = ::Int`
The maximum number of results that are returned per call. `nextPageToken` can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size *smaller* than the maximum.

This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.


## `reverseOrder = ::Bool`
When set to `true`, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by `name` of the activity types.




# Returns

`ActivityTypeInfos`

# Exceptions

`OperationNotPermittedFault` or `UnknownResourceFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/ListActivityTypes)
"""
@inline list_activity_types(aws::AWSConfig=default_aws_config(); args...) = list_activity_types(aws, args)

@inline list_activity_types(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "ListActivityTypes", args)

@inline list_activity_types(args) = list_activity_types(default_aws_config(), args)


"""
    using AWSSDK.SWF.list_closed_workflow_executions
    list_closed_workflow_executions([::AWSConfig], arguments::Dict)
    list_closed_workflow_executions([::AWSConfig]; domain=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "ListClosedWorkflowExecutions", arguments::Dict)
    swf([::AWSConfig], "ListClosedWorkflowExecutions", domain=, <keyword arguments>)

# ListClosedWorkflowExecutions Operation

Returns a list of closed workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `tagFilter.tag`: String constraint. The key is `swf:tagFilter.tag`.

    *   `typeFilter.name`: String constraint. The key is `swf:typeFilter.name`.

    *   `typeFilter.version`: String constraint. The key is `swf:typeFilter.version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain that contains the workflow executions to list.


## `startTimeFilter = [ ... ]`
If specified, the workflow executions are included in the returned results based on whether their start times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their start times.

**Note**
> `startTimeFilter` and `closeTimeFilter` are mutually exclusive. You must specify one of these in a request but not both.
```
 startTimeFilter = [
        "oldestDate" => <required> timestamp,
        "latestDate" =>  timestamp
    ]
```

## `closeTimeFilter = [ ... ]`
If specified, the workflow executions are included in the returned results based on whether their close times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their close times.

**Note**
> `startTimeFilter` and `closeTimeFilter` are mutually exclusive. You must specify one of these in a request but not both.
```
 closeTimeFilter = [
        "oldestDate" => <required> timestamp,
        "latestDate" =>  timestamp
    ]
```

## `executionFilter = ["workflowId" => <required> ::String]`
If specified, only workflow executions matching the workflow ID specified in the filter are returned.

**Note**
> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.


## `closeStatusFilter = ["status" => <required> "COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW" or "TIMED_OUT"]`
If specified, only workflow executions that match this *close status* are listed. For example, if TERMINATED is specified, then only TERMINATED workflow executions are listed.

**Note**
> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.


## `typeFilter = [ ... ]`
If specified, only executions of the type specified in the filter are returned.

**Note**
> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.
```
 typeFilter = [
        "name" => <required> ::String,
        "version" =>  ::String
    ]
```

## `tagFilter = ["tag" => <required> ::String]`
If specified, only executions that have the matching tag are listed.

**Note**
> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.


## `nextPageToken = ::String`
If a `NextPageToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextPageToken`. Keep all other arguments unchanged.

The configured `maximumPageSize` determines how many results can be returned in a single call.


## `maximumPageSize = ::Int`
The maximum number of results that are returned per call. `nextPageToken` can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size *smaller* than the maximum.

This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.


## `reverseOrder = ::Bool`
When set to `true`, returns the results in reverse order. By default the results are returned in descending order of the start or the close time of the executions.




# Returns

`WorkflowExecutionInfos`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/ListClosedWorkflowExecutions)
"""
@inline list_closed_workflow_executions(aws::AWSConfig=default_aws_config(); args...) = list_closed_workflow_executions(aws, args)

@inline list_closed_workflow_executions(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "ListClosedWorkflowExecutions", args)

@inline list_closed_workflow_executions(args) = list_closed_workflow_executions(default_aws_config(), args)


"""
    using AWSSDK.SWF.list_domains
    list_domains([::AWSConfig], arguments::Dict)
    list_domains([::AWSConfig]; registrationStatus=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "ListDomains", arguments::Dict)
    swf([::AWSConfig], "ListDomains", registrationStatus=, <keyword arguments>)

# ListDomains Operation

Returns the list of domains registered in the account. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains. The element must be set to `arn:aws:swf::AccountID:domain/*`, where *AccountID* is the account ID, with no dashes.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `nextPageToken = ::String`
If a `NextPageToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextPageToken`. Keep all other arguments unchanged.

The configured `maximumPageSize` determines how many results can be returned in a single call.


## `registrationStatus = "REGISTERED" or "DEPRECATED"` -- *Required*
Specifies the registration status of the domains to list.


## `maximumPageSize = ::Int`
The maximum number of results that are returned per call. `nextPageToken` can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size *smaller* than the maximum.

This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.


## `reverseOrder = ::Bool`
When set to `true`, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by `name` of the domains.




# Returns

`DomainInfos`

# Exceptions

`OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/ListDomains)
"""
@inline list_domains(aws::AWSConfig=default_aws_config(); args...) = list_domains(aws, args)

@inline list_domains(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "ListDomains", args)

@inline list_domains(args) = list_domains(default_aws_config(), args)


"""
    using AWSSDK.SWF.list_open_workflow_executions
    list_open_workflow_executions([::AWSConfig], arguments::Dict)
    list_open_workflow_executions([::AWSConfig]; domain=, startTimeFilter=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "ListOpenWorkflowExecutions", arguments::Dict)
    swf([::AWSConfig], "ListOpenWorkflowExecutions", domain=, startTimeFilter=, <keyword arguments>)

# ListOpenWorkflowExecutions Operation

Returns a list of open workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.

**Note**
> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `tagFilter.tag`: String constraint. The key is `swf:tagFilter.tag`.

    *   `typeFilter.name`: String constraint. The key is `swf:typeFilter.name`.

    *   `typeFilter.version`: String constraint. The key is `swf:typeFilter.version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain that contains the workflow executions to list.


## `startTimeFilter = [ ... ]` -- *Required*
Workflow executions are included in the returned results based on whether their start times are within the range specified by this filter.
```
 startTimeFilter = [
        "oldestDate" => <required> timestamp,
        "latestDate" =>  timestamp
    ]
```

## `typeFilter = [ ... ]`
If specified, only executions of the type specified in the filter are returned.

**Note**
> `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.
```
 typeFilter = [
        "name" => <required> ::String,
        "version" =>  ::String
    ]
```

## `tagFilter = ["tag" => <required> ::String]`
If specified, only executions that have the matching tag are listed.

**Note**
> `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.


## `nextPageToken = ::String`
If a `NextPageToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextPageToken`. Keep all other arguments unchanged.

The configured `maximumPageSize` determines how many results can be returned in a single call.


## `maximumPageSize = ::Int`
The maximum number of results that are returned per call. `nextPageToken` can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size *smaller* than the maximum.

This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.


## `reverseOrder = ::Bool`
When set to `true`, returns the results in reverse order. By default the results are returned in descending order of the start time of the executions.


## `executionFilter = ["workflowId" => <required> ::String]`
If specified, only workflow executions matching the workflow ID specified in the filter are returned.

**Note**
> `executionFilter`, `typeFilter` and `tagFilter` are mutually exclusive. You can specify at most one of these in a request.




# Returns

`WorkflowExecutionInfos`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/ListOpenWorkflowExecutions)
"""
@inline list_open_workflow_executions(aws::AWSConfig=default_aws_config(); args...) = list_open_workflow_executions(aws, args)

@inline list_open_workflow_executions(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "ListOpenWorkflowExecutions", args)

@inline list_open_workflow_executions(args) = list_open_workflow_executions(default_aws_config(), args)


"""
    using AWSSDK.SWF.list_workflow_types
    list_workflow_types([::AWSConfig], arguments::Dict)
    list_workflow_types([::AWSConfig]; domain=, registrationStatus=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "ListWorkflowTypes", arguments::Dict)
    swf([::AWSConfig], "ListWorkflowTypes", domain=, registrationStatus=, <keyword arguments>)

# ListWorkflowTypes Operation

Returns information about workflow types in the specified domain. The results may be split into multiple pages that can be retrieved by making the call repeatedly.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain in which the workflow types have been registered.


## `name = ::String`
If specified, lists the workflow type with this name.


## `registrationStatus = "REGISTERED" or "DEPRECATED"` -- *Required*
Specifies the registration status of the workflow types to list.


## `nextPageToken = ::String`
If a `NextPageToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextPageToken`. Keep all other arguments unchanged.

The configured `maximumPageSize` determines how many results can be returned in a single call.


## `maximumPageSize = ::Int`
The maximum number of results that are returned per call. `nextPageToken` can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size *smaller* than the maximum.

This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.


## `reverseOrder = ::Bool`
When set to `true`, returns the results in reverse order. By default the results are returned in ascending alphabetical order of the `name` of the workflow types.




# Returns

`WorkflowTypeInfos`

# Exceptions

`OperationNotPermittedFault` or `UnknownResourceFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/ListWorkflowTypes)
"""
@inline list_workflow_types(aws::AWSConfig=default_aws_config(); args...) = list_workflow_types(aws, args)

@inline list_workflow_types(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "ListWorkflowTypes", args)

@inline list_workflow_types(args) = list_workflow_types(default_aws_config(), args)


"""
    using AWSSDK.SWF.poll_for_activity_task
    poll_for_activity_task([::AWSConfig], arguments::Dict)
    poll_for_activity_task([::AWSConfig]; domain=, taskList=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "PollForActivityTask", arguments::Dict)
    swf([::AWSConfig], "PollForActivityTask", domain=, taskList=, <keyword arguments>)

# PollForActivityTask Operation

Used by workers to get an [ActivityTask](@ref) from the specified activity `taskList`. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available. The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns an empty result. An empty result, in this context, means that an ActivityTask is returned, but that the value of taskToken is an empty string. If a task is returned, the worker should use its type to identify and process it correctly.

**Important**
> Workers should set their client side socket timeout to at least 70 seconds (10 seconds higher than the maximum time service may hold the poll request).

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the `taskList.name` parameter by using a `Condition` element with the `swf:taskList.name` key to allow the action to access only certain task lists.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain that contains the task lists being polled.


## `taskList = ["name" => <required> ::String]` -- *Required*
Specifies the task list to poll for activity tasks.

The specified string must not start or end with whitespace. It must not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any control characters (`\\u0000-\\u001f` | `\\u007f-\\u009f`). Also, it must not contain the literal string `arn`.


## `identity = ::String`
Identity of the worker making the request, recorded in the `ActivityTaskStarted` event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.




# Returns

`ActivityTask`

# Exceptions

`UnknownResourceFault`, `OperationNotPermittedFault` or `LimitExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/PollForActivityTask)
"""
@inline poll_for_activity_task(aws::AWSConfig=default_aws_config(); args...) = poll_for_activity_task(aws, args)

@inline poll_for_activity_task(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "PollForActivityTask", args)

@inline poll_for_activity_task(args) = poll_for_activity_task(default_aws_config(), args)


"""
    using AWSSDK.SWF.poll_for_decision_task
    poll_for_decision_task([::AWSConfig], arguments::Dict)
    poll_for_decision_task([::AWSConfig]; domain=, taskList=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "PollForDecisionTask", arguments::Dict)
    swf([::AWSConfig], "PollForDecisionTask", domain=, taskList=, <keyword arguments>)

# PollForDecisionTask Operation

Used by deciders to get a [DecisionTask](@ref) from the specified decision `taskList`. A decision task may be returned for any open workflow execution that is using the specified task list. The task includes a paginated view of the history of the workflow execution. The decider should use the workflow type and the history to determine how to properly handle the task.

This action initiates a long poll, where the service holds the HTTP connection open and responds as soon a task becomes available. If no decision task is available in the specified task list before the timeout of 60 seconds expires, an empty result is returned. An empty result, in this context, means that a DecisionTask is returned, but that the value of taskToken is an empty string.

**Important**
> Deciders should set their client side socket timeout to at least 70 seconds (10 seconds higher than the timeout).

**Important**
> Because the number of workflow history events for a single workflow execution might be very large, the result returned might be split up across a number of pages. To retrieve subsequent pages, make additional calls to `PollForDecisionTask` using the `nextPageToken` returned by the initial call. Note that you do *not* call `GetWorkflowExecutionHistory` with this `nextPageToken`. Instead, call `PollForDecisionTask` again.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the `taskList.name` parameter by using a `Condition` element with the `swf:taskList.name` key to allow the action to access only certain task lists.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain containing the task lists to poll.


## `taskList = ["name" => <required> ::String]` -- *Required*
Specifies the task list to poll for decision tasks.

The specified string must not start or end with whitespace. It must not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any control characters (`\\u0000-\\u001f` | `\\u007f-\\u009f`). Also, it must not contain the literal string `arn`.


## `identity = ::String`
Identity of the decider making the request, which is recorded in the DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.


## `nextPageToken = ::String`
If a `NextPageToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `nextPageToken`. Keep all other arguments unchanged.

The configured `maximumPageSize` determines how many results can be returned in a single call.

**Note**
> The `nextPageToken` returned by this action cannot be used with [GetWorkflowExecutionHistory](@ref) to get the next page. You must call [PollForDecisionTask](@ref) again (with the `nextPageToken`) to retrieve the next page of history records. Calling [PollForDecisionTask](@ref) with a `nextPageToken` doesn't return a new decision task.


## `maximumPageSize = ::Int`
The maximum number of results that are returned per call. `nextPageToken` can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size *smaller* than the maximum.

This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.


## `reverseOrder = ::Bool`
When set to `true`, returns the events in reverse order. By default the results are returned in ascending order of the `eventTimestamp` of the events.




# Returns

`DecisionTask`

# Exceptions

`UnknownResourceFault`, `OperationNotPermittedFault` or `LimitExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/PollForDecisionTask)
"""
@inline poll_for_decision_task(aws::AWSConfig=default_aws_config(); args...) = poll_for_decision_task(aws, args)

@inline poll_for_decision_task(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "PollForDecisionTask", args)

@inline poll_for_decision_task(args) = poll_for_decision_task(default_aws_config(), args)


"""
    using AWSSDK.SWF.record_activity_task_heartbeat
    record_activity_task_heartbeat([::AWSConfig], arguments::Dict)
    record_activity_task_heartbeat([::AWSConfig]; taskToken=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "RecordActivityTaskHeartbeat", arguments::Dict)
    swf([::AWSConfig], "RecordActivityTaskHeartbeat", taskToken=, <keyword arguments>)

# RecordActivityTaskHeartbeat Operation

Used by activity workers to report to the service that the [ActivityTask](@ref) represented by the specified `taskToken` is still making progress. The worker can also specify details of the progress, for example percent complete, using the `details` parameter. This action can also be used by the worker as a mechanism to check if cancellation is being requested for the activity task. If a cancellation is being attempted for the specified task, then the boolean `cancelRequested` flag returned by the service is set to `true`.

This action resets the `taskHeartbeatTimeout` clock. The `taskHeartbeatTimeout` is specified in [RegisterActivityType](@ref).

This action doesn't in itself create an event in the workflow execution history. However, if the task times out, the workflow execution history contains a `ActivityTaskTimedOut` event that contains the information from the last heartbeat generated by the activity worker.

**Note**
> The `taskStartToCloseTimeout` of an activity type is the maximum duration of an activity task, regardless of the number of [RecordActivityTaskHeartbeat](@ref) requests received. The `taskStartToCloseTimeout` is also specified in [RegisterActivityType](@ref).

**Note**
> This operation is only useful for long-lived activities to report liveliness of the task and to determine if a cancellation is being attempted.

**Important**
> If the `cancelRequested` flag returns `true`, a cancellation is being attempted. If the worker can cancel the activity, it should respond with [RespondActivityTaskCanceled](@ref). Otherwise, it should ignore the cancellation request.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `taskToken = ::String` -- *Required*
The `taskToken` of the [ActivityTask](@ref).

**Important**
> `taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results.


## `details = ::String`
If specified, contains details about the progress of the task.




# Returns

`ActivityTaskStatus`

# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/RecordActivityTaskHeartbeat)
"""
@inline record_activity_task_heartbeat(aws::AWSConfig=default_aws_config(); args...) = record_activity_task_heartbeat(aws, args)

@inline record_activity_task_heartbeat(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "RecordActivityTaskHeartbeat", args)

@inline record_activity_task_heartbeat(args) = record_activity_task_heartbeat(default_aws_config(), args)


"""
    using AWSSDK.SWF.register_activity_type
    register_activity_type([::AWSConfig], arguments::Dict)
    register_activity_type([::AWSConfig]; domain=, name=, version=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "RegisterActivityType", arguments::Dict)
    swf([::AWSConfig], "RegisterActivityType", domain=, name=, version=, <keyword arguments>)

# RegisterActivityType Operation

Registers a new *activity type* along with its configuration settings in the specified domain.

**Important**
> A `TypeAlreadyExists` fault is returned if the type already exists in the domain. You cannot change any configuration settings of the type after its registration, and it must be registered as a new version.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `defaultTaskList.name`: String constraint. The key is `swf:defaultTaskList.name`.

    *   `name`: String constraint. The key is `swf:name`.

    *   `version`: String constraint. The key is `swf:version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain in which this activity is to be registered.


## `name = ::String` -- *Required*
The name of the activity type within the domain.

The specified string must not start or end with whitespace. It must not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any control characters (`\\u0000-\\u001f` | `\\u007f-\\u009f`). Also, it must not contain the literal string `arn`.


## `version = ::String` -- *Required*
The version of the activity type.

**Note**
> The activity type consists of the name and version, the combination of which must be unique within the domain.

The specified string must not start or end with whitespace. It must not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any control characters (`\\u0000-\\u001f` | `\\u007f-\\u009f`). Also, it must not contain the literal string `arn`.


## `description = ::String`
A textual description of the activity type.


## `defaultTaskStartToCloseTimeout = ::String`
If set, specifies the default maximum duration that a worker can take to process tasks of this activity type. This default can be overridden when scheduling an activity task using the `ScheduleActivityTask` [Decision](@ref).

The duration is specified in seconds, an integer greater than or equal to `0`. You can use `NONE` to specify unlimited duration.


## `defaultTaskHeartbeatTimeout = ::String`
If set, specifies the default maximum time before which a worker processing a task of this type must report progress by calling [RecordActivityTaskHeartbeat](@ref). If the timeout is exceeded, the activity task is automatically timed out. This default can be overridden when scheduling an activity task using the `ScheduleActivityTask` [Decision](@ref). If the activity worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an `UnknownResource` fault. In this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should clean up the activity task.

The duration is specified in seconds, an integer greater than or equal to `0`. You can use `NONE` to specify unlimited duration.


## `defaultTaskList = ["name" => <required> ::String]`
If set, specifies the default task list to use for scheduling tasks of this activity type. This default task list is used if a task list isn't provided when a task is scheduled through the `ScheduleActivityTask` [Decision](@ref).


## `defaultTaskPriority = ::String`
The default task priority to assign to the activity type. If not assigned, then `0` is used. Valid values are integers that range from Java's `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE` (2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see [Setting Task Priority](http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html) in the *in the *Amazon SWF Developer Guide*.*.


## `defaultTaskScheduleToStartTimeout = ::String`
If set, specifies the default maximum duration that a task of this activity type can wait before being assigned to a worker. This default can be overridden when scheduling an activity task using the `ScheduleActivityTask` [Decision](@ref).

The duration is specified in seconds, an integer greater than or equal to `0`. You can use `NONE` to specify unlimited duration.


## `defaultTaskScheduleToCloseTimeout = ::String`
If set, specifies the default maximum duration for a task of this activity type. This default can be overridden when scheduling an activity task using the `ScheduleActivityTask` [Decision](@ref).

The duration is specified in seconds, an integer greater than or equal to `0`. You can use `NONE` to specify unlimited duration.




# Exceptions

`TypeAlreadyExistsFault`, `LimitExceededFault`, `UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/RegisterActivityType)
"""
@inline register_activity_type(aws::AWSConfig=default_aws_config(); args...) = register_activity_type(aws, args)

@inline register_activity_type(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "RegisterActivityType", args)

@inline register_activity_type(args) = register_activity_type(default_aws_config(), args)


"""
    using AWSSDK.SWF.register_domain
    register_domain([::AWSConfig], arguments::Dict)
    register_domain([::AWSConfig]; name=, workflowExecutionRetentionPeriodInDays=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "RegisterDomain", arguments::Dict)
    swf([::AWSConfig], "RegisterDomain", name=, workflowExecutionRetentionPeriodInDays=, <keyword arguments>)

# RegisterDomain Operation

Registers a new domain.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   You cannot use an IAM policy to control domain access for this action. The name of the domain being registered is available as the resource of this action.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `name = ::String` -- *Required*
Name of the domain to register. The name must be unique in the region that the domain is registered in.

The specified string must not start or end with whitespace. It must not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any control characters (`\\u0000-\\u001f` | `\\u007f-\\u009f`). Also, it must not contain the literal string `arn`.


## `description = ::String`
A text description of the domain.


## `workflowExecutionRetentionPeriodInDays = ::String` -- *Required*
The duration (in days) that records and histories of workflow executions on the domain should be kept by the service. After the retention period, the workflow execution isn't available in the results of visibility calls.

If you pass the value `NONE` or `0` (zero), then the workflow execution history isn't retained. As soon as the workflow execution completes, the execution record and its history are deleted.

The maximum workflow execution retention period is 90 days. For more information about Amazon SWF service limits, see: [Amazon SWF Service Limits](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html) in the *Amazon SWF Developer Guide*.




# Exceptions

`DomainAlreadyExistsFault`, `LimitExceededFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/RegisterDomain)
"""
@inline register_domain(aws::AWSConfig=default_aws_config(); args...) = register_domain(aws, args)

@inline register_domain(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "RegisterDomain", args)

@inline register_domain(args) = register_domain(default_aws_config(), args)


"""
    using AWSSDK.SWF.register_workflow_type
    register_workflow_type([::AWSConfig], arguments::Dict)
    register_workflow_type([::AWSConfig]; domain=, name=, version=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "RegisterWorkflowType", arguments::Dict)
    swf([::AWSConfig], "RegisterWorkflowType", domain=, name=, version=, <keyword arguments>)

# RegisterWorkflowType Operation

Registers a new *workflow type* and its configuration settings in the specified domain.

The retention period for the workflow history is set by the [RegisterDomain](@ref) action.

**Important**
> If the type already exists, then a `TypeAlreadyExists` fault is returned. You cannot change the configuration settings of a workflow type once it is registered and it must be registered as a new version.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `defaultTaskList.name`: String constraint. The key is `swf:defaultTaskList.name`.

    *   `name`: String constraint. The key is `swf:name`.

    *   `version`: String constraint. The key is `swf:version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain in which to register the workflow type.


## `name = ::String` -- *Required*
The name of the workflow type.

The specified string must not start or end with whitespace. It must not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any control characters (`\\u0000-\\u001f` | `\\u007f-\\u009f`). Also, it must not contain the literal string `arn`.


## `version = ::String` -- *Required*
The version of the workflow type.

**Note**
> The workflow type consists of the name and version, the combination of which must be unique within the domain. To get a list of all currently registered workflow types, use the [ListWorkflowTypes](@ref) action.

The specified string must not start or end with whitespace. It must not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any control characters (`\\u0000-\\u001f` | `\\u007f-\\u009f`). Also, it must not contain the literal string `arn`.


## `description = ::String`
Textual description of the workflow type.


## `defaultTaskStartToCloseTimeout = ::String`
If set, specifies the default maximum duration of decision tasks for this workflow type. This default can be overridden when starting a workflow execution using the [StartWorkflowExecution](@ref) action or the `StartChildWorkflowExecution` [Decision](@ref).

The duration is specified in seconds, an integer greater than or equal to `0`. You can use `NONE` to specify unlimited duration.


## `defaultExecutionStartToCloseTimeout = ::String`
If set, specifies the default maximum duration for executions of this workflow type. You can override this default when starting an execution through the [StartWorkflowExecution](@ref) Action or `StartChildWorkflowExecution` [Decision](@ref).

The duration is specified in seconds; an integer greater than or equal to 0. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for `defaultExecutionStartToCloseTimeout`; there is a one-year max limit on the time that a workflow execution can run. Exceeding this limit always causes the workflow execution to time out.


## `defaultTaskList = ["name" => <required> ::String]`
If set, specifies the default task list to use for scheduling decision tasks for executions of this workflow type. This default is used only if a task list isn't provided when starting the execution through the [StartWorkflowExecution](@ref) Action or `StartChildWorkflowExecution` [Decision](@ref).


## `defaultTaskPriority = ::String`
The default task priority to assign to the workflow type. If not assigned, then `0` is used. Valid values are integers that range from Java's `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE` (2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see [Setting Task Priority](http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html) in the *Amazon SWF Developer Guide*.


## `defaultChildPolicy = "TERMINATE", "REQUEST_CANCEL" or "ABANDON"`
If set, specifies the default policy to use for the child workflow executions when a workflow execution of this type is terminated, by calling the [TerminateWorkflowExecution](@ref) action explicitly or due to an expired timeout. This default can be overridden when starting a workflow execution using the [StartWorkflowExecution](@ref) action or the `StartChildWorkflowExecution` [Decision](@ref).

The supported child policies are:

*   `TERMINATE` – The child executions are terminated.

*   `REQUEST_CANCEL` – A request to cancel is attempted for each child execution by recording a `WorkflowExecutionCancelRequested` event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.

*   `ABANDON` – No action is taken. The child executions continue to run.


## `defaultLambdaRole = ::String`
The default IAM role attached to this workflow type.

**Note**
> Executions of this workflow type need IAM roles to invoke Lambda functions. If you don't specify an IAM role when you start this workflow type, the default Lambda role is attached to the execution. For more information, see [http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html](http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html) in the *Amazon SWF Developer Guide*.




# Exceptions

`TypeAlreadyExistsFault`, `LimitExceededFault`, `UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/RegisterWorkflowType)
"""
@inline register_workflow_type(aws::AWSConfig=default_aws_config(); args...) = register_workflow_type(aws, args)

@inline register_workflow_type(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "RegisterWorkflowType", args)

@inline register_workflow_type(args) = register_workflow_type(default_aws_config(), args)


"""
    using AWSSDK.SWF.request_cancel_workflow_execution
    request_cancel_workflow_execution([::AWSConfig], arguments::Dict)
    request_cancel_workflow_execution([::AWSConfig]; domain=, workflowId=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "RequestCancelWorkflowExecution", arguments::Dict)
    swf([::AWSConfig], "RequestCancelWorkflowExecution", domain=, workflowId=, <keyword arguments>)

# RequestCancelWorkflowExecution Operation

Records a `WorkflowExecutionCancelRequested` event in the currently running workflow execution identified by the given domain, workflowId, and runId. This logically requests the cancellation of the workflow execution as a whole. It is up to the decider to take appropriate actions when it receives an execution history with this event.

**Note**
> If the runId isn't specified, the `WorkflowExecutionCancelRequested` event is recorded in the history of the current open workflow execution with the specified workflowId in the domain.

**Note**
> Because this action allows the workflow to properly clean up and gracefully close, it should be used instead of [TerminateWorkflowExecution](@ref) when possible.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain containing the workflow execution to cancel.


## `workflowId = ::String` -- *Required*
The workflowId of the workflow execution to cancel.


## `runId = ::String`
The runId of the workflow execution to cancel.




# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/RequestCancelWorkflowExecution)
"""
@inline request_cancel_workflow_execution(aws::AWSConfig=default_aws_config(); args...) = request_cancel_workflow_execution(aws, args)

@inline request_cancel_workflow_execution(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "RequestCancelWorkflowExecution", args)

@inline request_cancel_workflow_execution(args) = request_cancel_workflow_execution(default_aws_config(), args)


"""
    using AWSSDK.SWF.respond_activity_task_canceled
    respond_activity_task_canceled([::AWSConfig], arguments::Dict)
    respond_activity_task_canceled([::AWSConfig]; taskToken=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "RespondActivityTaskCanceled", arguments::Dict)
    swf([::AWSConfig], "RespondActivityTaskCanceled", taskToken=, <keyword arguments>)

# RespondActivityTaskCanceled Operation

Used by workers to tell the service that the [ActivityTask](@ref) identified by the `taskToken` was successfully canceled. Additional `details` can be provided using the `details` argument.

These `details` (if provided) appear in the `ActivityTaskCanceled` event added to the workflow history.

**Important**
> Only use this operation if the `canceled` flag of a [RecordActivityTaskHeartbeat](@ref) request returns `true` and if the activity can be safely undone or abandoned.

A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to [RespondActivityTaskCompleted](@ref), RespondActivityTaskCanceled, [RespondActivityTaskFailed](@ref), or the task has [timed out](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `taskToken = ::String` -- *Required*
The `taskToken` of the [ActivityTask](@ref).

**Important**
> `taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results.


## `details = ::String`
Information about the cancellation.




# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/RespondActivityTaskCanceled)
"""
@inline respond_activity_task_canceled(aws::AWSConfig=default_aws_config(); args...) = respond_activity_task_canceled(aws, args)

@inline respond_activity_task_canceled(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "RespondActivityTaskCanceled", args)

@inline respond_activity_task_canceled(args) = respond_activity_task_canceled(default_aws_config(), args)


"""
    using AWSSDK.SWF.respond_activity_task_completed
    respond_activity_task_completed([::AWSConfig], arguments::Dict)
    respond_activity_task_completed([::AWSConfig]; taskToken=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "RespondActivityTaskCompleted", arguments::Dict)
    swf([::AWSConfig], "RespondActivityTaskCompleted", taskToken=, <keyword arguments>)

# RespondActivityTaskCompleted Operation

Used by workers to tell the service that the [ActivityTask](@ref) identified by the `taskToken` completed successfully with a `result` (if provided). The `result` appears in the `ActivityTaskCompleted` event in the workflow history.

**Important**
> If the requested task doesn't complete successfully, use [RespondActivityTaskFailed](@ref) instead. If the worker finds that the task is canceled through the `canceled` flag returned by [RecordActivityTaskHeartbeat](@ref), it should cancel the task, clean up and then call [RespondActivityTaskCanceled](@ref).

A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to RespondActivityTaskCompleted, [RespondActivityTaskCanceled](@ref), [RespondActivityTaskFailed](@ref), or the task has [timed out](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `taskToken = ::String` -- *Required*
The `taskToken` of the [ActivityTask](@ref).

**Important**
> `taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results.


## `result = ::String`
The result of the activity task. It is a free form string that is implementation specific.




# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/RespondActivityTaskCompleted)
"""
@inline respond_activity_task_completed(aws::AWSConfig=default_aws_config(); args...) = respond_activity_task_completed(aws, args)

@inline respond_activity_task_completed(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "RespondActivityTaskCompleted", args)

@inline respond_activity_task_completed(args) = respond_activity_task_completed(default_aws_config(), args)


"""
    using AWSSDK.SWF.respond_activity_task_failed
    respond_activity_task_failed([::AWSConfig], arguments::Dict)
    respond_activity_task_failed([::AWSConfig]; taskToken=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "RespondActivityTaskFailed", arguments::Dict)
    swf([::AWSConfig], "RespondActivityTaskFailed", taskToken=, <keyword arguments>)

# RespondActivityTaskFailed Operation

Used by workers to tell the service that the [ActivityTask](@ref) identified by the `taskToken` has failed with `reason` (if specified). The `reason` and `details` appear in the `ActivityTaskFailed` event added to the workflow history.

A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to [RespondActivityTaskCompleted](@ref), [RespondActivityTaskCanceled](@ref), RespondActivityTaskFailed, or the task has [timed out](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `taskToken = ::String` -- *Required*
The `taskToken` of the [ActivityTask](@ref).

**Important**
> `taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results.


## `reason = ::String`
Description of the error that may assist in diagnostics.


## `details = ::String`
Detailed information about the failure.




# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/RespondActivityTaskFailed)
"""
@inline respond_activity_task_failed(aws::AWSConfig=default_aws_config(); args...) = respond_activity_task_failed(aws, args)

@inline respond_activity_task_failed(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "RespondActivityTaskFailed", args)

@inline respond_activity_task_failed(args) = respond_activity_task_failed(default_aws_config(), args)


"""
    using AWSSDK.SWF.respond_decision_task_completed
    respond_decision_task_completed([::AWSConfig], arguments::Dict)
    respond_decision_task_completed([::AWSConfig]; taskToken=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "RespondDecisionTaskCompleted", arguments::Dict)
    swf([::AWSConfig], "RespondDecisionTaskCompleted", taskToken=, <keyword arguments>)

# RespondDecisionTaskCompleted Operation

Used by deciders to tell the service that the [DecisionTask](@ref) identified by the `taskToken` has successfully completed. The `decisions` argument specifies the list of decisions made while processing the task.

A `DecisionTaskCompleted` event is added to the workflow history. The `executionContext` specified is attached to the event in the workflow execution history.

**Access Control**

If an IAM policy grants permission to use `RespondDecisionTaskCompleted`, it can express permissions for the list of decisions in the `decisions` parameter. Each of the decisions has one or more parameters, much like a regular API call. To allow for policies to be as readable as possible, you can express permissions on decisions as if they were actual API calls, including applying conditions to some parameters. For more information, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `taskToken = ::String` -- *Required*
The `taskToken` from the [DecisionTask](@ref).

**Important**
> `taskToken` is generated by the service and should be treated as an opaque value. If the task is passed to another process, its `taskToken` must also be passed. This enables it to provide its progress and respond with results.


## `decisions = [[ ... ], ...]`
The list of decisions (possibly empty) made by the decider while processing this decision task. See the docs for the [Decision](@ref) structure for details.
```
 decisions = [[
        "decisionType" => <required> "ScheduleActivityTask", "RequestCancelActivityTask", "CompleteWorkflowExecution", "FailWorkflowExecution", "CancelWorkflowExecution", "ContinueAsNewWorkflowExecution", "RecordMarker", "StartTimer", "CancelTimer", "SignalExternalWorkflowExecution", "RequestCancelExternalWorkflowExecution", "StartChildWorkflowExecution" or "ScheduleLambdaFunction",
        "scheduleActivityTaskDecisionAttributes" =>  [
            "activityType" => <required> [
                "name" => <required> ::String,
                "version" => <required> ::String
            ],
            "activityId" => <required> ::String,
            "control" =>  ::String,
            "input" =>  ::String,
            "scheduleToCloseTimeout" =>  ::String,
            "taskList" =>  ["name" => <required> ::String],
            "taskPriority" =>  ::String,
            "scheduleToStartTimeout" =>  ::String,
            "startToCloseTimeout" =>  ::String,
            "heartbeatTimeout" =>  ::String
        ],
        "requestCancelActivityTaskDecisionAttributes" =>  ["activityId" => <required> ::String],
        "completeWorkflowExecutionDecisionAttributes" =>  ["result" =>  ::String],
        "failWorkflowExecutionDecisionAttributes" =>  [
            "reason" =>  ::String,
            "details" =>  ::String
        ],
        "cancelWorkflowExecutionDecisionAttributes" =>  ["details" =>  ::String],
        "continueAsNewWorkflowExecutionDecisionAttributes" =>  [
            "input" =>  ::String,
            "executionStartToCloseTimeout" =>  ::String,
            "taskList" =>  ["name" => <required> ::String],
            "taskPriority" =>  ::String,
            "taskStartToCloseTimeout" =>  ::String,
            "childPolicy" =>  "TERMINATE", "REQUEST_CANCEL" or "ABANDON",
            "tagList" =>  [::String, ...],
            "workflowTypeVersion" =>  ::String,
            "lambdaRole" =>  ::String
        ],
        "recordMarkerDecisionAttributes" =>  [
            "markerName" => <required> ::String,
            "details" =>  ::String
        ],
        "startTimerDecisionAttributes" =>  [
            "timerId" => <required> ::String,
            "control" =>  ::String,
            "startToFireTimeout" => <required> ::String
        ],
        "cancelTimerDecisionAttributes" =>  ["timerId" => <required> ::String],
        "signalExternalWorkflowExecutionDecisionAttributes" =>  [
            "workflowId" => <required> ::String,
            "runId" =>  ::String,
            "signalName" => <required> ::String,
            "input" =>  ::String,
            "control" =>  ::String
        ],
        "requestCancelExternalWorkflowExecutionDecisionAttributes" =>  [
            "workflowId" => <required> ::String,
            "runId" =>  ::String,
            "control" =>  ::String
        ],
        "startChildWorkflowExecutionDecisionAttributes" =>  [
            "workflowType" => <required> [
                "name" => <required> ::String,
                "version" => <required> ::String
            ],
            "workflowId" => <required> ::String,
            "control" =>  ::String,
            "input" =>  ::String,
            "executionStartToCloseTimeout" =>  ::String,
            "taskList" =>  ["name" => <required> ::String],
            "taskPriority" =>  ::String,
            "taskStartToCloseTimeout" =>  ::String,
            "childPolicy" =>  "TERMINATE", "REQUEST_CANCEL" or "ABANDON",
            "tagList" =>  [::String, ...],
            "lambdaRole" =>  ::String
        ],
        "scheduleLambdaFunctionDecisionAttributes" =>  [
            "id" => <required> ::String,
            "name" => <required> ::String,
            "control" =>  ::String,
            "input" =>  ::String,
            "startToCloseTimeout" =>  ::String
        ]
    ], ...]
```

## `executionContext = ::String`
User defined context to add to workflow execution.




# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/RespondDecisionTaskCompleted)
"""
@inline respond_decision_task_completed(aws::AWSConfig=default_aws_config(); args...) = respond_decision_task_completed(aws, args)

@inline respond_decision_task_completed(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "RespondDecisionTaskCompleted", args)

@inline respond_decision_task_completed(args) = respond_decision_task_completed(default_aws_config(), args)


"""
    using AWSSDK.SWF.signal_workflow_execution
    signal_workflow_execution([::AWSConfig], arguments::Dict)
    signal_workflow_execution([::AWSConfig]; domain=, workflowId=, signalName=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "SignalWorkflowExecution", arguments::Dict)
    swf([::AWSConfig], "SignalWorkflowExecution", domain=, workflowId=, signalName=, <keyword arguments>)

# SignalWorkflowExecution Operation

Records a `WorkflowExecutionSignaled` event in the workflow execution history and creates a decision task for the workflow execution identified by the given domain, workflowId and runId. The event is recorded with the specified user defined signalName and input (if provided).

**Note**
> If a runId isn't specified, then the `WorkflowExecutionSignaled` event is recorded in the history of the current open workflow with the matching workflowId in the domain.

**Note**
> If the specified workflow execution isn't open, this method fails with `UnknownResource`.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain containing the workflow execution to signal.


## `workflowId = ::String` -- *Required*
The workflowId of the workflow execution to signal.


## `runId = ::String`
The runId of the workflow execution to signal.


## `signalName = ::String` -- *Required*
The name of the signal. This name must be meaningful to the target workflow.


## `input = ::String`
Data to attach to the `WorkflowExecutionSignaled` event in the target workflow execution's history.




# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/SignalWorkflowExecution)
"""
@inline signal_workflow_execution(aws::AWSConfig=default_aws_config(); args...) = signal_workflow_execution(aws, args)

@inline signal_workflow_execution(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "SignalWorkflowExecution", args)

@inline signal_workflow_execution(args) = signal_workflow_execution(default_aws_config(), args)


"""
    using AWSSDK.SWF.start_workflow_execution
    start_workflow_execution([::AWSConfig], arguments::Dict)
    start_workflow_execution([::AWSConfig]; domain=, workflowId=, workflowType=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "StartWorkflowExecution", arguments::Dict)
    swf([::AWSConfig], "StartWorkflowExecution", domain=, workflowId=, workflowType=, <keyword arguments>)

# StartWorkflowExecution Operation

Starts an execution of the workflow type in the specified domain using the provided `workflowId` and input data.

This action returns the newly started workflow execution.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   Constrain the following parameters by using a `Condition` element with the appropriate keys.

    *   `tagList.member.0`: The key is `swf:tagList.member.0`.

    *   `tagList.member.1`: The key is `swf:tagList.member.1`.

    *   `tagList.member.2`: The key is `swf:tagList.member.2`.

    *   `tagList.member.3`: The key is `swf:tagList.member.3`.

    *   `tagList.member.4`: The key is `swf:tagList.member.4`.

    *   `taskList`: String constraint. The key is `swf:taskList.name`.

    *   `workflowType.name`: String constraint. The key is `swf:workflowType.name`.

    *   `workflowType.version`: String constraint. The key is `swf:workflowType.version`.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The name of the domain in which the workflow execution is created.


## `workflowId = ::String` -- *Required*
The user defined identifier associated with the workflow execution. You can use this to associate a custom identifier with the workflow execution. You may specify the same identifier if a workflow execution is logically a *restart* of a previous execution. You cannot have two open workflow executions with the same `workflowId` at the same time.

The specified string must not start or end with whitespace. It must not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any control characters (`\\u0000-\\u001f` | `\\u007f-\\u009f`). Also, it must not contain the literal string `arn`.


## `workflowType = [ ... ]` -- *Required*
The type of the workflow to start.
```
 workflowType = [
        "name" => <required> ::String,
        "version" => <required> ::String
    ]
```

## `taskList = ["name" => <required> ::String]`
The task list to use for the decision tasks generated for this workflow execution. This overrides the `defaultTaskList` specified when registering the workflow type.

**Note**
> A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault is returned.

The specified string must not start or end with whitespace. It must not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any control characters (`\\u0000-\\u001f` | `\\u007f-\\u009f`). Also, it must not contain the literal string `arn`.


## `taskPriority = ::String`
The task priority to use for this workflow execution. This overrides any default priority that was assigned when the workflow type was registered. If not set, then the default task priority for the workflow type is used. Valid values are integers that range from Java's `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE` (2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see [Setting Task Priority](http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html) in the *Amazon SWF Developer Guide*.


## `input = ::String`
The input for the workflow execution. This is a free form string which should be meaningful to the workflow you are starting. This `input` is made available to the new workflow execution in the `WorkflowExecutionStarted` history event.


## `executionStartToCloseTimeout = ::String`
The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.

The duration is specified in seconds; an integer greater than or equal to `0`. Exceeding this limit causes the workflow execution to time out. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for this timeout; there is a one-year max limit on the time that a workflow execution can run.

**Note**
> An execution start-to-close timeout must be specified either through this parameter or as a default when the workflow type is registered. If neither this parameter nor a default execution start-to-close timeout is specified, a fault is returned.


## `tagList = [::String, ...]`
The list of tags to associate with the workflow execution. You can specify a maximum of 5 tags. You can list workflow executions with a specific tag by calling [ListOpenWorkflowExecutions](@ref) or [ListClosedWorkflowExecutions](@ref) and specifying a [TagFilter](@ref).


## `taskStartToCloseTimeout = ::String`
Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the `defaultTaskStartToCloseTimout` specified when registering the workflow type using [RegisterWorkflowType](@ref).

The duration is specified in seconds, an integer greater than or equal to `0`. You can use `NONE` to specify unlimited duration.

**Note**
> A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.


## `childPolicy = "TERMINATE", "REQUEST_CANCEL" or "ABANDON"`
If set, specifies the policy to use for the child workflow executions of this workflow execution if it is terminated, by calling the [TerminateWorkflowExecution](@ref) action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using [RegisterWorkflowType](@ref).

The supported child policies are:

*   `TERMINATE` – The child executions are terminated.

*   `REQUEST_CANCEL` – A request to cancel is attempted for each child execution by recording a `WorkflowExecutionCancelRequested` event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.

*   `ABANDON` – No action is taken. The child executions continue to run.

**Note**
> A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.


## `lambdaRole = ::String`
The IAM role to attach to this workflow execution.

**Note**
> Executions of this workflow type need IAM roles to invoke Lambda functions. If you don't attach an IAM role, any attempt to schedule a Lambda task fails. This results in a `ScheduleLambdaFunctionFailed` history event. For more information, see [http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html](http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html) in the *Amazon SWF Developer Guide*.




# Returns

`Run`

# Exceptions

`UnknownResourceFault`, `TypeDeprecatedFault`, `WorkflowExecutionAlreadyStartedFault`, `LimitExceededFault`, `OperationNotPermittedFault` or `DefaultUndefinedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/StartWorkflowExecution)
"""
@inline start_workflow_execution(aws::AWSConfig=default_aws_config(); args...) = start_workflow_execution(aws, args)

@inline start_workflow_execution(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "StartWorkflowExecution", args)

@inline start_workflow_execution(args) = start_workflow_execution(default_aws_config(), args)


"""
    using AWSSDK.SWF.terminate_workflow_execution
    terminate_workflow_execution([::AWSConfig], arguments::Dict)
    terminate_workflow_execution([::AWSConfig]; domain=, workflowId=, <keyword arguments>)

    using AWSCore.Services.swf
    swf([::AWSConfig], "TerminateWorkflowExecution", arguments::Dict)
    swf([::AWSConfig], "TerminateWorkflowExecution", domain=, workflowId=, <keyword arguments>)

# TerminateWorkflowExecution Operation

Records a `WorkflowExecutionTerminated` event and forces closure of the workflow execution identified by the given domain, runId, and workflowId. The child policy, registered with the workflow type or specified when starting this execution, is applied to any open child workflow executions of this workflow execution.

**Important**
> If the identified workflow execution was in progress, it is terminated immediately.

**Note**
> If a runId isn't specified, then the `WorkflowExecutionTerminated` event is recorded in the history of the current open workflow with the matching workflowId in the domain.

**Note**
> You should consider using [RequestCancelWorkflowExecution](@ref) action instead because it allows the workflow to gracefully close while [TerminateWorkflowExecution](@ref) doesn't.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF resources as follows:

*   Use a `Resource` element with the domain name to limit the action to only specified domains.

*   Use an `Action` element to allow or deny permission to call this action.

*   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see [Using IAM to Manage Access to Amazon SWF Workflows](http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html) in the *Amazon SWF Developer Guide*.

# Arguments

## `domain = ::String` -- *Required*
The domain of the workflow execution to terminate.


## `workflowId = ::String` -- *Required*
The workflowId of the workflow execution to terminate.


## `runId = ::String`
The runId of the workflow execution to terminate.


## `reason = ::String`
A descriptive reason for terminating the workflow execution.


## `details = ::String`
Details for terminating the workflow execution.


## `childPolicy = "TERMINATE", "REQUEST_CANCEL" or "ABANDON"`
If set, specifies the policy to use for the child workflow executions of the workflow execution being terminated. This policy overrides the child policy specified for the workflow execution at registration time or when starting the execution.

The supported child policies are:

*   `TERMINATE` – The child executions are terminated.

*   `REQUEST_CANCEL` – A request to cancel is attempted for each child execution by recording a `WorkflowExecutionCancelRequested` event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.

*   `ABANDON` – No action is taken. The child executions continue to run.

**Note**
> A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.




# Exceptions

`UnknownResourceFault` or `OperationNotPermittedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25/TerminateWorkflowExecution)
"""
@inline terminate_workflow_execution(aws::AWSConfig=default_aws_config(); args...) = terminate_workflow_execution(aws, args)

@inline terminate_workflow_execution(aws::AWSConfig, args) = AWSCore.Services.swf(aws, "TerminateWorkflowExecution", args)

@inline terminate_workflow_execution(args) = terminate_workflow_execution(default_aws_config(), args)




end # module SWF


#==============================================================================#
# End of file
#==============================================================================#
