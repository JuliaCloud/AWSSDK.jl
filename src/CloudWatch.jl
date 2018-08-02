#==============================================================================#
# CloudWatch.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/monitoring-2010-08-01.normal.json
#==============================================================================#

__precompile__()

module CloudWatch

using AWSCore


"""
    using AWSSDK.CloudWatch.delete_alarms
    delete_alarms([::AWSConfig], arguments::Dict)
    delete_alarms([::AWSConfig]; AlarmNames=)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "DeleteAlarms", arguments::Dict)
    monitoring([::AWSConfig], "DeleteAlarms", AlarmNames=)

# DeleteAlarms Operation

Deletes the specified alarms. In the event of an error, no alarms are deleted.

# Arguments

## `AlarmNames = [::String, ...]` -- *Required*
The alarms to be deleted.




# Exceptions

`ResourceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteAlarms)
"""
@inline delete_alarms(aws::AWSConfig=default_aws_config(); args...) = delete_alarms(aws, args)

@inline delete_alarms(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "DeleteAlarms", args)

@inline delete_alarms(args) = delete_alarms(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.delete_dashboards
    delete_dashboards([::AWSConfig], arguments::Dict)
    delete_dashboards([::AWSConfig]; DashboardNames=)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "DeleteDashboards", arguments::Dict)
    monitoring([::AWSConfig], "DeleteDashboards", DashboardNames=)

# DeleteDashboards Operation

Deletes all dashboards that you specify. You may specify up to 100 dashboards to delete. If there is an error during this call, no dashboards are deleted.

# Arguments

## `DashboardNames = [::String, ...]` -- *Required*
The dashboards to be deleted. This parameter is required.




# Returns

`DeleteDashboardsOutput`

# Exceptions

`InvalidParameterValueException`, `DashboardNotFoundError` or `InternalServiceFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteDashboards)
"""
@inline delete_dashboards(aws::AWSConfig=default_aws_config(); args...) = delete_dashboards(aws, args)

@inline delete_dashboards(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "DeleteDashboards", args)

@inline delete_dashboards(args) = delete_dashboards(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.describe_alarm_history
    describe_alarm_history([::AWSConfig], arguments::Dict)
    describe_alarm_history([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "DescribeAlarmHistory", arguments::Dict)
    monitoring([::AWSConfig], "DescribeAlarmHistory", <keyword arguments>)

# DescribeAlarmHistory Operation

Retrieves the history for the specified alarm. You can filter the results by date range or item type. If an alarm name is not specified, the histories for all alarms are returned.

CloudWatch retains the history of an alarm even if you delete the alarm.

# Arguments

## `AlarmName = ::String`
The name of the alarm.


## `HistoryItemType = "ConfigurationUpdate", "StateUpdate" or "Action"`
The type of alarm histories to retrieve.


## `StartDate = timestamp`
The starting date to retrieve alarm history.


## `EndDate = timestamp`
The ending date to retrieve alarm history.


## `MaxRecords = ::Int`
The maximum number of alarm history records to retrieve.


## `NextToken = ::String`
The token returned by a previous call to indicate that there is more data available.




# Returns

`DescribeAlarmHistoryOutput`

# Exceptions

`InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmHistory)
"""
@inline describe_alarm_history(aws::AWSConfig=default_aws_config(); args...) = describe_alarm_history(aws, args)

@inline describe_alarm_history(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "DescribeAlarmHistory", args)

@inline describe_alarm_history(args) = describe_alarm_history(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.describe_alarms
    describe_alarms([::AWSConfig], arguments::Dict)
    describe_alarms([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "DescribeAlarms", arguments::Dict)
    monitoring([::AWSConfig], "DescribeAlarms", <keyword arguments>)

# DescribeAlarms Operation

Retrieves the specified alarms. If no alarms are specified, all alarms are returned. Alarms can be retrieved by using only a prefix for the alarm name, the alarm state, or a prefix for any action.

# Arguments

## `AlarmNames = [::String, ...]`
The names of the alarms.


## `AlarmNamePrefix = ::String`
The alarm name prefix. If this parameter is specified, you cannot specify `AlarmNames`.


## `StateValue = "OK", "ALARM" or "INSUFFICIENT_DATA"`
The state value to be used in matching alarms.


## `ActionPrefix = ::String`
The action name prefix.


## `MaxRecords = ::Int`
The maximum number of alarm descriptions to retrieve.


## `NextToken = ::String`
The token returned by a previous call to indicate that there is more data available.




# Returns

`DescribeAlarmsOutput`

# Exceptions

`InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarms)
"""
@inline describe_alarms(aws::AWSConfig=default_aws_config(); args...) = describe_alarms(aws, args)

@inline describe_alarms(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "DescribeAlarms", args)

@inline describe_alarms(args) = describe_alarms(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.describe_alarms_for_metric
    describe_alarms_for_metric([::AWSConfig], arguments::Dict)
    describe_alarms_for_metric([::AWSConfig]; MetricName=, Namespace=, <keyword arguments>)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "DescribeAlarmsForMetric", arguments::Dict)
    monitoring([::AWSConfig], "DescribeAlarmsForMetric", MetricName=, Namespace=, <keyword arguments>)

# DescribeAlarmsForMetric Operation

Retrieves the alarms for the specified metric. To filter the results, specify a statistic, period, or unit.

# Arguments

## `MetricName = ::String` -- *Required*
The name of the metric.


## `Namespace = ::String` -- *Required*
The namespace of the metric.


## `Statistic = "SampleCount", "Average", "Sum", "Minimum" or "Maximum"`
The statistic for the metric, other than percentiles. For percentile statistics, use `ExtendedStatistics`.


## `ExtendedStatistic = ::String`
The percentile statistic for the metric. Specify a value between p0.0 and p100.


## `Dimensions = [[ ... ], ...]`
The dimensions associated with the metric. If the metric has any associated dimensions, you must specify them in order for the call to succeed.
```
 Dimensions = [[
        "Name" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `Period = ::Int`
The period, in seconds, over which the statistic is applied.


## `Unit = "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second" or "None"`
The unit for the metric.




# Returns

`DescribeAlarmsForMetricOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsForMetric)
"""
@inline describe_alarms_for_metric(aws::AWSConfig=default_aws_config(); args...) = describe_alarms_for_metric(aws, args)

@inline describe_alarms_for_metric(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "DescribeAlarmsForMetric", args)

@inline describe_alarms_for_metric(args) = describe_alarms_for_metric(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.disable_alarm_actions
    disable_alarm_actions([::AWSConfig], arguments::Dict)
    disable_alarm_actions([::AWSConfig]; AlarmNames=)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "DisableAlarmActions", arguments::Dict)
    monitoring([::AWSConfig], "DisableAlarmActions", AlarmNames=)

# DisableAlarmActions Operation

Disables the actions for the specified alarms. When an alarm's actions are disabled, the alarm actions do not execute when the alarm state changes.

# Arguments

## `AlarmNames = [::String, ...]` -- *Required*
The names of the alarms.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DisableAlarmActions)
"""
@inline disable_alarm_actions(aws::AWSConfig=default_aws_config(); args...) = disable_alarm_actions(aws, args)

@inline disable_alarm_actions(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "DisableAlarmActions", args)

@inline disable_alarm_actions(args) = disable_alarm_actions(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.enable_alarm_actions
    enable_alarm_actions([::AWSConfig], arguments::Dict)
    enable_alarm_actions([::AWSConfig]; AlarmNames=)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "EnableAlarmActions", arguments::Dict)
    monitoring([::AWSConfig], "EnableAlarmActions", AlarmNames=)

# EnableAlarmActions Operation

Enables the actions for the specified alarms.

# Arguments

## `AlarmNames = [::String, ...]` -- *Required*
The names of the alarms.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/EnableAlarmActions)
"""
@inline enable_alarm_actions(aws::AWSConfig=default_aws_config(); args...) = enable_alarm_actions(aws, args)

@inline enable_alarm_actions(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "EnableAlarmActions", args)

@inline enable_alarm_actions(args) = enable_alarm_actions(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.get_dashboard
    get_dashboard([::AWSConfig], arguments::Dict)
    get_dashboard([::AWSConfig]; DashboardName=)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "GetDashboard", arguments::Dict)
    monitoring([::AWSConfig], "GetDashboard", DashboardName=)

# GetDashboard Operation

Displays the details of the dashboard that you specify.

To copy an existing dashboard, use `GetDashboard`, and then use the data returned within `DashboardBody` as the template for the new dashboard when you call `PutDashboard` to create the copy.

# Arguments

## `DashboardName = ::String` -- *Required*
The name of the dashboard to be described.




# Returns

`GetDashboardOutput`

# Exceptions

`InvalidParameterValueException`, `DashboardNotFoundError` or `InternalServiceFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetDashboard)
"""
@inline get_dashboard(aws::AWSConfig=default_aws_config(); args...) = get_dashboard(aws, args)

@inline get_dashboard(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "GetDashboard", args)

@inline get_dashboard(args) = get_dashboard(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.get_metric_data
    get_metric_data([::AWSConfig], arguments::Dict)
    get_metric_data([::AWSConfig]; MetricDataQueries=, StartTime=, EndTime=, <keyword arguments>)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "GetMetricData", arguments::Dict)
    monitoring([::AWSConfig], "GetMetricData", MetricDataQueries=, StartTime=, EndTime=, <keyword arguments>)

# GetMetricData Operation

You can use the `GetMetricData` API to retrieve as many as 100 different metrics in a single request, with a total of as many as 100,800 datapoints. You can also optionally perform math expressions on the values of the returned statistics, to create new time series that represent new insights into your data. For example, using Lambda metrics, you could divide the Errors metric by the Invocations metric to get an error rate time series. For more information about metric math expressions, see [Metric Math Syntax and Functions](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax) in the *Amazon CloudWatch User Guide*.

Calls to the `GetMetricData` API have a different pricing structure than calls to `GetMetricStatistics`. For more information about pricing, see [Amazon CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/).

# Arguments

## `MetricDataQueries = [[ ... ], ...]` -- *Required*
The metric queries to be returned. A single `GetMetricData` call can include as many as 100 `MetricDataQuery` structures. Each of these structures can specify either a metric to retrieve, or a math expression to perform on retrieved data.
```
 MetricDataQueries = [[
        "Id" => <required> ::String,
        "MetricStat" =>  [
            "Metric" => <required> [
                "Namespace" =>  ::String,
                "MetricName" =>  ::String,
                "Dimensions" =>  [[
                    "Name" => <required> ::String,
                    "Value" => <required> ::String
                ], ...]
            ],
            "Period" => <required> ::Int,
            "Stat" => <required> ::String,
            "Unit" =>  "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second" or "None"
        ],
        "Expression" =>  ::String,
        "Label" =>  ::String,
        "ReturnData" =>  ::Bool
    ], ...]
```

## `StartTime = timestamp` -- *Required*
The time stamp indicating the earliest data to be returned.


## `EndTime = timestamp` -- *Required*
The time stamp indicating the latest data to be returned.


## `NextToken = ::String`
Include this value, if it was returned by the previous call, to get the next set of data points.


## `ScanBy = "TimestampDescending" or "TimestampAscending"`
The order in which data points should be returned. `TimestampDescending` returns the newest data first and paginates when the `MaxDatapoints` limit is reached. `TimestampAscending` returns the oldest data first and paginates when the `MaxDatapoints` limit is reached.


## `MaxDatapoints = ::Int`
The maximum number of data points the request should return before paginating. If you omit this, the default of 100,800 is used.




# Returns

`GetMetricDataOutput`

# Exceptions

`InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricData)
"""
@inline get_metric_data(aws::AWSConfig=default_aws_config(); args...) = get_metric_data(aws, args)

@inline get_metric_data(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "GetMetricData", args)

@inline get_metric_data(args) = get_metric_data(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.get_metric_statistics
    get_metric_statistics([::AWSConfig], arguments::Dict)
    get_metric_statistics([::AWSConfig]; Namespace=, MetricName=, StartTime=, EndTime=, Period=, <keyword arguments>)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "GetMetricStatistics", arguments::Dict)
    monitoring([::AWSConfig], "GetMetricStatistics", Namespace=, MetricName=, StartTime=, EndTime=, Period=, <keyword arguments>)

# GetMetricStatistics Operation

Gets statistics for the specified metric.

The maximum number of data points returned from a single call is 1,440. If you request more than 1,440 data points, CloudWatch returns an error. To reduce the number of data points, you can narrow the specified time range and make multiple requests across adjacent time ranges, or you can increase the specified period. Data points are not returned in chronological order.

CloudWatch aggregates data points based on the length of the period that you specify. For example, if you request statistics with a one-hour period, CloudWatch aggregates all data points with time stamps that fall within each one-hour period. Therefore, the number of values aggregated by CloudWatch is larger than the number of data points returned.

CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:

*   The SampleCount value of the statistic set is 1.

*   The Min and the Max values of the statistic set are equal.

Amazon CloudWatch retains metric data as follows:

*   Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a `StorageResolution` of 1.

*   Data points with a period of 60 seconds (1-minute) are available for 15 days.

*   Data points with a period of 300 seconds (5-minute) are available for 63 days.

*   Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).

Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour.

CloudWatch started retaining 5-minute and 1-hour metric data as of July 9, 2016.

For information about metrics and dimensions supported by AWS services, see the [Amazon CloudWatch Metrics and Dimensions Reference](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html) in the *Amazon CloudWatch User Guide*.

# Arguments

## `Namespace = ::String` -- *Required*
The namespace of the metric, with or without spaces.


## `MetricName = ::String` -- *Required*
The name of the metric, with or without spaces.


## `Dimensions = [[ ... ], ...]`
The dimensions. If the metric contains multiple dimensions, you must include a value for each dimension. CloudWatch treats each unique combination of dimensions as a separate metric. If a specific combination of dimensions was not published, you can't retrieve statistics for it. You must specify the same dimensions that were used when the metrics were created. For an example, see [Dimension Combinations](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations) in the *Amazon CloudWatch User Guide*. For more information about specifying dimensions, see [Publishing Metrics](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html) in the *Amazon CloudWatch User Guide*.
```
 Dimensions = [[
        "Name" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `StartTime = timestamp` -- *Required*
The time stamp that determines the first data point to return. Start times are evaluated relative to the time that CloudWatch receives the request.

The value specified is inclusive; results include data points with the specified time stamp. The time stamp must be in ISO 8601 UTC format (for example, 2016-10-03T23:00:00Z).

CloudWatch rounds the specified time stamp as follows:

*   Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.

*   Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.

*   Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00.

If you set `Period` to 5, 10, or 30, the start time of your request is rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a period of 5 seconds, you receive data timestamped between 15:02:15 and 15:07:15.


## `EndTime = timestamp` -- *Required*
The time stamp that determines the last data point to return.

The value specified is exclusive; results include data points up to the specified time stamp. The time stamp must be in ISO 8601 UTC format (for example, 2016-10-10T23:00:00Z).


## `Period = ::Int` -- *Required*
The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a `PutMetricData` call that includes a `StorageResolution` of 1 second.

If the `StartTime` parameter specifies a time stamp that is greater than 3 hours ago, you must specify the period as follows or no data points in that time range is returned:

*   Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).

*   Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).

*   Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).


## `Statistics = ["SampleCount", "Average", "Sum", "Minimum" or "Maximum", ...]`
The metric statistics, other than percentile. For percentile statistics, use `ExtendedStatistics`. When calling `GetMetricStatistics`, you must specify either `Statistics` or `ExtendedStatistics`, but not both.


## `ExtendedStatistics = [::String, ...]`
The percentile statistics. Specify values between p0.0 and p100. When calling `GetMetricStatistics`, you must specify either `Statistics` or `ExtendedStatistics`, but not both.


## `Unit = "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second" or "None"`
The unit for a given metric. Metrics may be reported in multiple units. Not supplying a unit results in all units being returned. If you specify only a unit that the metric does not report, the results of the call are null.




# Returns

`GetMetricStatisticsOutput`

# Exceptions

`InvalidParameterValueException`, `MissingRequiredParameterException`, `InvalidParameterCombinationException` or `InternalServiceFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricStatistics)
"""
@inline get_metric_statistics(aws::AWSConfig=default_aws_config(); args...) = get_metric_statistics(aws, args)

@inline get_metric_statistics(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "GetMetricStatistics", args)

@inline get_metric_statistics(args) = get_metric_statistics(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.list_dashboards
    list_dashboards([::AWSConfig], arguments::Dict)
    list_dashboards([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "ListDashboards", arguments::Dict)
    monitoring([::AWSConfig], "ListDashboards", <keyword arguments>)

# ListDashboards Operation

Returns a list of the dashboards for your account. If you include `DashboardNamePrefix`, only those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are listed.

# Arguments

## `DashboardNamePrefix = ::String`
If you specify this parameter, only the dashboards with names starting with the specified string are listed. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, ".", "-", and "_".


## `NextToken = ::String`
The token returned by a previous call to indicate that there is more data available.




# Returns

`ListDashboardsOutput`

# Exceptions

`InvalidParameterValueException` or `InternalServiceFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListDashboards)
"""
@inline list_dashboards(aws::AWSConfig=default_aws_config(); args...) = list_dashboards(aws, args)

@inline list_dashboards(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "ListDashboards", args)

@inline list_dashboards(args) = list_dashboards(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.list_metrics
    list_metrics([::AWSConfig], arguments::Dict)
    list_metrics([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "ListMetrics", arguments::Dict)
    monitoring([::AWSConfig], "ListMetrics", <keyword arguments>)

# ListMetrics Operation

List the specified metrics. You can use the returned metrics with [GetMetricStatistics](@ref) to obtain statistical data.

Up to 500 results are returned for any one call. To retrieve additional results, use the returned token with subsequent calls.

After you create a metric, allow up to fifteen minutes before the metric appears. Statistics about the metric, however, are available sooner using [GetMetricStatistics](@ref).

# Arguments

## `Namespace = ::String`
The namespace to filter against.


## `MetricName = ::String`
The name of the metric to filter against.


## `Dimensions = [[ ... ], ...]`
The dimensions to filter against.
```
 Dimensions = [[
        "Name" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```

## `NextToken = ::String`
The token returned by a previous call to indicate that there is more data available.




# Returns

`ListMetricsOutput`

# Exceptions

`InternalServiceFault` or `InvalidParameterValueException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListMetrics)
"""
@inline list_metrics(aws::AWSConfig=default_aws_config(); args...) = list_metrics(aws, args)

@inline list_metrics(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "ListMetrics", args)

@inline list_metrics(args) = list_metrics(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.put_dashboard
    put_dashboard([::AWSConfig], arguments::Dict)
    put_dashboard([::AWSConfig]; DashboardName=, DashboardBody=)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "PutDashboard", arguments::Dict)
    monitoring([::AWSConfig], "PutDashboard", DashboardName=, DashboardBody=)

# PutDashboard Operation

Creates a dashboard if it does not already exist, or updates an existing dashboard. If you update a dashboard, the entire contents are replaced with what you specify here.

You can have up to 500 dashboards per account. All dashboards in your account are global, not region-specific.

A simple way to create a dashboard using `PutDashboard` is to copy an existing dashboard. To copy an existing dashboard using the console, you can load the dashboard and then use the View/edit source command in the Actions menu to display the JSON block for that dashboard. Another way to copy a dashboard is to use `GetDashboard`, and then use the data returned within `DashboardBody` as the template for the new dashboard when you call `PutDashboard`.

When you create a dashboard with `PutDashboard`, a good practice is to add a text widget at the top of the dashboard with a message that the dashboard was created by script and should not be changed in the console. This message could also point console users to the location of the `DashboardBody` script or the CloudFormation template used to create the dashboard.

# Arguments

## `DashboardName = ::String` -- *Required*
The name of the dashboard. If a dashboard with this name already exists, this call modifies that dashboard, replacing its current contents. Otherwise, a new dashboard is created. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, "-", and "_". This parameter is required.


## `DashboardBody = ::String` -- *Required*
The detailed information about the dashboard in JSON format, including the widgets to include and their location on the dashboard. This parameter is required.

For more information about the syntax, see [CloudWatch-Dashboard-Body-Structure](@ref).




# Returns

`PutDashboardOutput`

# Exceptions

`DashboardInvalidInputError` or `InternalServiceFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutDashboard)
"""
@inline put_dashboard(aws::AWSConfig=default_aws_config(); args...) = put_dashboard(aws, args)

@inline put_dashboard(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "PutDashboard", args)

@inline put_dashboard(args) = put_dashboard(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.put_metric_alarm
    put_metric_alarm([::AWSConfig], arguments::Dict)
    put_metric_alarm([::AWSConfig]; AlarmName=, MetricName=, Namespace=, Period=, EvaluationPeriods=, Threshold=, ComparisonOperator=, <keyword arguments>)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "PutMetricAlarm", arguments::Dict)
    monitoring([::AWSConfig], "PutMetricAlarm", AlarmName=, MetricName=, Namespace=, Period=, EvaluationPeriods=, Threshold=, ComparisonOperator=, <keyword arguments>)

# PutMetricAlarm Operation

Creates or updates an alarm and associates it with the specified metric. Optionally, this operation can associate one or more Amazon SNS resources with the alarm.

When this operation creates an alarm, the alarm state is immediately set to `INSUFFICIENT_DATA`. The alarm is evaluated and its state is set appropriately. Any actions associated with the state are then executed.

When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm.

If you are an IAM user, you must have Amazon EC2 permissions for some operations:

*   `iam:CreateServiceLinkedRole` for all alarms with EC2 actions

*   `ec2:DescribeInstanceStatus` and `ec2:DescribeInstances` for all alarms on EC2 instance status metrics

*   `ec2:StopInstances` for alarms with stop actions

*   `ec2:TerminateInstances` for alarms with terminate actions

*   `ec2:DescribeInstanceRecoveryAttribute` and `ec2:RecoverInstances` for alarms with recover actions

If you have read/write permissions for Amazon CloudWatch but not for Amazon EC2, you can still create an alarm, but the stop or terminate actions are not performed. However, if you are later granted the required permissions, the alarm actions that you created earlier are performed.

If you are using an IAM role (for example, an EC2 instance profile), you cannot stop or terminate the instance using alarm actions. However, you can still see the alarm state and perform any other actions such as Amazon SNS notifications or Auto Scaling policies.

If you are using temporary security credentials granted using AWS STS, you cannot stop or terminate an EC2 instance using alarm actions.

You must create at least one stop, terminate, or reboot alarm using either the Amazon EC2 or CloudWatch consoles to create the **EC2ActionsAccess** IAM role. After this IAM role is created, you can create stop, terminate, or reboot alarms using a command-line interface or API.

# Arguments

## `AlarmName = ::String` -- *Required*
The name for the alarm. This name must be unique within the AWS account.


## `AlarmDescription = ::String`
The description for the alarm.


## `ActionsEnabled = ::Bool`
Indicates whether actions should be executed during any changes to the alarm state.


## `OKActions = [::String, ...]`
The actions to execute when this alarm transitions to an `OK` state from any other state. Each action is specified as an Amazon Resource Name (ARN).

Valid Values: arn:aws:automate:*region*:ec2:stop | arn:aws:automate:*region*:ec2:terminate | arn:aws:automate:*region*:ec2:recover | arn:aws:sns:*region*:*account-id*:*sns-topic-name* | arn:aws:autoscaling:*region*:*account-id*:scalingPolicy:*policy-id* autoScalingGroupName/*group-friendly-name*:policyName/*policy-friendly-name*

Valid Values (for use with IAM roles): arn:aws:swf:*region*:{*account-id*}:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:*region*:{*account-id*}:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:*region*:{*account-id*}:action/actions/AWS_EC2.InstanceId.Reboot/1.0


## `AlarmActions = [::String, ...]`
The actions to execute when this alarm transitions to the `ALARM` state from any other state. Each action is specified as an Amazon Resource Name (ARN).

Valid Values: arn:aws:automate:*region*:ec2:stop | arn:aws:automate:*region*:ec2:terminate | arn:aws:automate:*region*:ec2:recover | arn:aws:sns:*region*:*account-id*:*sns-topic-name* | arn:aws:autoscaling:*region*:*account-id*:scalingPolicy:*policy-id* autoScalingGroupName/*group-friendly-name*:policyName/*policy-friendly-name*

Valid Values (for use with IAM roles): arn:aws:swf:*region*:{*account-id*}:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:*region*:{*account-id*}:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:*region*:{*account-id*}:action/actions/AWS_EC2.InstanceId.Reboot/1.0


## `InsufficientDataActions = [::String, ...]`
The actions to execute when this alarm transitions to the `INSUFFICIENT_DATA` state from any other state. Each action is specified as an Amazon Resource Name (ARN).

Valid Values: arn:aws:automate:*region*:ec2:stop | arn:aws:automate:*region*:ec2:terminate | arn:aws:automate:*region*:ec2:recover | arn:aws:sns:*region*:*account-id*:*sns-topic-name* | arn:aws:autoscaling:*region*:*account-id*:scalingPolicy:*policy-id* autoScalingGroupName/*group-friendly-name*:policyName/*policy-friendly-name*

Valid Values (for use with IAM roles): arn:aws:swf:*region*:{*account-id*}:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:*region*:{*account-id*}:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:*region*:{*account-id*}:action/actions/AWS_EC2.InstanceId.Reboot/1.0


## `MetricName = ::String` -- *Required*
The name for the metric associated with the alarm.


## `Namespace = ::String` -- *Required*
The namespace for the metric associated with the alarm.


## `Statistic = "SampleCount", "Average", "Sum", "Minimum" or "Maximum"`
The statistic for the metric associated with the alarm, other than percentile. For percentile statistics, use `ExtendedStatistic`. When you call `PutMetricAlarm`, you must specify either `Statistic` or `ExtendedStatistic,` but not both.


## `ExtendedStatistic = ::String`
The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100. When you call `PutMetricAlarm`, you must specify either `Statistic` or `ExtendedStatistic,` but not both.


## `Dimensions = [[ ... ], ...]`
The dimensions for the metric associated with the alarm.
```
 Dimensions = [[
        "Name" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `Period = ::Int` -- *Required*
The period, in seconds, over which the specified statistic is applied. Valid values are 10, 30, and any multiple of 60.

Be sure to specify 10 or 30 only for metrics that are stored by a `PutMetricData` call with a `StorageResolution` of 1. If you specify a period of 10 or 30 for a metric that does not have sub-minute resolution, the alarm still attempts to gather data at the period rate that you specify. In this case, it does not receive data for the attempts that do not correspond to a one-minute data resolution, and the alarm may often lapse into INSUFFICENT_DATA status. Specifying 10 or 30 also sets this alarm as a high-resolution alarm, which has a higher charge than other alarms. For more information about pricing, see [Amazon CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/).

An alarm's total current evaluation period can be no longer than one day, so `Period` multiplied by `EvaluationPeriods` cannot be more than 86,400 seconds.


## `Unit = "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second" or "None"`
The unit of measure for the statistic. For example, the units for the Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the number of bytes that an instance receives on all network interfaces. You can also specify a unit when you create a custom metric. Units help provide conceptual meaning to your data. Metric data points that specify a unit of measure, such as Percent, are aggregated separately.

If you specify a unit, you must use a unit that is appropriate for the metric. Otherwise, the CloudWatch alarm can get stuck in the `INSUFFICIENT DATA` state.


## `EvaluationPeriods = ::Int` -- *Required*
The number of periods over which data is compared to the specified threshold. If you are setting an alarm which requires that a number of consecutive data points be breaching to trigger the alarm, this value specifies that number. If you are setting an "M out of N" alarm, this value is the N.

An alarm's total current evaluation period can be no longer than one day, so this number multiplied by `Period` cannot be more than 86,400 seconds.


## `DatapointsToAlarm = ::Int`
The number of datapoints that must be breaching to trigger the alarm. This is used only if you are setting an "M out of N" alarm. In that case, this value is the M. For more information, see [Evaluating an Alarm](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation) in the *Amazon CloudWatch User Guide*.


## `Threshold = double` -- *Required*
The value against which the specified statistic is compared.


## `ComparisonOperator = "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold" or "LessThanOrEqualToThreshold"` -- *Required*
The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.


## `TreatMissingData = ::String`
Sets how this alarm is to handle missing data points. If `TreatMissingData` is omitted, the default behavior of `missing` is used. For more information, see [Configuring How CloudWatch Alarms Treats Missing Data](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data).

Valid Values: `breaching | notBreaching | ignore | missing`


## `EvaluateLowSampleCountPercentile = ::String`
Used only for alarms based on percentiles. If you specify `ignore`, the alarm state does not change during periods with too few data points to be statistically significant. If you specify `evaluate` or omit this parameter, the alarm is always evaluated and possibly changes state no matter how many data points are available. For more information, see [Percentile-Based CloudWatch Alarms and Low Data Samples](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples).

Valid Values: `evaluate | ignore`




# Exceptions

`LimitExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutMetricAlarm)
"""
@inline put_metric_alarm(aws::AWSConfig=default_aws_config(); args...) = put_metric_alarm(aws, args)

@inline put_metric_alarm(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "PutMetricAlarm", args)

@inline put_metric_alarm(args) = put_metric_alarm(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.put_metric_data
    put_metric_data([::AWSConfig], arguments::Dict)
    put_metric_data([::AWSConfig]; Namespace=, MetricData=)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "PutMetricData", arguments::Dict)
    monitoring([::AWSConfig], "PutMetricData", Namespace=, MetricData=)

# PutMetricData Operation

Publishes metric data points to Amazon CloudWatch. CloudWatch associates the data points with the specified metric. If the specified metric does not exist, CloudWatch creates the metric. When CloudWatch creates a metric, it can take up to fifteen minutes for the metric to appear in calls to [ListMetrics](@ref).

Each `PutMetricData` request is limited to 40 KB in size for HTTP POST requests.

Although the `Value` parameter accepts numbers of type `Double`, CloudWatch rejects values that are either too small or too large. Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.

You can use up to 10 dimensions per metric to further clarify what data the metric collects. For more information about specifying dimensions, see [Publishing Metrics](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html) in the *Amazon CloudWatch User Guide*.

Data points with time stamps from 24 hours ago or longer can take at least 48 hours to become available for [GetMetricStatistics](@ref) from the time they are submitted.

CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:

*   The SampleCount value of the statistic set is 1

*   The Min and the Max values of the statistic set are equal

# Arguments

## `Namespace = ::String` -- *Required*
The namespace for the metric data.

You cannot specify a namespace that begins with "AWS/". Namespaces that begin with "AWS/" are reserved for use by Amazon Web Services products.


## `MetricData = [[ ... ], ...]` -- *Required*
The data for the metric.
```
 MetricData = [[
        "MetricName" => <required> ::String,
        "Dimensions" =>  [[
            "Name" => <required> ::String,
            "Value" => <required> ::String
        ], ...],
        "Timestamp" =>  timestamp,
        "Value" =>  double,
        "StatisticValues" =>  [
            "SampleCount" => <required> double,
            "Sum" => <required> double,
            "Minimum" => <required> double,
            "Maximum" => <required> double
        ],
        "Unit" =>  "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second" or "None",
        "StorageResolution" =>  ::Int
    ], ...]
```



# Exceptions

`InvalidParameterValueException`, `MissingRequiredParameterException`, `InvalidParameterCombinationException` or `InternalServiceFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutMetricData)
"""
@inline put_metric_data(aws::AWSConfig=default_aws_config(); args...) = put_metric_data(aws, args)

@inline put_metric_data(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "PutMetricData", args)

@inline put_metric_data(args) = put_metric_data(default_aws_config(), args)


"""
    using AWSSDK.CloudWatch.set_alarm_state
    set_alarm_state([::AWSConfig], arguments::Dict)
    set_alarm_state([::AWSConfig]; AlarmName=, StateValue=, StateReason=, <keyword arguments>)

    using AWSCore.Services.monitoring
    monitoring([::AWSConfig], "SetAlarmState", arguments::Dict)
    monitoring([::AWSConfig], "SetAlarmState", AlarmName=, StateValue=, StateReason=, <keyword arguments>)

# SetAlarmState Operation

Temporarily sets the state of an alarm for testing purposes. When the updated state differs from the previous value, the action configured for the appropriate state is invoked. For example, if your alarm is configured to send an Amazon SNS message when an alarm is triggered, temporarily changing the alarm state to `ALARM` sends an SNS message. The alarm returns to its actual state (often within seconds). Because the alarm state change happens quickly, it is typically only visible in the alarm's **History** tab in the Amazon CloudWatch console or through [DescribeAlarmHistory](@ref).

# Arguments

## `AlarmName = ::String` -- *Required*
The name for the alarm. This name must be unique within the AWS account. The maximum length is 255 characters.


## `StateValue = "OK", "ALARM" or "INSUFFICIENT_DATA"` -- *Required*
The value of the state.


## `StateReason = ::String` -- *Required*
The reason that this alarm is set to this specific state, in text format.


## `StateReasonData = ::String`
The reason that this alarm is set to this specific state, in JSON format.




# Exceptions

`ResourceNotFound` or `InvalidFormatFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/SetAlarmState)
"""
@inline set_alarm_state(aws::AWSConfig=default_aws_config(); args...) = set_alarm_state(aws, args)

@inline set_alarm_state(aws::AWSConfig, args) = AWSCore.Services.monitoring(aws, "SetAlarmState", args)

@inline set_alarm_state(args) = set_alarm_state(default_aws_config(), args)




end # module CloudWatch


#==============================================================================#
# End of file
#==============================================================================#
