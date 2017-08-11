#==============================================================================#
# Budgets.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/budgets-2016-10-20.normal.json
#==============================================================================#

__precompile__()

module Budgets

using AWSCore


"""
    using AWSSDK.Budgets
    Budgets.create_budget([::AWSConfig], arguments::Dict)
    Budgets.create_budget([::AWSConfig]; AccountId=, Budget=, <keyword arguments>)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "CreateBudget", arguments::Dict)
    budgets([::AWSConfig], "CreateBudget", AccountId=, Budget=, <keyword arguments>)

# CreateBudget Operation

Create a new budget

# Arguments

## `AccountId = ::String` -- *Required*



## `Budget = [ ... ]` -- *Required*

```
 Budget = [
        "BudgetName" => <required> ::String,
        "BudgetLimit" => <required> [
            "Amount" => <required> ::String,
            "Unit" => <required> ::String
        ],
        "CostFilters" =>  ::Dict{String,String},
        "CostTypes" => <required> [
            "IncludeTax" => <required> ::Bool,
            "IncludeSubscription" => <required> ::Bool,
            "UseBlended" => <required> ::Bool
        ],
        "TimeUnit" => <required> "DAILY", "MONTHLY", "QUARTERLY" or "ANNUALLY",
        "TimePeriod" => <required> [
            "Start" => <required> timestamp,
            "End" => <required> timestamp
        ],
        "CalculatedSpend" =>  [
            "ActualSpend" => <required> [
                "Amount" => <required> ::String,
                "Unit" => <required> ::String
            ],
            "ForecastedSpend" =>  [
                "Amount" => <required> ::String,
                "Unit" => <required> ::String
            ]
        ],
        "BudgetType" => <required> "USAGE", "COST" or "RI_UTILIZATION"
    ]
```

## `NotificationsWithSubscribers = [[ ... ], ...]`

```
 NotificationsWithSubscribers = [[
        "Notification" => <required> [
            "NotificationType" => <required> "ACTUAL" or "FORECASTED",
            "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
            "Threshold" => <required> double
        ],
        "Subscribers" => <required> [[
            "SubscriptionType" => <required> "SNS" or "EMAIL",
            "Address" => <required> ::String
        ], ...]
    ], ...]
```



# Returns

`CreateBudgetResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException`, `CreationLimitExceededException` or `DuplicateRecordException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/CreateBudget)
"""

@inline create_budget(aws::AWSConfig=default_aws_config(); args...) = create_budget(aws, args)

@inline create_budget(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "CreateBudget", args)

@inline create_budget(args) = create_budget(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.create_notification([::AWSConfig], arguments::Dict)
    Budgets.create_notification([::AWSConfig]; AccountId=, BudgetName=, Notification=, Subscribers=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "CreateNotification", arguments::Dict)
    budgets([::AWSConfig], "CreateNotification", AccountId=, BudgetName=, Notification=, Subscribers=)

# CreateNotification Operation

Create a new Notification with subscribers for a budget

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*



## `Notification = [ ... ]` -- *Required*

```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double
    ]
```

## `Subscribers = [[ ... ], ...]` -- *Required*

```
 Subscribers = [[
        "SubscriptionType" => <required> "SNS" or "EMAIL",
        "Address" => <required> ::String
    ], ...]
```



# Returns

`CreateNotificationResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `NotFoundException`, `CreationLimitExceededException` or `DuplicateRecordException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/CreateNotification)
"""

@inline create_notification(aws::AWSConfig=default_aws_config(); args...) = create_notification(aws, args)

@inline create_notification(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "CreateNotification", args)

@inline create_notification(args) = create_notification(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.create_subscriber([::AWSConfig], arguments::Dict)
    Budgets.create_subscriber([::AWSConfig]; AccountId=, BudgetName=, Notification=, Subscriber=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "CreateSubscriber", arguments::Dict)
    budgets([::AWSConfig], "CreateSubscriber", AccountId=, BudgetName=, Notification=, Subscriber=)

# CreateSubscriber Operation

Create a new Subscriber for a notification

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*



## `Notification = [ ... ]` -- *Required*

```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double
    ]
```

## `Subscriber = [ ... ]` -- *Required*

```
 Subscriber = [
        "SubscriptionType" => <required> "SNS" or "EMAIL",
        "Address" => <required> ::String
    ]
```



# Returns

`CreateSubscriberResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `CreationLimitExceededException`, `DuplicateRecordException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/CreateSubscriber)
"""

@inline create_subscriber(aws::AWSConfig=default_aws_config(); args...) = create_subscriber(aws, args)

@inline create_subscriber(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "CreateSubscriber", args)

@inline create_subscriber(args) = create_subscriber(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.delete_budget([::AWSConfig], arguments::Dict)
    Budgets.delete_budget([::AWSConfig]; AccountId=, BudgetName=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DeleteBudget", arguments::Dict)
    budgets([::AWSConfig], "DeleteBudget", AccountId=, BudgetName=)

# DeleteBudget Operation

Delete a budget and related notifications

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*





# Returns

`DeleteBudgetResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/DeleteBudget)
"""

@inline delete_budget(aws::AWSConfig=default_aws_config(); args...) = delete_budget(aws, args)

@inline delete_budget(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "DeleteBudget", args)

@inline delete_budget(args) = delete_budget(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.delete_notification([::AWSConfig], arguments::Dict)
    Budgets.delete_notification([::AWSConfig]; AccountId=, BudgetName=, Notification=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DeleteNotification", arguments::Dict)
    budgets([::AWSConfig], "DeleteNotification", AccountId=, BudgetName=, Notification=)

# DeleteNotification Operation

Delete a notification and related subscribers

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*



## `Notification = [ ... ]` -- *Required*

```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double
    ]
```



# Returns

`DeleteNotificationResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/DeleteNotification)
"""

@inline delete_notification(aws::AWSConfig=default_aws_config(); args...) = delete_notification(aws, args)

@inline delete_notification(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "DeleteNotification", args)

@inline delete_notification(args) = delete_notification(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.delete_subscriber([::AWSConfig], arguments::Dict)
    Budgets.delete_subscriber([::AWSConfig]; AccountId=, BudgetName=, Notification=, Subscriber=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DeleteSubscriber", arguments::Dict)
    budgets([::AWSConfig], "DeleteSubscriber", AccountId=, BudgetName=, Notification=, Subscriber=)

# DeleteSubscriber Operation

Delete a Subscriber for a notification

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*



## `Notification = [ ... ]` -- *Required*

```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double
    ]
```

## `Subscriber = [ ... ]` -- *Required*

```
 Subscriber = [
        "SubscriptionType" => <required> "SNS" or "EMAIL",
        "Address" => <required> ::String
    ]
```



# Returns

`DeleteSubscriberResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/DeleteSubscriber)
"""

@inline delete_subscriber(aws::AWSConfig=default_aws_config(); args...) = delete_subscriber(aws, args)

@inline delete_subscriber(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "DeleteSubscriber", args)

@inline delete_subscriber(args) = delete_subscriber(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.describe_budget([::AWSConfig], arguments::Dict)
    Budgets.describe_budget([::AWSConfig]; AccountId=, BudgetName=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DescribeBudget", arguments::Dict)
    budgets([::AWSConfig], "DescribeBudget", AccountId=, BudgetName=)

# DescribeBudget Operation

Get a single budget

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*





# Returns

`DescribeBudgetResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/DescribeBudget)
"""

@inline describe_budget(aws::AWSConfig=default_aws_config(); args...) = describe_budget(aws, args)

@inline describe_budget(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "DescribeBudget", args)

@inline describe_budget(args) = describe_budget(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.describe_budgets([::AWSConfig], arguments::Dict)
    Budgets.describe_budgets([::AWSConfig]; AccountId=, <keyword arguments>)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DescribeBudgets", arguments::Dict)
    budgets([::AWSConfig], "DescribeBudgets", AccountId=, <keyword arguments>)

# DescribeBudgets Operation

Get all budgets for an account

# Arguments

## `AccountId = ::String` -- *Required*



## `MaxResults = ::Int`



## `NextToken = ::String`





# Returns

`DescribeBudgetsResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `NotFoundException`, `InvalidNextTokenException` or `ExpiredNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/DescribeBudgets)
"""

@inline describe_budgets(aws::AWSConfig=default_aws_config(); args...) = describe_budgets(aws, args)

@inline describe_budgets(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "DescribeBudgets", args)

@inline describe_budgets(args) = describe_budgets(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.describe_notifications_for_budget([::AWSConfig], arguments::Dict)
    Budgets.describe_notifications_for_budget([::AWSConfig]; AccountId=, BudgetName=, <keyword arguments>)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DescribeNotificationsForBudget", arguments::Dict)
    budgets([::AWSConfig], "DescribeNotificationsForBudget", AccountId=, BudgetName=, <keyword arguments>)

# DescribeNotificationsForBudget Operation

Get notifications of a budget

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*



## `MaxResults = ::Int`



## `NextToken = ::String`





# Returns

`DescribeNotificationsForBudgetResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `NotFoundException`, `InvalidNextTokenException` or `ExpiredNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/DescribeNotificationsForBudget)
"""

@inline describe_notifications_for_budget(aws::AWSConfig=default_aws_config(); args...) = describe_notifications_for_budget(aws, args)

@inline describe_notifications_for_budget(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "DescribeNotificationsForBudget", args)

@inline describe_notifications_for_budget(args) = describe_notifications_for_budget(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.describe_subscribers_for_notification([::AWSConfig], arguments::Dict)
    Budgets.describe_subscribers_for_notification([::AWSConfig]; AccountId=, BudgetName=, Notification=, <keyword arguments>)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DescribeSubscribersForNotification", arguments::Dict)
    budgets([::AWSConfig], "DescribeSubscribersForNotification", AccountId=, BudgetName=, Notification=, <keyword arguments>)

# DescribeSubscribersForNotification Operation

Get subscribers of a notification

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*



## `Notification = [ ... ]` -- *Required*

```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double
    ]
```

## `MaxResults = ::Int`



## `NextToken = ::String`





# Returns

`DescribeSubscribersForNotificationResponse`

# Exceptions

`InternalErrorException`, `NotFoundException`, `InvalidParameterException`, `InvalidNextTokenException` or `ExpiredNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/DescribeSubscribersForNotification)
"""

@inline describe_subscribers_for_notification(aws::AWSConfig=default_aws_config(); args...) = describe_subscribers_for_notification(aws, args)

@inline describe_subscribers_for_notification(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "DescribeSubscribersForNotification", args)

@inline describe_subscribers_for_notification(args) = describe_subscribers_for_notification(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.update_budget([::AWSConfig], arguments::Dict)
    Budgets.update_budget([::AWSConfig]; AccountId=, NewBudget=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "UpdateBudget", arguments::Dict)
    budgets([::AWSConfig], "UpdateBudget", AccountId=, NewBudget=)

# UpdateBudget Operation

Update the information of a budget already created

# Arguments

## `AccountId = ::String` -- *Required*



## `NewBudget = [ ... ]` -- *Required*

```
 NewBudget = [
        "BudgetName" => <required> ::String,
        "BudgetLimit" => <required> [
            "Amount" => <required> ::String,
            "Unit" => <required> ::String
        ],
        "CostFilters" =>  ::Dict{String,String},
        "CostTypes" => <required> [
            "IncludeTax" => <required> ::Bool,
            "IncludeSubscription" => <required> ::Bool,
            "UseBlended" => <required> ::Bool
        ],
        "TimeUnit" => <required> "DAILY", "MONTHLY", "QUARTERLY" or "ANNUALLY",
        "TimePeriod" => <required> [
            "Start" => <required> timestamp,
            "End" => <required> timestamp
        ],
        "CalculatedSpend" =>  [
            "ActualSpend" => <required> [
                "Amount" => <required> ::String,
                "Unit" => <required> ::String
            ],
            "ForecastedSpend" =>  [
                "Amount" => <required> ::String,
                "Unit" => <required> ::String
            ]
        ],
        "BudgetType" => <required> "USAGE", "COST" or "RI_UTILIZATION"
    ]
```



# Returns

`UpdateBudgetResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/UpdateBudget)
"""

@inline update_budget(aws::AWSConfig=default_aws_config(); args...) = update_budget(aws, args)

@inline update_budget(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "UpdateBudget", args)

@inline update_budget(args) = update_budget(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.update_notification([::AWSConfig], arguments::Dict)
    Budgets.update_notification([::AWSConfig]; AccountId=, BudgetName=, OldNotification=, NewNotification=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "UpdateNotification", arguments::Dict)
    budgets([::AWSConfig], "UpdateNotification", AccountId=, BudgetName=, OldNotification=, NewNotification=)

# UpdateNotification Operation

Update the information about a notification already created

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*



## `OldNotification = [ ... ]` -- *Required*

```
 OldNotification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double
    ]
```

## `NewNotification = [ ... ]` -- *Required*

```
 NewNotification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double
    ]
```



# Returns

`UpdateNotificationResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/UpdateNotification)
"""

@inline update_notification(aws::AWSConfig=default_aws_config(); args...) = update_notification(aws, args)

@inline update_notification(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "UpdateNotification", args)

@inline update_notification(args) = update_notification(default_aws_config(), args)


"""
    using AWSSDK.Budgets
    Budgets.update_subscriber([::AWSConfig], arguments::Dict)
    Budgets.update_subscriber([::AWSConfig]; AccountId=, BudgetName=, Notification=, OldSubscriber=, NewSubscriber=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "UpdateSubscriber", arguments::Dict)
    budgets([::AWSConfig], "UpdateSubscriber", AccountId=, BudgetName=, Notification=, OldSubscriber=, NewSubscriber=)

# UpdateSubscriber Operation

Update a subscriber

# Arguments

## `AccountId = ::String` -- *Required*



## `BudgetName = ::String` -- *Required*



## `Notification = [ ... ]` -- *Required*

```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double
    ]
```

## `OldSubscriber = [ ... ]` -- *Required*

```
 OldSubscriber = [
        "SubscriptionType" => <required> "SNS" or "EMAIL",
        "Address" => <required> ::String
    ]
```

## `NewSubscriber = [ ... ]` -- *Required*

```
 NewSubscriber = [
        "SubscriptionType" => <required> "SNS" or "EMAIL",
        "Address" => <required> ::String
    ]
```



# Returns

`UpdateSubscriberResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/UpdateSubscriber)
"""

@inline update_subscriber(aws::AWSConfig=default_aws_config(); args...) = update_subscriber(aws, args)

@inline update_subscriber(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "UpdateSubscriber", args)

@inline update_subscriber(args) = update_subscriber(default_aws_config(), args)




end # module Budgets


#==============================================================================#
# End of file
#==============================================================================#
