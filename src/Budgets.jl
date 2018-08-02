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
    using AWSSDK.Budgets.create_budget
    create_budget([::AWSConfig], arguments::Dict)
    create_budget([::AWSConfig]; AccountId=, Budget=, <keyword arguments>)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "CreateBudget", arguments::Dict)
    budgets([::AWSConfig], "CreateBudget", AccountId=, Budget=, <keyword arguments>)

# CreateBudget Operation

Creates a budget and, if included, notifications and subscribers.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget.


## `Budget = [ ... ]` -- *Required*
The budget object that you want to create.
```
 Budget = [
        "BudgetName" => <required> ::String,
        "BudgetLimit" =>  [
            "Amount" => <required> ::String,
            "Unit" => <required> ::String
        ],
        "CostFilters" =>  ::Dict{String,String},
        "CostTypes" =>  [
            "IncludeTax" =>  ::Bool,
            "IncludeSubscription" =>  ::Bool,
            "UseBlended" =>  ::Bool,
            "IncludeRefund" =>  ::Bool,
            "IncludeCredit" =>  ::Bool,
            "IncludeUpfront" =>  ::Bool,
            "IncludeRecurring" =>  ::Bool,
            "IncludeOtherSubscription" =>  ::Bool,
            "IncludeSupport" =>  ::Bool,
            "IncludeDiscount" =>  ::Bool,
            "UseAmortized" =>  ::Bool
        ],
        "TimeUnit" => <required> "DAILY", "MONTHLY", "QUARTERLY" or "ANNUALLY",
        "TimePeriod" =>  [
            "Start" =>  timestamp,
            "End" =>  timestamp
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
        "BudgetType" => <required> "USAGE", "COST", "RI_UTILIZATION" or "RI_COVERAGE"
    ]
```

## `NotificationsWithSubscribers = [[ ... ], ...]`
A notification that you want to associate with a budget. A budget can have up to five notifications, and each notification can have one SNS subscriber and up to ten email subscribers. If you include notifications and subscribers in your `CreateBudget` call, AWS creates the notifications and subscribers for you.
```
 NotificationsWithSubscribers = [[
        "Notification" => <required> [
            "NotificationType" => <required> "ACTUAL" or "FORECASTED",
            "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
            "Threshold" => <required> double,
            "ThresholdType" =>  "PERCENTAGE" or "ABSOLUTE_VALUE"
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
    using AWSSDK.Budgets.create_notification
    create_notification([::AWSConfig], arguments::Dict)
    create_notification([::AWSConfig]; AccountId=, BudgetName=, Notification=, Subscribers=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "CreateNotification", arguments::Dict)
    budgets([::AWSConfig], "CreateNotification", AccountId=, BudgetName=, Notification=, Subscribers=)

# CreateNotification Operation

Creates a notification. You must create the budget before you create the associated notification.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget that you want to create a notification for.


## `BudgetName = ::String` -- *Required*
The name of the budget that you want AWS to notified you about. Budget names must be unique within an account.


## `Notification = [ ... ]` -- *Required*
The notification that you want to create.
```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double,
        "ThresholdType" =>  "PERCENTAGE" or "ABSOLUTE_VALUE"
    ]
```

## `Subscribers = [[ ... ], ...]` -- *Required*
A list of subscribers that you want to associate with the notification. Each notification can have one SNS subscriber and up to ten email subscribers.
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
    using AWSSDK.Budgets.create_subscriber
    create_subscriber([::AWSConfig], arguments::Dict)
    create_subscriber([::AWSConfig]; AccountId=, BudgetName=, Notification=, Subscriber=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "CreateSubscriber", arguments::Dict)
    budgets([::AWSConfig], "CreateSubscriber", AccountId=, BudgetName=, Notification=, Subscriber=)

# CreateSubscriber Operation

Creates a subscriber. You must create the associated budget and notification before you create the subscriber.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` associated with the budget that you want to create a subscriber for.


## `BudgetName = ::String` -- *Required*
The name of the budget that you want to subscribe to. Budget names must be unique within an account.


## `Notification = [ ... ]` -- *Required*
The notification that you want to create a subscriber for.
```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double,
        "ThresholdType" =>  "PERCENTAGE" or "ABSOLUTE_VALUE"
    ]
```

## `Subscriber = [ ... ]` -- *Required*
The subscriber that you want to associate with a budget notification.
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
    using AWSSDK.Budgets.delete_budget
    delete_budget([::AWSConfig], arguments::Dict)
    delete_budget([::AWSConfig]; AccountId=, BudgetName=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DeleteBudget", arguments::Dict)
    budgets([::AWSConfig], "DeleteBudget", AccountId=, BudgetName=)

# DeleteBudget Operation

Deletes a budget. You can delete your budget at any time.

**Deleting a budget also deletes the notifications and subscribers associated with that budget.**

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget that you want to delete.


## `BudgetName = ::String` -- *Required*
The name of the budget that you want to delete.




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
    using AWSSDK.Budgets.delete_notification
    delete_notification([::AWSConfig], arguments::Dict)
    delete_notification([::AWSConfig]; AccountId=, BudgetName=, Notification=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DeleteNotification", arguments::Dict)
    budgets([::AWSConfig], "DeleteNotification", AccountId=, BudgetName=, Notification=)

# DeleteNotification Operation

Deletes a notification.

**Deleting a notification also deletes the subscribers associated with the notification.**

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget whose notification you want to delete.


## `BudgetName = ::String` -- *Required*
The name of the budget whose notification you want to delete.


## `Notification = [ ... ]` -- *Required*
The notification that you want to delete.
```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double,
        "ThresholdType" =>  "PERCENTAGE" or "ABSOLUTE_VALUE"
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
    using AWSSDK.Budgets.delete_subscriber
    delete_subscriber([::AWSConfig], arguments::Dict)
    delete_subscriber([::AWSConfig]; AccountId=, BudgetName=, Notification=, Subscriber=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DeleteSubscriber", arguments::Dict)
    budgets([::AWSConfig], "DeleteSubscriber", AccountId=, BudgetName=, Notification=, Subscriber=)

# DeleteSubscriber Operation

Deletes a subscriber.

**Deleting the last subscriber to a notification also deletes the notification.**

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget whose subscriber you want to delete.


## `BudgetName = ::String` -- *Required*
The name of the budget whose subscriber you want to delete.


## `Notification = [ ... ]` -- *Required*
The notification whose subscriber you want to delete.
```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double,
        "ThresholdType" =>  "PERCENTAGE" or "ABSOLUTE_VALUE"
    ]
```

## `Subscriber = [ ... ]` -- *Required*
The subscriber that you want to delete.
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
    using AWSSDK.Budgets.describe_budget
    describe_budget([::AWSConfig], arguments::Dict)
    describe_budget([::AWSConfig]; AccountId=, BudgetName=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DescribeBudget", arguments::Dict)
    budgets([::AWSConfig], "DescribeBudget", AccountId=, BudgetName=)

# DescribeBudget Operation

Describes a budget.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget that you want a description of.


## `BudgetName = ::String` -- *Required*
The name of the budget that you want a description of.




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
    using AWSSDK.Budgets.describe_budgets
    describe_budgets([::AWSConfig], arguments::Dict)
    describe_budgets([::AWSConfig]; AccountId=, <keyword arguments>)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DescribeBudgets", arguments::Dict)
    budgets([::AWSConfig], "DescribeBudgets", AccountId=, <keyword arguments>)

# DescribeBudgets Operation

Lists the budgets associated with an account.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budgets that you want descriptions of.


## `MaxResults = ::Int`
Optional integer. Specifies the maximum number of results to return in response.


## `NextToken = ::String`
The pagination token that indicates the next set of results to retrieve.




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
    using AWSSDK.Budgets.describe_notifications_for_budget
    describe_notifications_for_budget([::AWSConfig], arguments::Dict)
    describe_notifications_for_budget([::AWSConfig]; AccountId=, BudgetName=, <keyword arguments>)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DescribeNotificationsForBudget", arguments::Dict)
    budgets([::AWSConfig], "DescribeNotificationsForBudget", AccountId=, BudgetName=, <keyword arguments>)

# DescribeNotificationsForBudget Operation

Lists the notifications associated with a budget.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget whose notifications you want descriptions of.


## `BudgetName = ::String` -- *Required*
The name of the budget whose notifications you want descriptions of.


## `MaxResults = ::Int`
Optional integer. Specifies the maximum number of results to return in response.


## `NextToken = ::String`
The pagination token that indicates the next set of results to retrieve.




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
    using AWSSDK.Budgets.describe_subscribers_for_notification
    describe_subscribers_for_notification([::AWSConfig], arguments::Dict)
    describe_subscribers_for_notification([::AWSConfig]; AccountId=, BudgetName=, Notification=, <keyword arguments>)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "DescribeSubscribersForNotification", arguments::Dict)
    budgets([::AWSConfig], "DescribeSubscribersForNotification", AccountId=, BudgetName=, Notification=, <keyword arguments>)

# DescribeSubscribersForNotification Operation

Lists the subscribers associated with a notification.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget whose subscribers you want descriptions of.


## `BudgetName = ::String` -- *Required*
The name of the budget whose subscribers you want descriptions of.


## `Notification = [ ... ]` -- *Required*
The notification whose subscribers you want to list.
```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double,
        "ThresholdType" =>  "PERCENTAGE" or "ABSOLUTE_VALUE"
    ]
```

## `MaxResults = ::Int`
Optional integer. Specifies the maximum number of results to return in response.


## `NextToken = ::String`
The pagination token that indicates the next set of results to retrieve.




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
    using AWSSDK.Budgets.update_budget
    update_budget([::AWSConfig], arguments::Dict)
    update_budget([::AWSConfig]; AccountId=, NewBudget=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "UpdateBudget", arguments::Dict)
    budgets([::AWSConfig], "UpdateBudget", AccountId=, NewBudget=)

# UpdateBudget Operation

Updates a budget. You can change every part of a budget except for the `budgetName` and the `calculatedSpend`. When a budget is modified, the `calculatedSpend` drops to zero until AWS has new usage data to use for forecasting.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget that you want to update.


## `NewBudget = [ ... ]` -- *Required*
The budget that you want to update your budget to.
```
 NewBudget = [
        "BudgetName" => <required> ::String,
        "BudgetLimit" =>  [
            "Amount" => <required> ::String,
            "Unit" => <required> ::String
        ],
        "CostFilters" =>  ::Dict{String,String},
        "CostTypes" =>  [
            "IncludeTax" =>  ::Bool,
            "IncludeSubscription" =>  ::Bool,
            "UseBlended" =>  ::Bool,
            "IncludeRefund" =>  ::Bool,
            "IncludeCredit" =>  ::Bool,
            "IncludeUpfront" =>  ::Bool,
            "IncludeRecurring" =>  ::Bool,
            "IncludeOtherSubscription" =>  ::Bool,
            "IncludeSupport" =>  ::Bool,
            "IncludeDiscount" =>  ::Bool,
            "UseAmortized" =>  ::Bool
        ],
        "TimeUnit" => <required> "DAILY", "MONTHLY", "QUARTERLY" or "ANNUALLY",
        "TimePeriod" =>  [
            "Start" =>  timestamp,
            "End" =>  timestamp
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
        "BudgetType" => <required> "USAGE", "COST", "RI_UTILIZATION" or "RI_COVERAGE"
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
    using AWSSDK.Budgets.update_notification
    update_notification([::AWSConfig], arguments::Dict)
    update_notification([::AWSConfig]; AccountId=, BudgetName=, OldNotification=, NewNotification=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "UpdateNotification", arguments::Dict)
    budgets([::AWSConfig], "UpdateNotification", AccountId=, BudgetName=, OldNotification=, NewNotification=)

# UpdateNotification Operation

Updates a notification.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget whose notification you want to update.


## `BudgetName = ::String` -- *Required*
The name of the budget whose notification you want to update.


## `OldNotification = [ ... ]` -- *Required*
The previous notification associated with a budget.
```
 OldNotification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double,
        "ThresholdType" =>  "PERCENTAGE" or "ABSOLUTE_VALUE"
    ]
```

## `NewNotification = [ ... ]` -- *Required*
The updated notification to be associated with a budget.
```
 NewNotification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double,
        "ThresholdType" =>  "PERCENTAGE" or "ABSOLUTE_VALUE"
    ]
```



# Returns

`UpdateNotificationResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `NotFoundException` or `DuplicateRecordException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/UpdateNotification)
"""
@inline update_notification(aws::AWSConfig=default_aws_config(); args...) = update_notification(aws, args)

@inline update_notification(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "UpdateNotification", args)

@inline update_notification(args) = update_notification(default_aws_config(), args)


"""
    using AWSSDK.Budgets.update_subscriber
    update_subscriber([::AWSConfig], arguments::Dict)
    update_subscriber([::AWSConfig]; AccountId=, BudgetName=, Notification=, OldSubscriber=, NewSubscriber=)

    using AWSCore.Services.budgets
    budgets([::AWSConfig], "UpdateSubscriber", arguments::Dict)
    budgets([::AWSConfig], "UpdateSubscriber", AccountId=, BudgetName=, Notification=, OldSubscriber=, NewSubscriber=)

# UpdateSubscriber Operation

Updates a subscriber.

# Arguments

## `AccountId = ::String` -- *Required*
The `accountId` that is associated with the budget whose subscriber you want to update.


## `BudgetName = ::String` -- *Required*
The name of the budget whose subscriber you want to update.


## `Notification = [ ... ]` -- *Required*
The notification whose subscriber you want to update.
```
 Notification = [
        "NotificationType" => <required> "ACTUAL" or "FORECASTED",
        "ComparisonOperator" => <required> "GREATER_THAN", "LESS_THAN" or "EQUAL_TO",
        "Threshold" => <required> double,
        "ThresholdType" =>  "PERCENTAGE" or "ABSOLUTE_VALUE"
    ]
```

## `OldSubscriber = [ ... ]` -- *Required*
The previous subscriber associated with a budget notification.
```
 OldSubscriber = [
        "SubscriptionType" => <required> "SNS" or "EMAIL",
        "Address" => <required> ::String
    ]
```

## `NewSubscriber = [ ... ]` -- *Required*
The updated subscriber associated with a budget notification.
```
 NewSubscriber = [
        "SubscriptionType" => <required> "SNS" or "EMAIL",
        "Address" => <required> ::String
    ]
```



# Returns

`UpdateSubscriberResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `NotFoundException` or `DuplicateRecordException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/budgets-2016-10-20/UpdateSubscriber)
"""
@inline update_subscriber(aws::AWSConfig=default_aws_config(); args...) = update_subscriber(aws, args)

@inline update_subscriber(aws::AWSConfig, args) = AWSCore.Services.budgets(aws, "UpdateSubscriber", args)

@inline update_subscriber(args) = update_subscriber(default_aws_config(), args)




end # module Budgets


#==============================================================================#
# End of file
#==============================================================================#
