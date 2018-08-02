#==============================================================================#
# CUR.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cur-2017-01-06.normal.json
#==============================================================================#

__precompile__()

module CUR

using AWSCore


"""
    using AWSSDK.CUR.delete_report_definition
    delete_report_definition([::AWSConfig], arguments::Dict)
    delete_report_definition([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cur
    cur([::AWSConfig], "DeleteReportDefinition", arguments::Dict)
    cur([::AWSConfig], "DeleteReportDefinition", <keyword arguments>)

# DeleteReportDefinition Operation

Delete a specified report definition

# Arguments

## `ReportName = ::String`





# Returns

`DeleteReportDefinitionResponse`

# Exceptions

`InternalErrorException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/DeleteReportDefinition)
"""
@inline delete_report_definition(aws::AWSConfig=default_aws_config(); args...) = delete_report_definition(aws, args)

@inline delete_report_definition(aws::AWSConfig, args) = AWSCore.Services.cur(aws, "DeleteReportDefinition", args)

@inline delete_report_definition(args) = delete_report_definition(default_aws_config(), args)


"""
    using AWSSDK.CUR.describe_report_definitions
    describe_report_definitions([::AWSConfig], arguments::Dict)
    describe_report_definitions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cur
    cur([::AWSConfig], "DescribeReportDefinitions", arguments::Dict)
    cur([::AWSConfig], "DescribeReportDefinitions", <keyword arguments>)

# DescribeReportDefinitions Operation

Describe a list of report definitions owned by the account

# Arguments

## `MaxResults = ::Int`



## `NextToken = ::String`





# Returns

`DescribeReportDefinitionsResponse`

# Exceptions

`InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/DescribeReportDefinitions)
"""
@inline describe_report_definitions(aws::AWSConfig=default_aws_config(); args...) = describe_report_definitions(aws, args)

@inline describe_report_definitions(aws::AWSConfig, args) = AWSCore.Services.cur(aws, "DescribeReportDefinitions", args)

@inline describe_report_definitions(args) = describe_report_definitions(default_aws_config(), args)


"""
    using AWSSDK.CUR.put_report_definition
    put_report_definition([::AWSConfig], arguments::Dict)
    put_report_definition([::AWSConfig]; ReportDefinition=)

    using AWSCore.Services.cur
    cur([::AWSConfig], "PutReportDefinition", arguments::Dict)
    cur([::AWSConfig], "PutReportDefinition", ReportDefinition=)

# PutReportDefinition Operation

Create a new report definition

# Arguments

## `ReportDefinition = [ ... ]` -- *Required*

```
 ReportDefinition = [
        "ReportName" => <required> ::String,
        "TimeUnit" => <required> "HOURLY" or "DAILY",
        "Format" => <required> "textORcsv",
        "Compression" => <required> "ZIP" or "GZIP",
        "AdditionalSchemaElements" => <required> ["RESOURCES", ...],
        "S3Bucket" => <required> ::String,
        "S3Prefix" => <required> ::String,
        "S3Region" => <required> "us-east-1", "us-west-1", "us-west-2", "eu-central-1", "eu-west-1", "ap-southeast-1", "ap-southeast-2" or "ap-northeast-1",
        "AdditionalArtifacts" =>  ["REDSHIFT" or "QUICKSIGHT", ...]
    ]
```



# Returns

`PutReportDefinitionResponse`

# Exceptions

`DuplicateReportNameException`, `ReportLimitReachedException`, `InternalErrorException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/PutReportDefinition)
"""
@inline put_report_definition(aws::AWSConfig=default_aws_config(); args...) = put_report_definition(aws, args)

@inline put_report_definition(aws::AWSConfig, args) = AWSCore.Services.cur(aws, "PutReportDefinition", args)

@inline put_report_definition(args) = put_report_definition(default_aws_config(), args)




end # module CUR


#==============================================================================#
# End of file
#==============================================================================#
