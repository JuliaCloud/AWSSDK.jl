#==============================================================================#
# WAFRegional.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/waf-regional-2016-11-28.normal.json
#==============================================================================#

__precompile__()

module WAFRegional

using AWSCore


"""
    using AWSSDK.WAFRegional.associate_web_acl
    associate_web_acl([::AWSConfig], arguments::Dict)
    associate_web_acl([::AWSConfig]; WebACLId=, ResourceArn=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "AssociateWebACL", arguments::Dict)
    waf_regional([::AWSConfig], "AssociateWebACL", WebACLId=, ResourceArn=)

# AssociateWebACL Operation

Associates a web ACL with a resource.

# Arguments

## `WebACLId = ::String` -- *Required*
A unique identifier (ID) for the web ACL.


## `ResourceArn = ::String` -- *Required*
The ARN (Amazon Resource Name) of the resource to be protected.




# Returns

`AssociateWebACLResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidParameterException`, `WAFNonexistentItemException` or `WAFUnavailableEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/AssociateWebACL)
"""
@inline associate_web_acl(aws::AWSConfig=default_aws_config(); args...) = associate_web_acl(aws, args)

@inline associate_web_acl(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "AssociateWebACL", args)

@inline associate_web_acl(args) = associate_web_acl(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_byte_match_set
    create_byte_match_set([::AWSConfig], arguments::Dict)
    create_byte_match_set([::AWSConfig]; Name=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateByteMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "CreateByteMatchSet", Name=, ChangeToken=)

# CreateByteMatchSet Operation

Creates a `ByteMatchSet`. You then use [UpdateByteMatchSet](@ref) to identify the part of a web request that you want AWS WAF to inspect, such as the values of the `User-Agent` header or the query string. For example, you can create a `ByteMatchSet` that matches any requests with `User-Agent` headers that contain the string `BadBot`. You can then configure AWS WAF to reject those requests.

To create and configure a `ByteMatchSet`, perform the following steps:

1.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateByteMatchSet` request.

2.  Submit a `CreateByteMatchSet` request.

3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an `UpdateByteMatchSet` request.

4.  Submit an [UpdateByteMatchSet](@ref) request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [ByteMatchSet](@ref). You can't change `Name` after you create a `ByteMatchSet`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateByteMatchSetResponse`

# Exceptions

`WAFDisallowedNameException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidParameterException`, `WAFStaleDataException` or `WAFLimitsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateByteMatchSet)
"""
@inline create_byte_match_set(aws::AWSConfig=default_aws_config(); args...) = create_byte_match_set(aws, args)

@inline create_byte_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateByteMatchSet", args)

@inline create_byte_match_set(args) = create_byte_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_geo_match_set
    create_geo_match_set([::AWSConfig], arguments::Dict)
    create_geo_match_set([::AWSConfig]; Name=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateGeoMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "CreateGeoMatchSet", Name=, ChangeToken=)

# CreateGeoMatchSet Operation

Creates an [GeoMatchSet](@ref), which you use to specify which web requests you want to allow or block based on the country that the requests originate from. For example, if you're receiving a lot of requests from one or more countries and you want to block the requests, you can create an `GeoMatchSet` that contains those countries and then configure AWS WAF to block the requests.

To create and configure a `GeoMatchSet`, perform the following steps:

1.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateGeoMatchSet` request.

2.  Submit a `CreateGeoMatchSet` request.

3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateGeoMatchSet](@ref) request.

4.  Submit an `UpdateGeoMatchSetSet` request to specify the countries that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [GeoMatchSet](@ref). You can't change `Name` after you create the `GeoMatchSet`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateGeoMatchSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFDisallowedNameException`, `WAFInvalidParameterException` or `WAFLimitsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateGeoMatchSet)
"""
@inline create_geo_match_set(aws::AWSConfig=default_aws_config(); args...) = create_geo_match_set(aws, args)

@inline create_geo_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateGeoMatchSet", args)

@inline create_geo_match_set(args) = create_geo_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_ipset
    create_ipset([::AWSConfig], arguments::Dict)
    create_ipset([::AWSConfig]; Name=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateIPSet", arguments::Dict)
    waf_regional([::AWSConfig], "CreateIPSet", Name=, ChangeToken=)

# CreateIPSet Operation

Creates an [IPSet](@ref), which you use to specify which web requests you want to allow or block based on the IP addresses that the requests originate from. For example, if you're receiving a lot of requests from one or more individual IP addresses or one or more ranges of IP addresses and you want to block the requests, you can create an `IPSet` that contains those IP addresses and then configure AWS WAF to block the requests.

To create and configure an `IPSet`, perform the following steps:

1.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateIPSet` request.

2.  Submit a `CreateIPSet` request.

3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateIPSet](@ref) request.

4.  Submit an `UpdateIPSet` request to specify the IP addresses that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [IPSet](@ref). You can't change `Name` after you create the `IPSet`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateIPSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFDisallowedNameException`, `WAFInvalidParameterException` or `WAFLimitsExceededException`.

# Example: To create an IP set

The following example creates an IP match set named MyIPSetFriendlyName.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "Name" => "MyIPSetFriendlyName"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "IPSet" => Dict(
        "IPSetDescriptors" => [
            Dict(
                "Type" => "IPV4",
                "Value" => "192.0.2.44/32"
            )
        ],
        "IPSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
        "Name" => "MyIPSetFriendlyName"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateIPSet)
"""
@inline create_ipset(aws::AWSConfig=default_aws_config(); args...) = create_ipset(aws, args)

@inline create_ipset(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateIPSet", args)

@inline create_ipset(args) = create_ipset(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_rate_based_rule
    create_rate_based_rule([::AWSConfig], arguments::Dict)
    create_rate_based_rule([::AWSConfig]; Name=, MetricName=, RateKey=, RateLimit=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateRateBasedRule", arguments::Dict)
    waf_regional([::AWSConfig], "CreateRateBasedRule", Name=, MetricName=, RateKey=, RateLimit=, ChangeToken=)

# CreateRateBasedRule Operation

Creates a [RateBasedRule](@ref). The `RateBasedRule` contains a `RateLimit`, which specifies the maximum number of requests that AWS WAF allows from a specified IP address in a five-minute period. The `RateBasedRule` also contains the `IPSet` objects, `ByteMatchSet` objects, and other predicates that identify the requests that you want to count or block if these requests exceed the `RateLimit`.

If you add more than one predicate to a `RateBasedRule`, a request not only must exceed the `RateLimit`, but it also must match all the specifications to be counted or blocked. For example, suppose you add the following to a `RateBasedRule`:

*   An `IPSet` that matches the IP address `192.0.2.44/32`

*   A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header

Further, you specify a `RateLimit` of 15,000.

You then add the `RateBasedRule` to a `WebACL` and specify that you want to block requests that meet the conditions in the rule. For a request to be blocked, it must come from the IP address 192.0.2.44 *and* the `User-Agent` header in the request must contain the value `BadBot`. Further, requests that match these two conditions must be received at a rate of more than 15,000 requests every five minutes. If both conditions are met and the rate is exceeded, AWS WAF blocks the requests. If the rate drops below 15,000 for a five-minute period, AWS WAF no longer blocks the requests.

As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a `RateBasedRule`:

*   A `ByteMatchSet` with `FieldToMatch` of `URI`

*   A `PositionalConstraint` of `STARTS_WITH`

*   A `TargetString` of `login`

Further, you specify a `RateLimit` of 15,000.

By adding this `RateBasedRule` to a `WebACL`, you could limit requests to your login page without affecting the rest of your site.

To create and configure a `RateBasedRule`, perform the following steps:

1.  Create and update the predicates that you want to include in the rule. For more information, see [CreateByteMatchSet](@ref), [CreateIPSet](@ref), and [CreateSqlInjectionMatchSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateRule` request.

3.  Submit a `CreateRateBasedRule` request.

4.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateRule](@ref) request.

5.  Submit an `UpdateRateBasedRule` request to specify the predicates that you want to include in the rule.

6.  Create and update a `WebACL` that contains the `RateBasedRule`. For more information, see [CreateWebACL](@ref).

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [RateBasedRule](@ref). You can't change the name of a `RateBasedRule` after you create it.


## `MetricName = ::String` -- *Required*
A friendly name or description for the metrics for this `RateBasedRule`. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the `RateBasedRule`.


## `RateKey = "IP"` -- *Required*
The field that AWS WAF uses to determine if requests are likely arriving from a single source and thus subject to rate monitoring. The only valid value for `RateKey` is `IP`. `IP` indicates that requests that arrive from the same IP address are subject to the `RateLimit` that is specified in the `RateBasedRule`.


## `RateLimit = ::Int` -- *Required*
The maximum number of requests, which have an identical value in the field that is specified by `RateKey`, allowed in a five-minute period. If the number of requests exceeds the `RateLimit` and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.


## `ChangeToken = ::String` -- *Required*
The `ChangeToken` that you used to submit the `CreateRateBasedRule` request. You can also use this value to query the status of the request. For more information, see [GetChangeTokenStatus](@ref).




# Returns

`CreateRateBasedRuleResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFDisallowedNameException`, `WAFInvalidParameterException` or `WAFLimitsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRateBasedRule)
"""
@inline create_rate_based_rule(aws::AWSConfig=default_aws_config(); args...) = create_rate_based_rule(aws, args)

@inline create_rate_based_rule(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateRateBasedRule", args)

@inline create_rate_based_rule(args) = create_rate_based_rule(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_regex_match_set
    create_regex_match_set([::AWSConfig], arguments::Dict)
    create_regex_match_set([::AWSConfig]; Name=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateRegexMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "CreateRegexMatchSet", Name=, ChangeToken=)

# CreateRegexMatchSet Operation

Creates a [RegexMatchSet](@ref). You then use [UpdateRegexMatchSet](@ref) to identify the part of a web request that you want AWS WAF to inspect, such as the values of the `User-Agent` header or the query string. For example, you can create a `RegexMatchSet` that contains a `RegexMatchTuple` that looks for any requests with `User-Agent` headers that match a `RegexPatternSet` with pattern `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those requests.

To create and configure a `RegexMatchSet`, perform the following steps:

1.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateRegexMatchSet` request.

2.  Submit a `CreateRegexMatchSet` request.

3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an `UpdateRegexMatchSet` request.

4.  Submit an [UpdateRegexMatchSet](@ref) request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value, using a `RegexPatternSet`, that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [RegexMatchSet](@ref). You can't change `Name` after you create a `RegexMatchSet`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateRegexMatchSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFDisallowedNameException` or `WAFLimitsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRegexMatchSet)
"""
@inline create_regex_match_set(aws::AWSConfig=default_aws_config(); args...) = create_regex_match_set(aws, args)

@inline create_regex_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateRegexMatchSet", args)

@inline create_regex_match_set(args) = create_regex_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_regex_pattern_set
    create_regex_pattern_set([::AWSConfig], arguments::Dict)
    create_regex_pattern_set([::AWSConfig]; Name=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateRegexPatternSet", arguments::Dict)
    waf_regional([::AWSConfig], "CreateRegexPatternSet", Name=, ChangeToken=)

# CreateRegexPatternSet Operation

Creates a `RegexPatternSet`. You then use [UpdateRegexPatternSet](@ref) to specify the regular expression (regex) pattern that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those requests.

To create and configure a `RegexPatternSet`, perform the following steps:

1.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateRegexPatternSet` request.

2.  Submit a `CreateRegexPatternSet` request.

3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an `UpdateRegexPatternSet` request.

4.  Submit an [UpdateRegexPatternSet](@ref) request to specify the string that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [RegexPatternSet](@ref). You can't change `Name` after you create a `RegexPatternSet`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateRegexPatternSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFDisallowedNameException` or `WAFLimitsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRegexPatternSet)
"""
@inline create_regex_pattern_set(aws::AWSConfig=default_aws_config(); args...) = create_regex_pattern_set(aws, args)

@inline create_regex_pattern_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateRegexPatternSet", args)

@inline create_regex_pattern_set(args) = create_regex_pattern_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_rule
    create_rule([::AWSConfig], arguments::Dict)
    create_rule([::AWSConfig]; Name=, MetricName=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateRule", arguments::Dict)
    waf_regional([::AWSConfig], "CreateRule", Name=, MetricName=, ChangeToken=)

# CreateRule Operation

Creates a `Rule`, which contains the `IPSet` objects, `ByteMatchSet` objects, and other predicates that identify the requests that you want to block. If you add more than one predicate to a `Rule`, a request must match all of the specifications to be allowed or blocked. For example, suppose you add the following to a `Rule`:

*   An `IPSet` that matches the IP address `192.0.2.44/32`

*   A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header

You then add the `Rule` to a `WebACL` and specify that you want to blocks requests that satisfy the `Rule`. For a request to be blocked, it must come from the IP address 192.0.2.44 *and* the `User-Agent` header in the request must contain the value `BadBot`.

To create and configure a `Rule`, perform the following steps:

1.  Create and update the predicates that you want to include in the `Rule`. For more information, see [CreateByteMatchSet](@ref), [CreateIPSet](@ref), and [CreateSqlInjectionMatchSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateRule` request.

3.  Submit a `CreateRule` request.

4.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateRule](@ref) request.

5.  Submit an `UpdateRule` request to specify the predicates that you want to include in the `Rule`.

6.  Create and update a `WebACL` that contains the `Rule`. For more information, see [CreateWebACL](@ref).

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [Rule](@ref). You can't change the name of a `Rule` after you create it.


## `MetricName = ::String` -- *Required*
A friendly name or description for the metrics for this `Rule`. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the `Rule`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateRuleResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFDisallowedNameException`, `WAFInvalidParameterException` or `WAFLimitsExceededException`.

# Example: To create a rule

The following example creates a rule named WAFByteHeaderRule.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "MetricName" => "WAFByteHeaderRule",
    "Name" => "WAFByteHeaderRule"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "Rule" => Dict(
        "MetricName" => "WAFByteHeaderRule",
        "Name" => "WAFByteHeaderRule",
        "Predicates" => [
            Dict(
                "DataId" => "MyByteMatchSetID",
                "Negated" => false,
                "Type" => "ByteMatch"
            )
        ],
        "RuleId" => "WAFRule-1-Example"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRule)
"""
@inline create_rule(aws::AWSConfig=default_aws_config(); args...) = create_rule(aws, args)

@inline create_rule(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateRule", args)

@inline create_rule(args) = create_rule(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_rule_group
    create_rule_group([::AWSConfig], arguments::Dict)
    create_rule_group([::AWSConfig]; Name=, MetricName=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateRuleGroup", arguments::Dict)
    waf_regional([::AWSConfig], "CreateRuleGroup", Name=, MetricName=, ChangeToken=)

# CreateRuleGroup Operation

Creates a `RuleGroup`. A rule group is a collection of predefined rules that you add to a web ACL. You use [UpdateRuleGroup](@ref) to add rules to the rule group.

Rule groups are subject to the following limits:

*   Three rule groups per account. You can request an increase to this limit by contacting customer support.

*   One rule group per web ACL.

*   Ten rules per rule group.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [RuleGroup](@ref). You can't change `Name` after you create a `RuleGroup`.


## `MetricName = ::String` -- *Required*
A friendly name or description for the metrics for this `RuleGroup`. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the `RuleGroup`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateRuleGroupResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFDisallowedNameException` or `WAFLimitsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateRuleGroup)
"""
@inline create_rule_group(aws::AWSConfig=default_aws_config(); args...) = create_rule_group(aws, args)

@inline create_rule_group(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateRuleGroup", args)

@inline create_rule_group(args) = create_rule_group(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_size_constraint_set
    create_size_constraint_set([::AWSConfig], arguments::Dict)
    create_size_constraint_set([::AWSConfig]; Name=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateSizeConstraintSet", arguments::Dict)
    waf_regional([::AWSConfig], "CreateSizeConstraintSet", Name=, ChangeToken=)

# CreateSizeConstraintSet Operation

Creates a `SizeConstraintSet`. You then use [UpdateSizeConstraintSet](@ref) to identify the part of a web request that you want AWS WAF to check for length, such as the length of the `User-Agent` header or the length of the query string. For example, you can create a `SizeConstraintSet` that matches any requests that have a query string that is longer than 100 bytes. You can then configure AWS WAF to reject those requests.

To create and configure a `SizeConstraintSet`, perform the following steps:

1.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateSizeConstraintSet` request.

2.  Submit a `CreateSizeConstraintSet` request.

3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.

4.  Submit an [UpdateSizeConstraintSet](@ref) request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [SizeConstraintSet](@ref). You can't change `Name` after you create a `SizeConstraintSet`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateSizeConstraintSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFDisallowedNameException`, `WAFInvalidParameterException` or `WAFLimitsExceededException`.

# Example: To create a size constraint

The following example creates size constraint set named MySampleSizeConstraintSet.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "Name" => "MySampleSizeConstraintSet"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "SizeConstraintSet" => Dict(
        "Name" => "MySampleSizeConstraintSet",
        "SizeConstraintSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
        "SizeConstraints" => [
            Dict(
                "ComparisonOperator" => "GT",
                "FieldToMatch" => Dict(
                    "Type" => "QUERY_STRING"
                ),
                "Size" => 0,
                "TextTransformation" => "NONE"
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateSizeConstraintSet)
"""
@inline create_size_constraint_set(aws::AWSConfig=default_aws_config(); args...) = create_size_constraint_set(aws, args)

@inline create_size_constraint_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateSizeConstraintSet", args)

@inline create_size_constraint_set(args) = create_size_constraint_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_sql_injection_match_set
    create_sql_injection_match_set([::AWSConfig], arguments::Dict)
    create_sql_injection_match_set([::AWSConfig]; Name=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateSqlInjectionMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "CreateSqlInjectionMatchSet", Name=, ChangeToken=)

# CreateSqlInjectionMatchSet Operation

Creates a [SqlInjectionMatchSet](@ref), which you use to allow, block, or count requests that contain snippets of SQL code in a specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.

To create and configure a `SqlInjectionMatchSet`, perform the following steps:

1.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateSqlInjectionMatchSet` request.

2.  Submit a `CreateSqlInjectionMatchSet` request.

3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateSqlInjectionMatchSet](@ref) request.

4.  Submit an [UpdateSqlInjectionMatchSet](@ref) request to specify the parts of web requests in which you want to allow, block, or count malicious SQL code.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description for the [SqlInjectionMatchSet](@ref) that you're creating. You can't change `Name` after you create the `SqlInjectionMatchSet`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateSqlInjectionMatchSetResponse`

# Exceptions

`WAFDisallowedNameException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidParameterException`, `WAFStaleDataException` or `WAFLimitsExceededException`.

# Example: To create a SQL injection match set

The following example creates a SQL injection match set named MySQLInjectionMatchSet.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "Name" => "MySQLInjectionMatchSet"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "SqlInjectionMatchSet" => Dict(
        "Name" => "MySQLInjectionMatchSet",
        "SqlInjectionMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
        "SqlInjectionMatchTuples" => [
            Dict(
                "FieldToMatch" => Dict(
                    "Type" => "QUERY_STRING"
                ),
                "TextTransformation" => "URL_DECODE"
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateSqlInjectionMatchSet)
"""
@inline create_sql_injection_match_set(aws::AWSConfig=default_aws_config(); args...) = create_sql_injection_match_set(aws, args)

@inline create_sql_injection_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateSqlInjectionMatchSet", args)

@inline create_sql_injection_match_set(args) = create_sql_injection_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_web_acl
    create_web_acl([::AWSConfig], arguments::Dict)
    create_web_acl([::AWSConfig]; Name=, MetricName=, DefaultAction=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateWebACL", arguments::Dict)
    waf_regional([::AWSConfig], "CreateWebACL", Name=, MetricName=, DefaultAction=, ChangeToken=)

# CreateWebACL Operation

Creates a `WebACL`, which contains the `Rules` that identify the CloudFront web requests that you want to allow, block, or count. AWS WAF evaluates `Rules` in order based on the value of `Priority` for each `Rule`.

You also specify a default action, either `ALLOW` or `BLOCK`. If a web request doesn't match any of the `Rules` in a `WebACL`, AWS WAF responds to the request with the default action.

To create and configure a `WebACL`, perform the following steps:

1.  Create and update the `ByteMatchSet` objects and other predicates that you want to include in `Rules`. For more information, see [CreateByteMatchSet](@ref), [UpdateByteMatchSet](@ref), [CreateIPSet](@ref), [UpdateIPSet](@ref), [CreateSqlInjectionMatchSet](@ref), and [UpdateSqlInjectionMatchSet](@ref).

2.  Create and update the `Rules` that you want to include in the `WebACL`. For more information, see [CreateRule](@ref) and [UpdateRule](@ref).

3.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateWebACL` request.

4.  Submit a `CreateWebACL` request.

5.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateWebACL](@ref) request.

6.  Submit an [UpdateWebACL](@ref) request to specify the `Rules` that you want to include in the `WebACL`, to specify the default action, and to associate the `WebACL` with a CloudFront distribution.

For more information about how to use the AWS WAF API, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description of the [WebACL](@ref). You can't change `Name` after you create the `WebACL`.


## `MetricName = ::String` -- *Required*
A friendly name or description for the metrics for this `WebACL`. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change `MetricName` after you create the `WebACL`.


## `DefaultAction = ["Type" => <required> "BLOCK", "ALLOW" or "COUNT"]` -- *Required*
The action that you want AWS WAF to take when a request doesn't match the criteria specified in any of the `Rule` objects that are associated with the `WebACL`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateWebACLResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFDisallowedNameException`, `WAFInvalidParameterException` or `WAFLimitsExceededException`.

# Example: To create a web ACL

The following example creates a web ACL named CreateExample.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "DefaultAction" => [
        "Type" => "ALLOW"
    ],
    "MetricName" => "CreateExample",
    "Name" => "CreateExample"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "WebACL" => Dict(
        "DefaultAction" => Dict(
            "Type" => "ALLOW"
        ),
        "MetricName" => "CreateExample",
        "Name" => "CreateExample",
        "Rules" => [
            Dict(
                "Action" => Dict(
                    "Type" => "ALLOW"
                ),
                "Priority" => 1,
                "RuleId" => "WAFRule-1-Example"
            )
        ],
        "WebACLId" => "example-46da-4444-5555-example"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateWebACL)
"""
@inline create_web_acl(aws::AWSConfig=default_aws_config(); args...) = create_web_acl(aws, args)

@inline create_web_acl(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateWebACL", args)

@inline create_web_acl(args) = create_web_acl(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.create_xss_match_set
    create_xss_match_set([::AWSConfig], arguments::Dict)
    create_xss_match_set([::AWSConfig]; Name=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "CreateXssMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "CreateXssMatchSet", Name=, ChangeToken=)

# CreateXssMatchSet Operation

Creates an [XssMatchSet](@ref), which you use to allow, block, or count requests that contain cross-site scripting attacks in the specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.

To create and configure an `XssMatchSet`, perform the following steps:

1.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `CreateXssMatchSet` request.

2.  Submit a `CreateXssMatchSet` request.

3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateXssMatchSet](@ref) request.

4.  Submit an [UpdateXssMatchSet](@ref) request to specify the parts of web requests in which you want to allow, block, or count cross-site scripting attacks.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `Name = ::String` -- *Required*
A friendly name or description for the [XssMatchSet](@ref) that you're creating. You can't change `Name` after you create the `XssMatchSet`.


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`CreateXssMatchSetResponse`

# Exceptions

`WAFDisallowedNameException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidParameterException`, `WAFStaleDataException` or `WAFLimitsExceededException`.

# Example: To create an XSS match set

The following example creates an XSS match set named MySampleXssMatchSet.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "Name" => "MySampleXssMatchSet"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "XssMatchSet" => Dict(
        "Name" => "MySampleXssMatchSet",
        "XssMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
        "XssMatchTuples" => [
            Dict(
                "FieldToMatch" => Dict(
                    "Type" => "QUERY_STRING"
                ),
                "TextTransformation" => "URL_DECODE"
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/CreateXssMatchSet)
"""
@inline create_xss_match_set(aws::AWSConfig=default_aws_config(); args...) = create_xss_match_set(aws, args)

@inline create_xss_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "CreateXssMatchSet", args)

@inline create_xss_match_set(args) = create_xss_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_byte_match_set
    delete_byte_match_set([::AWSConfig], arguments::Dict)
    delete_byte_match_set([::AWSConfig]; ByteMatchSetId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteByteMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteByteMatchSet", ByteMatchSetId=, ChangeToken=)

# DeleteByteMatchSet Operation

Permanently deletes a [ByteMatchSet](@ref). You can't delete a `ByteMatchSet` if it's still used in any `Rules` or if it still includes any [ByteMatchTuple](@ref) objects (any filters).

If you just want to remove a `ByteMatchSet` from a `Rule`, use [UpdateRule](@ref).

To permanently delete a `ByteMatchSet`, perform the following steps:

1.  Update the `ByteMatchSet` to remove filters, if any. For more information, see [UpdateByteMatchSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteByteMatchSet` request.

3.  Submit a `DeleteByteMatchSet` request.

# Arguments

## `ByteMatchSetId = ::String` -- *Required*
The `ByteMatchSetId` of the [ByteMatchSet](@ref) that you want to delete. `ByteMatchSetId` is returned by [CreateByteMatchSet](@ref) and by [ListByteMatchSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteByteMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException`, `WAFStaleDataException` or `WAFNonEmptyEntityException`.

# Example: To delete a byte match set

The following example deletes a byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ByteMatchSetId" => "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteByteMatchSet)
"""
@inline delete_byte_match_set(aws::AWSConfig=default_aws_config(); args...) = delete_byte_match_set(aws, args)

@inline delete_byte_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteByteMatchSet", args)

@inline delete_byte_match_set(args) = delete_byte_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_geo_match_set
    delete_geo_match_set([::AWSConfig], arguments::Dict)
    delete_geo_match_set([::AWSConfig]; GeoMatchSetId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteGeoMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteGeoMatchSet", GeoMatchSetId=, ChangeToken=)

# DeleteGeoMatchSet Operation

Permanently deletes a [GeoMatchSet](@ref). You can't delete a `GeoMatchSet` if it's still used in any `Rules` or if it still includes any countries.

If you just want to remove a `GeoMatchSet` from a `Rule`, use [UpdateRule](@ref).

To permanently delete a `GeoMatchSet` from AWS WAF, perform the following steps:

1.  Update the `GeoMatchSet` to remove any countries. For more information, see [UpdateGeoMatchSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteGeoMatchSet` request.

3.  Submit a `DeleteGeoMatchSet` request.

# Arguments

## `GeoMatchSetId = ::String` -- *Required*
The `GeoMatchSetID` of the [GeoMatchSet](@ref) that you want to delete. `GeoMatchSetId` is returned by [CreateGeoMatchSet](@ref) and by [ListGeoMatchSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteGeoMatchSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFNonEmptyEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteGeoMatchSet)
"""
@inline delete_geo_match_set(aws::AWSConfig=default_aws_config(); args...) = delete_geo_match_set(aws, args)

@inline delete_geo_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteGeoMatchSet", args)

@inline delete_geo_match_set(args) = delete_geo_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_ipset
    delete_ipset([::AWSConfig], arguments::Dict)
    delete_ipset([::AWSConfig]; IPSetId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteIPSet", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteIPSet", IPSetId=, ChangeToken=)

# DeleteIPSet Operation

Permanently deletes an [IPSet](@ref). You can't delete an `IPSet` if it's still used in any `Rules` or if it still includes any IP addresses.

If you just want to remove an `IPSet` from a `Rule`, use [UpdateRule](@ref).

To permanently delete an `IPSet` from AWS WAF, perform the following steps:

1.  Update the `IPSet` to remove IP address ranges, if any. For more information, see [UpdateIPSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteIPSet` request.

3.  Submit a `DeleteIPSet` request.

# Arguments

## `IPSetId = ::String` -- *Required*
The `IPSetId` of the [IPSet](@ref) that you want to delete. `IPSetId` is returned by [CreateIPSet](@ref) and by [ListIPSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteIPSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFNonEmptyEntityException`.

# Example: To delete an IP set

The following example deletes an IP match set  with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "IPSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteIPSet)
"""
@inline delete_ipset(aws::AWSConfig=default_aws_config(); args...) = delete_ipset(aws, args)

@inline delete_ipset(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteIPSet", args)

@inline delete_ipset(args) = delete_ipset(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_permission_policy
    delete_permission_policy([::AWSConfig], arguments::Dict)
    delete_permission_policy([::AWSConfig]; ResourceArn=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeletePermissionPolicy", arguments::Dict)
    waf_regional([::AWSConfig], "DeletePermissionPolicy", ResourceArn=)

# DeletePermissionPolicy Operation

Permanently deletes an IAM policy from the specified RuleGroup.

The user making the request must be the owner of the RuleGroup.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.

The user making the request must be the owner of the RuleGroup.




# Returns

`DeletePermissionPolicyResponse`

# Exceptions

`WAFInternalErrorException`, `WAFStaleDataException` or `WAFNonexistentItemException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeletePermissionPolicy)
"""
@inline delete_permission_policy(aws::AWSConfig=default_aws_config(); args...) = delete_permission_policy(aws, args)

@inline delete_permission_policy(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeletePermissionPolicy", args)

@inline delete_permission_policy(args) = delete_permission_policy(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_rate_based_rule
    delete_rate_based_rule([::AWSConfig], arguments::Dict)
    delete_rate_based_rule([::AWSConfig]; RuleId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteRateBasedRule", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteRateBasedRule", RuleId=, ChangeToken=)

# DeleteRateBasedRule Operation

Permanently deletes a [RateBasedRule](@ref). You can't delete a rule if it's still used in any `WebACL` objects or if it still includes any predicates, such as `ByteMatchSet` objects.

If you just want to remove a rule from a `WebACL`, use [UpdateWebACL](@ref).

To permanently delete a `RateBasedRule` from AWS WAF, perform the following steps:

1.  Update the `RateBasedRule` to remove predicates, if any. For more information, see [UpdateRateBasedRule](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteRateBasedRule` request.

3.  Submit a `DeleteRateBasedRule` request.

# Arguments

## `RuleId = ::String` -- *Required*
The `RuleId` of the [RateBasedRule](@ref) that you want to delete. `RuleId` is returned by [CreateRateBasedRule](@ref) and by [ListRateBasedRules](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteRateBasedRuleResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFNonEmptyEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRateBasedRule)
"""
@inline delete_rate_based_rule(aws::AWSConfig=default_aws_config(); args...) = delete_rate_based_rule(aws, args)

@inline delete_rate_based_rule(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteRateBasedRule", args)

@inline delete_rate_based_rule(args) = delete_rate_based_rule(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_regex_match_set
    delete_regex_match_set([::AWSConfig], arguments::Dict)
    delete_regex_match_set([::AWSConfig]; RegexMatchSetId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteRegexMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteRegexMatchSet", RegexMatchSetId=, ChangeToken=)

# DeleteRegexMatchSet Operation

Permanently deletes a [RegexMatchSet](@ref). You can't delete a `RegexMatchSet` if it's still used in any `Rules` or if it still includes any `RegexMatchTuples` objects (any filters).

If you just want to remove a `RegexMatchSet` from a `Rule`, use [UpdateRule](@ref).

To permanently delete a `RegexMatchSet`, perform the following steps:

1.  Update the `RegexMatchSet` to remove filters, if any. For more information, see [UpdateRegexMatchSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteRegexMatchSet` request.

3.  Submit a `DeleteRegexMatchSet` request.

# Arguments

## `RegexMatchSetId = ::String` -- *Required*
The `RegexMatchSetId` of the [RegexMatchSet](@ref) that you want to delete. `RegexMatchSetId` is returned by [CreateRegexMatchSet](@ref) and by [ListRegexMatchSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteRegexMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException`, `WAFStaleDataException` or `WAFNonEmptyEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRegexMatchSet)
"""
@inline delete_regex_match_set(aws::AWSConfig=default_aws_config(); args...) = delete_regex_match_set(aws, args)

@inline delete_regex_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteRegexMatchSet", args)

@inline delete_regex_match_set(args) = delete_regex_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_regex_pattern_set
    delete_regex_pattern_set([::AWSConfig], arguments::Dict)
    delete_regex_pattern_set([::AWSConfig]; RegexPatternSetId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteRegexPatternSet", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteRegexPatternSet", RegexPatternSetId=, ChangeToken=)

# DeleteRegexPatternSet Operation

Permanently deletes a [RegexPatternSet](@ref). You can't delete a `RegexPatternSet` if it's still used in any `RegexMatchSet` or if the `RegexPatternSet` is not empty.

# Arguments

## `RegexPatternSetId = ::String` -- *Required*
The `RegexPatternSetId` of the [RegexPatternSet](@ref) that you want to delete. `RegexPatternSetId` is returned by [CreateRegexPatternSet](@ref) and by [ListRegexPatternSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteRegexPatternSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException`, `WAFStaleDataException` or `WAFNonEmptyEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRegexPatternSet)
"""
@inline delete_regex_pattern_set(aws::AWSConfig=default_aws_config(); args...) = delete_regex_pattern_set(aws, args)

@inline delete_regex_pattern_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteRegexPatternSet", args)

@inline delete_regex_pattern_set(args) = delete_regex_pattern_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_rule
    delete_rule([::AWSConfig], arguments::Dict)
    delete_rule([::AWSConfig]; RuleId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteRule", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteRule", RuleId=, ChangeToken=)

# DeleteRule Operation

Permanently deletes a [Rule](@ref). You can't delete a `Rule` if it's still used in any `WebACL` objects or if it still includes any predicates, such as `ByteMatchSet` objects.

If you just want to remove a `Rule` from a `WebACL`, use [UpdateWebACL](@ref).

To permanently delete a `Rule` from AWS WAF, perform the following steps:

1.  Update the `Rule` to remove predicates, if any. For more information, see [UpdateRule](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteRule` request.

3.  Submit a `DeleteRule` request.

# Arguments

## `RuleId = ::String` -- *Required*
The `RuleId` of the [Rule](@ref) that you want to delete. `RuleId` is returned by [CreateRule](@ref) and by [ListRules](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteRuleResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFNonEmptyEntityException`.

# Example: To delete a rule

The following example deletes a rule with the ID WAFRule-1-Example.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "RuleId" => "WAFRule-1-Example"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRule)
"""
@inline delete_rule(aws::AWSConfig=default_aws_config(); args...) = delete_rule(aws, args)

@inline delete_rule(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteRule", args)

@inline delete_rule(args) = delete_rule(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_rule_group
    delete_rule_group([::AWSConfig], arguments::Dict)
    delete_rule_group([::AWSConfig]; RuleGroupId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteRuleGroup", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteRuleGroup", RuleGroupId=, ChangeToken=)

# DeleteRuleGroup Operation

Permanently deletes a [RuleGroup](@ref). You can't delete a `RuleGroup` if it's still used in any `WebACL` objects or if it still includes any rules.

If you just want to remove a `RuleGroup` from a `WebACL`, use [UpdateWebACL](@ref).

To permanently delete a `RuleGroup` from AWS WAF, perform the following steps:

1.  Update the `RuleGroup` to remove rules, if any. For more information, see [UpdateRuleGroup](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteRuleGroup` request.

3.  Submit a `DeleteRuleGroup` request.

# Arguments

## `RuleGroupId = ::String` -- *Required*
The `RuleGroupId` of the [RuleGroup](@ref) that you want to delete. `RuleGroupId` is returned by [CreateRuleGroup](@ref) and by [ListRuleGroups](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteRuleGroupResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFNonEmptyEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteRuleGroup)
"""
@inline delete_rule_group(aws::AWSConfig=default_aws_config(); args...) = delete_rule_group(aws, args)

@inline delete_rule_group(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteRuleGroup", args)

@inline delete_rule_group(args) = delete_rule_group(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_size_constraint_set
    delete_size_constraint_set([::AWSConfig], arguments::Dict)
    delete_size_constraint_set([::AWSConfig]; SizeConstraintSetId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteSizeConstraintSet", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteSizeConstraintSet", SizeConstraintSetId=, ChangeToken=)

# DeleteSizeConstraintSet Operation

Permanently deletes a [SizeConstraintSet](@ref). You can't delete a `SizeConstraintSet` if it's still used in any `Rules` or if it still includes any [SizeConstraint](@ref) objects (any filters).

If you just want to remove a `SizeConstraintSet` from a `Rule`, use [UpdateRule](@ref).

To permanently delete a `SizeConstraintSet`, perform the following steps:

1.  Update the `SizeConstraintSet` to remove filters, if any. For more information, see [UpdateSizeConstraintSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteSizeConstraintSet` request.

3.  Submit a `DeleteSizeConstraintSet` request.

# Arguments

## `SizeConstraintSetId = ::String` -- *Required*
The `SizeConstraintSetId` of the [SizeConstraintSet](@ref) that you want to delete. `SizeConstraintSetId` is returned by [CreateSizeConstraintSet](@ref) and by [ListSizeConstraintSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteSizeConstraintSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFNonEmptyEntityException`.

# Example: To delete a size constraint set

The following example deletes a size constraint set  with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "SizeConstraintSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteSizeConstraintSet)
"""
@inline delete_size_constraint_set(aws::AWSConfig=default_aws_config(); args...) = delete_size_constraint_set(aws, args)

@inline delete_size_constraint_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteSizeConstraintSet", args)

@inline delete_size_constraint_set(args) = delete_size_constraint_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_sql_injection_match_set
    delete_sql_injection_match_set([::AWSConfig], arguments::Dict)
    delete_sql_injection_match_set([::AWSConfig]; SqlInjectionMatchSetId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteSqlInjectionMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteSqlInjectionMatchSet", SqlInjectionMatchSetId=, ChangeToken=)

# DeleteSqlInjectionMatchSet Operation

Permanently deletes a [SqlInjectionMatchSet](@ref). You can't delete a `SqlInjectionMatchSet` if it's still used in any `Rules` or if it still contains any [SqlInjectionMatchTuple](@ref) objects.

If you just want to remove a `SqlInjectionMatchSet` from a `Rule`, use [UpdateRule](@ref).

To permanently delete a `SqlInjectionMatchSet` from AWS WAF, perform the following steps:

1.  Update the `SqlInjectionMatchSet` to remove filters, if any. For more information, see [UpdateSqlInjectionMatchSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteSqlInjectionMatchSet` request.

3.  Submit a `DeleteSqlInjectionMatchSet` request.

# Arguments

## `SqlInjectionMatchSetId = ::String` -- *Required*
The `SqlInjectionMatchSetId` of the [SqlInjectionMatchSet](@ref) that you want to delete. `SqlInjectionMatchSetId` is returned by [CreateSqlInjectionMatchSet](@ref) and by [ListSqlInjectionMatchSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteSqlInjectionMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException`, `WAFStaleDataException` or `WAFNonEmptyEntityException`.

# Example: To delete a SQL injection match set

The following example deletes a SQL injection match set  with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "SqlInjectionMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteSqlInjectionMatchSet)
"""
@inline delete_sql_injection_match_set(aws::AWSConfig=default_aws_config(); args...) = delete_sql_injection_match_set(aws, args)

@inline delete_sql_injection_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteSqlInjectionMatchSet", args)

@inline delete_sql_injection_match_set(args) = delete_sql_injection_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_web_acl
    delete_web_acl([::AWSConfig], arguments::Dict)
    delete_web_acl([::AWSConfig]; WebACLId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteWebACL", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteWebACL", WebACLId=, ChangeToken=)

# DeleteWebACL Operation

Permanently deletes a [WebACL](@ref). You can't delete a `WebACL` if it still contains any `Rules`.

To delete a `WebACL`, perform the following steps:

1.  Update the `WebACL` to remove `Rules`, if any. For more information, see [UpdateWebACL](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteWebACL` request.

3.  Submit a `DeleteWebACL` request.

# Arguments

## `WebACLId = ::String` -- *Required*
The `WebACLId` of the [WebACL](@ref) that you want to delete. `WebACLId` is returned by [CreateWebACL](@ref) and by [ListWebACLs](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteWebACLResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFNonEmptyEntityException`.

# Example: To delete a web ACL

The following example deletes a web ACL with the ID example-46da-4444-5555-example.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "WebACLId" => "example-46da-4444-5555-example"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteWebACL)
"""
@inline delete_web_acl(aws::AWSConfig=default_aws_config(); args...) = delete_web_acl(aws, args)

@inline delete_web_acl(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteWebACL", args)

@inline delete_web_acl(args) = delete_web_acl(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.delete_xss_match_set
    delete_xss_match_set([::AWSConfig], arguments::Dict)
    delete_xss_match_set([::AWSConfig]; XssMatchSetId=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DeleteXssMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "DeleteXssMatchSet", XssMatchSetId=, ChangeToken=)

# DeleteXssMatchSet Operation

Permanently deletes an [XssMatchSet](@ref). You can't delete an `XssMatchSet` if it's still used in any `Rules` or if it still contains any [XssMatchTuple](@ref) objects.

If you just want to remove an `XssMatchSet` from a `Rule`, use [UpdateRule](@ref).

To permanently delete an `XssMatchSet` from AWS WAF, perform the following steps:

1.  Update the `XssMatchSet` to remove filters, if any. For more information, see [UpdateXssMatchSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of a `DeleteXssMatchSet` request.

3.  Submit a `DeleteXssMatchSet` request.

# Arguments

## `XssMatchSetId = ::String` -- *Required*
The `XssMatchSetId` of the [XssMatchSet](@ref) that you want to delete. `XssMatchSetId` is returned by [CreateXssMatchSet](@ref) and by [ListXssMatchSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`DeleteXssMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFReferencedItemException`, `WAFStaleDataException` or `WAFNonEmptyEntityException`.

# Example: To delete an XSS match set

The following example deletes an XSS match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "XssMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DeleteXssMatchSet)
"""
@inline delete_xss_match_set(aws::AWSConfig=default_aws_config(); args...) = delete_xss_match_set(aws, args)

@inline delete_xss_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DeleteXssMatchSet", args)

@inline delete_xss_match_set(args) = delete_xss_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.disassociate_web_acl
    disassociate_web_acl([::AWSConfig], arguments::Dict)
    disassociate_web_acl([::AWSConfig]; ResourceArn=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "DisassociateWebACL", arguments::Dict)
    waf_regional([::AWSConfig], "DisassociateWebACL", ResourceArn=)

# DisassociateWebACL Operation

Removes a web ACL from the specified resource.

# Arguments

## `ResourceArn = ::String` -- *Required*
The ARN (Amazon Resource Name) of the resource from which the web ACL is being removed.




# Returns

`DisassociateWebACLResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidParameterException` or `WAFNonexistentItemException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/DisassociateWebACL)
"""
@inline disassociate_web_acl(aws::AWSConfig=default_aws_config(); args...) = disassociate_web_acl(aws, args)

@inline disassociate_web_acl(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "DisassociateWebACL", args)

@inline disassociate_web_acl(args) = disassociate_web_acl(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_byte_match_set
    get_byte_match_set([::AWSConfig], arguments::Dict)
    get_byte_match_set([::AWSConfig]; ByteMatchSetId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetByteMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "GetByteMatchSet", ByteMatchSetId=)

# GetByteMatchSet Operation

Returns the [ByteMatchSet](@ref) specified by `ByteMatchSetId`.

# Arguments

## `ByteMatchSetId = ::String` -- *Required*
The `ByteMatchSetId` of the [ByteMatchSet](@ref) that you want to get. `ByteMatchSetId` is returned by [CreateByteMatchSet](@ref) and by [ListByteMatchSets](@ref).




# Returns

`GetByteMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

# Example: To get a byte match set

The following example returns the details of a byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ByteMatchSetId" => "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "ByteMatchSet" => Dict(
        "ByteMatchSetId" => "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
        "ByteMatchTuples" => [
            Dict(
                "FieldToMatch" => Dict(
                    "Data" => "referer",
                    "Type" => "HEADER"
                ),
                "PositionalConstraint" => "CONTAINS",
                "TargetString" => "badrefer1",
                "TextTransformation" => "NONE"
            )
        ],
        "Name" => "ByteMatchNameExample"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetByteMatchSet)
"""
@inline get_byte_match_set(aws::AWSConfig=default_aws_config(); args...) = get_byte_match_set(aws, args)

@inline get_byte_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetByteMatchSet", args)

@inline get_byte_match_set(args) = get_byte_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_change_token
    get_change_token([::AWSConfig], arguments::Dict)
    get_change_token([::AWSConfig]; )

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetChangeToken", arguments::Dict)
    waf_regional([::AWSConfig], "GetChangeToken", )

# GetChangeToken Operation

When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request. Change tokens ensure that your application doesn't submit conflicting requests to AWS WAF.

Each create, update, or delete request must use a unique change token. If your application submits a `GetChangeToken` request and then submits a second `GetChangeToken` request before submitting a create, update, or delete request, the second `GetChangeToken` request returns the same value as the first `GetChangeToken` request.

When you use a change token in a create, update, or delete request, the status of the change token changes to `PENDING`, which indicates that AWS WAF is propagating the change to all AWS WAF servers. Use `GetChangeTokenStatus` to determine the status of your change token.

# Arguments



# Returns

`GetChangeTokenResponse`

# Exceptions

`WAFInternalErrorException`.

# Example: To get a change token

The following example returns a change token to use for a create, update or delete operation.

Input:
```
[

]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetChangeToken)
"""
@inline get_change_token(aws::AWSConfig=default_aws_config(); args...) = get_change_token(aws, args)

@inline get_change_token(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetChangeToken", args)

@inline get_change_token(args) = get_change_token(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_change_token_status
    get_change_token_status([::AWSConfig], arguments::Dict)
    get_change_token_status([::AWSConfig]; ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetChangeTokenStatus", arguments::Dict)
    waf_regional([::AWSConfig], "GetChangeTokenStatus", ChangeToken=)

# GetChangeTokenStatus Operation

Returns the status of a `ChangeToken` that you got by calling [GetChangeToken](@ref). `ChangeTokenStatus` is one of the following values:

*   `PROVISIONED`: You requested the change token by calling `GetChangeToken`, but you haven't used it yet in a call to create, update, or delete an AWS WAF object.

*   `PENDING`: AWS WAF is propagating the create, update, or delete request to all AWS WAF servers.

*   `IN_SYNC`: Propagation is complete.

# Arguments

## `ChangeToken = ::String` -- *Required*
The change token for which you want to get the status. This change token was previously returned in the `GetChangeToken` response.




# Returns

`GetChangeTokenStatusResponse`

# Exceptions

`WAFNonexistentItemException` or `WAFInternalErrorException`.

# Example: To get the change token status

The following example returns the status of a change token with the ID abcd12f2-46da-4fdb-b8d5-fbd4c466928f.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
]
```

Output:
```
Dict(
    "ChangeTokenStatus" => "PENDING"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetChangeTokenStatus)
"""
@inline get_change_token_status(aws::AWSConfig=default_aws_config(); args...) = get_change_token_status(aws, args)

@inline get_change_token_status(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetChangeTokenStatus", args)

@inline get_change_token_status(args) = get_change_token_status(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_geo_match_set
    get_geo_match_set([::AWSConfig], arguments::Dict)
    get_geo_match_set([::AWSConfig]; GeoMatchSetId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetGeoMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "GetGeoMatchSet", GeoMatchSetId=)

# GetGeoMatchSet Operation

Returns the [GeoMatchSet](@ref) that is specified by `GeoMatchSetId`.

# Arguments

## `GeoMatchSetId = ::String` -- *Required*
The `GeoMatchSetId` of the [GeoMatchSet](@ref) that you want to get. `GeoMatchSetId` is returned by [CreateGeoMatchSet](@ref) and by [ListGeoMatchSets](@ref).




# Returns

`GetGeoMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetGeoMatchSet)
"""
@inline get_geo_match_set(aws::AWSConfig=default_aws_config(); args...) = get_geo_match_set(aws, args)

@inline get_geo_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetGeoMatchSet", args)

@inline get_geo_match_set(args) = get_geo_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_ipset
    get_ipset([::AWSConfig], arguments::Dict)
    get_ipset([::AWSConfig]; IPSetId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetIPSet", arguments::Dict)
    waf_regional([::AWSConfig], "GetIPSet", IPSetId=)

# GetIPSet Operation

Returns the [IPSet](@ref) that is specified by `IPSetId`.

# Arguments

## `IPSetId = ::String` -- *Required*
The `IPSetId` of the [IPSet](@ref) that you want to get. `IPSetId` is returned by [CreateIPSet](@ref) and by [ListIPSets](@ref).




# Returns

`GetIPSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

# Example: To get an IP set

The following example returns the details of an IP match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "IPSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "IPSet" => Dict(
        "IPSetDescriptors" => [
            Dict(
                "Type" => "IPV4",
                "Value" => "192.0.2.44/32"
            )
        ],
        "IPSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
        "Name" => "MyIPSetFriendlyName"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetIPSet)
"""
@inline get_ipset(aws::AWSConfig=default_aws_config(); args...) = get_ipset(aws, args)

@inline get_ipset(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetIPSet", args)

@inline get_ipset(args) = get_ipset(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_permission_policy
    get_permission_policy([::AWSConfig], arguments::Dict)
    get_permission_policy([::AWSConfig]; ResourceArn=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetPermissionPolicy", arguments::Dict)
    waf_regional([::AWSConfig], "GetPermissionPolicy", ResourceArn=)

# GetPermissionPolicy Operation

Returns the IAM policy attached to the RuleGroup.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.




# Returns

`GetPermissionPolicyResponse`

# Exceptions

`WAFInternalErrorException` or `WAFNonexistentItemException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetPermissionPolicy)
"""
@inline get_permission_policy(aws::AWSConfig=default_aws_config(); args...) = get_permission_policy(aws, args)

@inline get_permission_policy(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetPermissionPolicy", args)

@inline get_permission_policy(args) = get_permission_policy(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_rate_based_rule
    get_rate_based_rule([::AWSConfig], arguments::Dict)
    get_rate_based_rule([::AWSConfig]; RuleId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetRateBasedRule", arguments::Dict)
    waf_regional([::AWSConfig], "GetRateBasedRule", RuleId=)

# GetRateBasedRule Operation

Returns the [RateBasedRule](@ref) that is specified by the `RuleId` that you included in the `GetRateBasedRule` request.

# Arguments

## `RuleId = ::String` -- *Required*
The `RuleId` of the [RateBasedRule](@ref) that you want to get. `RuleId` is returned by [CreateRateBasedRule](@ref) and by [ListRateBasedRules](@ref).




# Returns

`GetRateBasedRuleResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRateBasedRule)
"""
@inline get_rate_based_rule(aws::AWSConfig=default_aws_config(); args...) = get_rate_based_rule(aws, args)

@inline get_rate_based_rule(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetRateBasedRule", args)

@inline get_rate_based_rule(args) = get_rate_based_rule(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_rate_based_rule_managed_keys
    get_rate_based_rule_managed_keys([::AWSConfig], arguments::Dict)
    get_rate_based_rule_managed_keys([::AWSConfig]; RuleId=, <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetRateBasedRuleManagedKeys", arguments::Dict)
    waf_regional([::AWSConfig], "GetRateBasedRuleManagedKeys", RuleId=, <keyword arguments>)

# GetRateBasedRuleManagedKeys Operation

Returns an array of IP addresses currently being blocked by the [RateBasedRule](@ref) that is specified by the `RuleId`. The maximum number of managed keys that will be blocked is 10,000. If more than 10,000 addresses exceed the rate limit, the 10,000 addresses with the highest rates will be blocked.

# Arguments

## `RuleId = ::String` -- *Required*
The `RuleId` of the [RateBasedRule](@ref) for which you want to get a list of `ManagedKeys`. `RuleId` is returned by [CreateRateBasedRule](@ref) and by [ListRateBasedRules](@ref).


## `NextMarker = ::String`
A null value and not currently used. Do not include this in your request.




# Returns

`GetRateBasedRuleManagedKeysResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException` or `WAFInvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRateBasedRuleManagedKeys)
"""
@inline get_rate_based_rule_managed_keys(aws::AWSConfig=default_aws_config(); args...) = get_rate_based_rule_managed_keys(aws, args)

@inline get_rate_based_rule_managed_keys(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetRateBasedRuleManagedKeys", args)

@inline get_rate_based_rule_managed_keys(args) = get_rate_based_rule_managed_keys(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_regex_match_set
    get_regex_match_set([::AWSConfig], arguments::Dict)
    get_regex_match_set([::AWSConfig]; RegexMatchSetId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetRegexMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "GetRegexMatchSet", RegexMatchSetId=)

# GetRegexMatchSet Operation

Returns the [RegexMatchSet](@ref) specified by `RegexMatchSetId`.

# Arguments

## `RegexMatchSetId = ::String` -- *Required*
The `RegexMatchSetId` of the [RegexMatchSet](@ref) that you want to get. `RegexMatchSetId` is returned by [CreateRegexMatchSet](@ref) and by [ListRegexMatchSets](@ref).




# Returns

`GetRegexMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRegexMatchSet)
"""
@inline get_regex_match_set(aws::AWSConfig=default_aws_config(); args...) = get_regex_match_set(aws, args)

@inline get_regex_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetRegexMatchSet", args)

@inline get_regex_match_set(args) = get_regex_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_regex_pattern_set
    get_regex_pattern_set([::AWSConfig], arguments::Dict)
    get_regex_pattern_set([::AWSConfig]; RegexPatternSetId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetRegexPatternSet", arguments::Dict)
    waf_regional([::AWSConfig], "GetRegexPatternSet", RegexPatternSetId=)

# GetRegexPatternSet Operation

Returns the [RegexPatternSet](@ref) specified by `RegexPatternSetId`.

# Arguments

## `RegexPatternSetId = ::String` -- *Required*
The `RegexPatternSetId` of the [RegexPatternSet](@ref) that you want to get. `RegexPatternSetId` is returned by [CreateRegexPatternSet](@ref) and by [ListRegexPatternSets](@ref).




# Returns

`GetRegexPatternSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRegexPatternSet)
"""
@inline get_regex_pattern_set(aws::AWSConfig=default_aws_config(); args...) = get_regex_pattern_set(aws, args)

@inline get_regex_pattern_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetRegexPatternSet", args)

@inline get_regex_pattern_set(args) = get_regex_pattern_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_rule
    get_rule([::AWSConfig], arguments::Dict)
    get_rule([::AWSConfig]; RuleId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetRule", arguments::Dict)
    waf_regional([::AWSConfig], "GetRule", RuleId=)

# GetRule Operation

Returns the [Rule](@ref) that is specified by the `RuleId` that you included in the `GetRule` request.

# Arguments

## `RuleId = ::String` -- *Required*
The `RuleId` of the [Rule](@ref) that you want to get. `RuleId` is returned by [CreateRule](@ref) and by [ListRules](@ref).




# Returns

`GetRuleResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

# Example: To get a rule

The following example returns the details of a rule with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "RuleId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "Rule" => Dict(
        "MetricName" => "WAFByteHeaderRule",
        "Name" => "WAFByteHeaderRule",
        "Predicates" => [
            Dict(
                "DataId" => "MyByteMatchSetID",
                "Negated" => false,
                "Type" => "ByteMatch"
            )
        ],
        "RuleId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRule)
"""
@inline get_rule(aws::AWSConfig=default_aws_config(); args...) = get_rule(aws, args)

@inline get_rule(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetRule", args)

@inline get_rule(args) = get_rule(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_rule_group
    get_rule_group([::AWSConfig], arguments::Dict)
    get_rule_group([::AWSConfig]; RuleGroupId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetRuleGroup", arguments::Dict)
    waf_regional([::AWSConfig], "GetRuleGroup", RuleGroupId=)

# GetRuleGroup Operation

Returns the [RuleGroup](@ref) that is specified by the `RuleGroupId` that you included in the `GetRuleGroup` request.

To view the rules in a rule group, use [ListActivatedRulesInRuleGroup](@ref).

# Arguments

## `RuleGroupId = ::String` -- *Required*
The `RuleGroupId` of the [RuleGroup](@ref) that you want to get. `RuleGroupId` is returned by [CreateRuleGroup](@ref) and by [ListRuleGroups](@ref).




# Returns

`GetRuleGroupResponse`

# Exceptions

`WAFInternalErrorException` or `WAFNonexistentItemException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetRuleGroup)
"""
@inline get_rule_group(aws::AWSConfig=default_aws_config(); args...) = get_rule_group(aws, args)

@inline get_rule_group(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetRuleGroup", args)

@inline get_rule_group(args) = get_rule_group(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_sampled_requests
    get_sampled_requests([::AWSConfig], arguments::Dict)
    get_sampled_requests([::AWSConfig]; WebAclId=, RuleId=, TimeWindow=, MaxItems=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetSampledRequests", arguments::Dict)
    waf_regional([::AWSConfig], "GetSampledRequests", WebAclId=, RuleId=, TimeWindow=, MaxItems=)

# GetSampledRequests Operation

Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.

`GetSampledRequests` returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, `GetSampledRequests` returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.

# Arguments

## `WebAclId = ::String` -- *Required*
The `WebACLId` of the `WebACL` for which you want `GetSampledRequests` to return a sample of requests.


## `RuleId = ::String` -- *Required*
`RuleId` is one of three values:

*   The `RuleId` of the `Rule` or the `RuleGroupId` of the `RuleGroup` for which you want `GetSampledRequests` to return a sample of requests.

*   `Default_Action`, which causes `GetSampledRequests` to return a sample of the requests that didn't match any of the rules in the specified `WebACL`.


## `TimeWindow = [ ... ]` -- *Required*
The start date and time and the end date and time of the range for which you want `GetSampledRequests` to return a sample of requests. Specify the date and time in the following format: `"2016-09-27T14:50Z"`. You can specify any time range in the previous three hours.
```
 TimeWindow = [
        "StartTime" => <required> timestamp,
        "EndTime" => <required> timestamp
    ]
```

## `MaxItems = ::Int` -- *Required*
The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received during the time range. If your resource received fewer requests than the value of `MaxItems`, `GetSampledRequests` returns information about all of them.




# Returns

`GetSampledRequestsResponse`

# Exceptions

`WAFNonexistentItemException` or `WAFInternalErrorException`.

# Example: To get a sampled requests

The following example returns detailed information about 100 requests --a sample-- that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received between the time period 2016-09-27T15:50Z to 2016-09-27T15:50Z.

Input:
```
[
    "MaxItems" => 100,
    "RuleId" => "WAFRule-1-Example",
    "TimeWindow" => [
        "EndTime" => "2016-09-27T15:50Z",
        "StartTime" => "2016-09-27T15:50Z"
    ],
    "WebAclId" => "createwebacl-1472061481310"
]
```

Output:
```
Dict(
    "PopulationSize" => 50,
    "SampledRequests" => [
        Dict(
            "Action" => "BLOCK",
            "Request" => Dict(
                "ClientIP" => "192.0.2.44",
                "Country" => "US",
                "HTTPVersion" => "HTTP/1.1",
                "Headers" => [
                    Dict(
                        "Name" => "User-Agent",
                        "Value" => "BadBot "
                    )
                ],
                "Method" => "HEAD"
            ),
            "Timestamp" => "2016-09-27T14:55Z",
            "Weight" => 1
        )
    ],
    "TimeWindow" => Dict(
        "EndTime" => "2016-09-27T15:50Z",
        "StartTime" => "2016-09-27T14:50Z"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetSampledRequests)
"""
@inline get_sampled_requests(aws::AWSConfig=default_aws_config(); args...) = get_sampled_requests(aws, args)

@inline get_sampled_requests(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetSampledRequests", args)

@inline get_sampled_requests(args) = get_sampled_requests(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_size_constraint_set
    get_size_constraint_set([::AWSConfig], arguments::Dict)
    get_size_constraint_set([::AWSConfig]; SizeConstraintSetId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetSizeConstraintSet", arguments::Dict)
    waf_regional([::AWSConfig], "GetSizeConstraintSet", SizeConstraintSetId=)

# GetSizeConstraintSet Operation

Returns the [SizeConstraintSet](@ref) specified by `SizeConstraintSetId`.

# Arguments

## `SizeConstraintSetId = ::String` -- *Required*
The `SizeConstraintSetId` of the [SizeConstraintSet](@ref) that you want to get. `SizeConstraintSetId` is returned by [CreateSizeConstraintSet](@ref) and by [ListSizeConstraintSets](@ref).




# Returns

`GetSizeConstraintSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

# Example: To get a size constraint set

The following example returns the details of a size constraint match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "SizeConstraintSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "SizeConstraintSet" => Dict(
        "Name" => "MySampleSizeConstraintSet",
        "SizeConstraintSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
        "SizeConstraints" => [
            Dict(
                "ComparisonOperator" => "GT",
                "FieldToMatch" => Dict(
                    "Type" => "QUERY_STRING"
                ),
                "Size" => 0,
                "TextTransformation" => "NONE"
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetSizeConstraintSet)
"""
@inline get_size_constraint_set(aws::AWSConfig=default_aws_config(); args...) = get_size_constraint_set(aws, args)

@inline get_size_constraint_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetSizeConstraintSet", args)

@inline get_size_constraint_set(args) = get_size_constraint_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_sql_injection_match_set
    get_sql_injection_match_set([::AWSConfig], arguments::Dict)
    get_sql_injection_match_set([::AWSConfig]; SqlInjectionMatchSetId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetSqlInjectionMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "GetSqlInjectionMatchSet", SqlInjectionMatchSetId=)

# GetSqlInjectionMatchSet Operation

Returns the [SqlInjectionMatchSet](@ref) that is specified by `SqlInjectionMatchSetId`.

# Arguments

## `SqlInjectionMatchSetId = ::String` -- *Required*
The `SqlInjectionMatchSetId` of the [SqlInjectionMatchSet](@ref) that you want to get. `SqlInjectionMatchSetId` is returned by [CreateSqlInjectionMatchSet](@ref) and by [ListSqlInjectionMatchSets](@ref).




# Returns

`GetSqlInjectionMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

# Example: To get a SQL injection match set

The following example returns the details of a SQL injection match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "SqlInjectionMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "SqlInjectionMatchSet" => Dict(
        "Name" => "MySQLInjectionMatchSet",
        "SqlInjectionMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
        "SqlInjectionMatchTuples" => [
            Dict(
                "FieldToMatch" => Dict(
                    "Type" => "QUERY_STRING"
                ),
                "TextTransformation" => "URL_DECODE"
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetSqlInjectionMatchSet)
"""
@inline get_sql_injection_match_set(aws::AWSConfig=default_aws_config(); args...) = get_sql_injection_match_set(aws, args)

@inline get_sql_injection_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetSqlInjectionMatchSet", args)

@inline get_sql_injection_match_set(args) = get_sql_injection_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_web_acl
    get_web_acl([::AWSConfig], arguments::Dict)
    get_web_acl([::AWSConfig]; WebACLId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetWebACL", arguments::Dict)
    waf_regional([::AWSConfig], "GetWebACL", WebACLId=)

# GetWebACL Operation

Returns the [WebACL](@ref) that is specified by `WebACLId`.

# Arguments

## `WebACLId = ::String` -- *Required*
The `WebACLId` of the [WebACL](@ref) that you want to get. `WebACLId` is returned by [CreateWebACL](@ref) and by [ListWebACLs](@ref).




# Returns

`GetWebACLResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

# Example: To get a web ACL

The following example returns the details of a web ACL with the ID createwebacl-1472061481310.

Input:
```
[
    "WebACLId" => "createwebacl-1472061481310"
]
```

Output:
```
Dict(
    "WebACL" => Dict(
        "DefaultAction" => Dict(
            "Type" => "ALLOW"
        ),
        "MetricName" => "CreateExample",
        "Name" => "CreateExample",
        "Rules" => [
            Dict(
                "Action" => Dict(
                    "Type" => "ALLOW"
                ),
                "Priority" => 1,
                "RuleId" => "WAFRule-1-Example"
            )
        ],
        "WebACLId" => "createwebacl-1472061481310"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetWebACL)
"""
@inline get_web_acl(aws::AWSConfig=default_aws_config(); args...) = get_web_acl(aws, args)

@inline get_web_acl(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetWebACL", args)

@inline get_web_acl(args) = get_web_acl(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_web_aclfor_resource
    get_web_aclfor_resource([::AWSConfig], arguments::Dict)
    get_web_aclfor_resource([::AWSConfig]; ResourceArn=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetWebACLForResource", arguments::Dict)
    waf_regional([::AWSConfig], "GetWebACLForResource", ResourceArn=)

# GetWebACLForResource Operation

Returns the web ACL for the specified resource.

# Arguments

## `ResourceArn = ::String` -- *Required*
The ARN (Amazon Resource Name) of the resource for which to get the web ACL.




# Returns

`GetWebACLForResourceResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFNonexistentItemException`, `WAFInvalidParameterException` or `WAFUnavailableEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetWebACLForResource)
"""
@inline get_web_aclfor_resource(aws::AWSConfig=default_aws_config(); args...) = get_web_aclfor_resource(aws, args)

@inline get_web_aclfor_resource(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetWebACLForResource", args)

@inline get_web_aclfor_resource(args) = get_web_aclfor_resource(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.get_xss_match_set
    get_xss_match_set([::AWSConfig], arguments::Dict)
    get_xss_match_set([::AWSConfig]; XssMatchSetId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "GetXssMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "GetXssMatchSet", XssMatchSetId=)

# GetXssMatchSet Operation

Returns the [XssMatchSet](@ref) that is specified by `XssMatchSetId`.

# Arguments

## `XssMatchSetId = ::String` -- *Required*
The `XssMatchSetId` of the [XssMatchSet](@ref) that you want to get. `XssMatchSetId` is returned by [CreateXssMatchSet](@ref) and by [ListXssMatchSets](@ref).




# Returns

`GetXssMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

# Example: To get an XSS match set

The following example returns the details of an XSS match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "XssMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "XssMatchSet" => Dict(
        "Name" => "MySampleXssMatchSet",
        "XssMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
        "XssMatchTuples" => [
            Dict(
                "FieldToMatch" => Dict(
                    "Type" => "QUERY_STRING"
                ),
                "TextTransformation" => "URL_DECODE"
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/GetXssMatchSet)
"""
@inline get_xss_match_set(aws::AWSConfig=default_aws_config(); args...) = get_xss_match_set(aws, args)

@inline get_xss_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "GetXssMatchSet", args)

@inline get_xss_match_set(args) = get_xss_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_activated_rules_in_rule_group
    list_activated_rules_in_rule_group([::AWSConfig], arguments::Dict)
    list_activated_rules_in_rule_group([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListActivatedRulesInRuleGroup", arguments::Dict)
    waf_regional([::AWSConfig], "ListActivatedRulesInRuleGroup", <keyword arguments>)

# ListActivatedRulesInRuleGroup Operation

Returns an array of [ActivatedRule](@ref) objects.

# Arguments

## `RuleGroupId = ::String`
The `RuleGroupId` of the [RuleGroup](@ref) for which you want to get a list of [ActivatedRule](@ref) objects.


## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `ActivatedRules` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `ActivatedRules`. For the second and subsequent `ListActivatedRulesInRuleGroup` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `ActivatedRules`.


## `Limit = ::Int`
Specifies the number of `ActivatedRules` that you want AWS WAF to return for this request. If you have more `ActivatedRules` than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `ActivatedRules`.




# Returns

`ListActivatedRulesInRuleGroupResponse`

# Exceptions

`WAFInternalErrorException`, `WAFNonexistentItemException` or `WAFInvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListActivatedRulesInRuleGroup)
"""
@inline list_activated_rules_in_rule_group(aws::AWSConfig=default_aws_config(); args...) = list_activated_rules_in_rule_group(aws, args)

@inline list_activated_rules_in_rule_group(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListActivatedRulesInRuleGroup", args)

@inline list_activated_rules_in_rule_group(args) = list_activated_rules_in_rule_group(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_byte_match_sets
    list_byte_match_sets([::AWSConfig], arguments::Dict)
    list_byte_match_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListByteMatchSets", arguments::Dict)
    waf_regional([::AWSConfig], "ListByteMatchSets", <keyword arguments>)

# ListByteMatchSets Operation

Returns an array of [ByteMatchSetSummary](@ref) objects.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `ByteMatchSets` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `ByteMatchSets`. For the second and subsequent `ListByteMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `ByteMatchSets`.


## `Limit = ::Int`
Specifies the number of `ByteMatchSet` objects that you want AWS WAF to return for this request. If you have more `ByteMatchSets` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `ByteMatchSet` objects.




# Returns

`ListByteMatchSetsResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListByteMatchSets)
"""
@inline list_byte_match_sets(aws::AWSConfig=default_aws_config(); args...) = list_byte_match_sets(aws, args)

@inline list_byte_match_sets(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListByteMatchSets", args)

@inline list_byte_match_sets(args) = list_byte_match_sets(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_geo_match_sets
    list_geo_match_sets([::AWSConfig], arguments::Dict)
    list_geo_match_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListGeoMatchSets", arguments::Dict)
    waf_regional([::AWSConfig], "ListGeoMatchSets", <keyword arguments>)

# ListGeoMatchSets Operation

Returns an array of [GeoMatchSetSummary](@ref) objects in the response.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `GeoMatchSet`s than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `GeoMatchSet` objects. For the second and subsequent `ListGeoMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `GeoMatchSet` objects.


## `Limit = ::Int`
Specifies the number of `GeoMatchSet` objects that you want AWS WAF to return for this request. If you have more `GeoMatchSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `GeoMatchSet` objects.




# Returns

`ListGeoMatchSetsResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListGeoMatchSets)
"""
@inline list_geo_match_sets(aws::AWSConfig=default_aws_config(); args...) = list_geo_match_sets(aws, args)

@inline list_geo_match_sets(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListGeoMatchSets", args)

@inline list_geo_match_sets(args) = list_geo_match_sets(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_ipsets
    list_ipsets([::AWSConfig], arguments::Dict)
    list_ipsets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListIPSets", arguments::Dict)
    waf_regional([::AWSConfig], "ListIPSets", <keyword arguments>)

# ListIPSets Operation

Returns an array of [IPSetSummary](@ref) objects in the response.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `IPSets` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `IPSets`. For the second and subsequent `ListIPSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `IPSets`.


## `Limit = ::Int`
Specifies the number of `IPSet` objects that you want AWS WAF to return for this request. If you have more `IPSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `IPSet` objects.




# Returns

`ListIPSetsResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

# Example: To list IP sets

The following example returns an array of up to 100 IP match sets.

Input:
```
[
    "Limit" => 100
]
```

Output:
```
Dict(
    "IPSets" => [
        Dict(
            "IPSetId" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
            "Name" => "MyIPSetFriendlyName"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListIPSets)
"""
@inline list_ipsets(aws::AWSConfig=default_aws_config(); args...) = list_ipsets(aws, args)

@inline list_ipsets(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListIPSets", args)

@inline list_ipsets(args) = list_ipsets(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_rate_based_rules
    list_rate_based_rules([::AWSConfig], arguments::Dict)
    list_rate_based_rules([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListRateBasedRules", arguments::Dict)
    waf_regional([::AWSConfig], "ListRateBasedRules", <keyword arguments>)

# ListRateBasedRules Operation

Returns an array of [RuleSummary](@ref) objects.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `Rules` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `Rules`. For the second and subsequent `ListRateBasedRules` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `Rules`.


## `Limit = ::Int`
Specifies the number of `Rules` that you want AWS WAF to return for this request. If you have more `Rules` than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `Rules`.




# Returns

`ListRateBasedRulesResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRateBasedRules)
"""
@inline list_rate_based_rules(aws::AWSConfig=default_aws_config(); args...) = list_rate_based_rules(aws, args)

@inline list_rate_based_rules(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListRateBasedRules", args)

@inline list_rate_based_rules(args) = list_rate_based_rules(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_regex_match_sets
    list_regex_match_sets([::AWSConfig], arguments::Dict)
    list_regex_match_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListRegexMatchSets", arguments::Dict)
    waf_regional([::AWSConfig], "ListRegexMatchSets", <keyword arguments>)

# ListRegexMatchSets Operation

Returns an array of [RegexMatchSetSummary](@ref) objects.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `RegexMatchSet` objects than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `ByteMatchSets`. For the second and subsequent `ListRegexMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `RegexMatchSet` objects.


## `Limit = ::Int`
Specifies the number of `RegexMatchSet` objects that you want AWS WAF to return for this request. If you have more `RegexMatchSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `RegexMatchSet` objects.




# Returns

`ListRegexMatchSetsResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRegexMatchSets)
"""
@inline list_regex_match_sets(aws::AWSConfig=default_aws_config(); args...) = list_regex_match_sets(aws, args)

@inline list_regex_match_sets(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListRegexMatchSets", args)

@inline list_regex_match_sets(args) = list_regex_match_sets(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_regex_pattern_sets
    list_regex_pattern_sets([::AWSConfig], arguments::Dict)
    list_regex_pattern_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListRegexPatternSets", arguments::Dict)
    waf_regional([::AWSConfig], "ListRegexPatternSets", <keyword arguments>)

# ListRegexPatternSets Operation

Returns an array of [RegexPatternSetSummary](@ref) objects.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `RegexPatternSet` objects than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `RegexPatternSet` objects. For the second and subsequent `ListRegexPatternSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `RegexPatternSet` objects.


## `Limit = ::Int`
Specifies the number of `RegexPatternSet` objects that you want AWS WAF to return for this request. If you have more `RegexPatternSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `RegexPatternSet` objects.




# Returns

`ListRegexPatternSetsResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRegexPatternSets)
"""
@inline list_regex_pattern_sets(aws::AWSConfig=default_aws_config(); args...) = list_regex_pattern_sets(aws, args)

@inline list_regex_pattern_sets(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListRegexPatternSets", args)

@inline list_regex_pattern_sets(args) = list_regex_pattern_sets(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_resources_for_web_acl
    list_resources_for_web_acl([::AWSConfig], arguments::Dict)
    list_resources_for_web_acl([::AWSConfig]; WebACLId=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListResourcesForWebACL", arguments::Dict)
    waf_regional([::AWSConfig], "ListResourcesForWebACL", WebACLId=)

# ListResourcesForWebACL Operation

Returns an array of resources associated with the specified web ACL.

# Arguments

## `WebACLId = ::String` -- *Required*
The unique identifier (ID) of the web ACL for which to list the associated resources.




# Returns

`ListResourcesForWebACLResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException` or `WAFNonexistentItemException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListResourcesForWebACL)
"""
@inline list_resources_for_web_acl(aws::AWSConfig=default_aws_config(); args...) = list_resources_for_web_acl(aws, args)

@inline list_resources_for_web_acl(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListResourcesForWebACL", args)

@inline list_resources_for_web_acl(args) = list_resources_for_web_acl(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_rule_groups
    list_rule_groups([::AWSConfig], arguments::Dict)
    list_rule_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListRuleGroups", arguments::Dict)
    waf_regional([::AWSConfig], "ListRuleGroups", <keyword arguments>)

# ListRuleGroups Operation

Returns an array of [RuleGroup](@ref) objects.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `RuleGroups` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `RuleGroups`. For the second and subsequent `ListRuleGroups` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `RuleGroups`.


## `Limit = ::Int`
Specifies the number of `RuleGroups` that you want AWS WAF to return for this request. If you have more `RuleGroups` than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `RuleGroups`.




# Returns

`ListRuleGroupsResponse`

# Exceptions

`WAFInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRuleGroups)
"""
@inline list_rule_groups(aws::AWSConfig=default_aws_config(); args...) = list_rule_groups(aws, args)

@inline list_rule_groups(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListRuleGroups", args)

@inline list_rule_groups(args) = list_rule_groups(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_rules
    list_rules([::AWSConfig], arguments::Dict)
    list_rules([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListRules", arguments::Dict)
    waf_regional([::AWSConfig], "ListRules", <keyword arguments>)

# ListRules Operation

Returns an array of [RuleSummary](@ref) objects.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `Rules` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `Rules`. For the second and subsequent `ListRules` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `Rules`.


## `Limit = ::Int`
Specifies the number of `Rules` that you want AWS WAF to return for this request. If you have more `Rules` than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `Rules`.




# Returns

`ListRulesResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

# Example: To list rules

The following example returns an array of up to 100 rules.

Input:
```
[
    "Limit" => 100
]
```

Output:
```
Dict(
    "Rules" => [
        Dict(
            "Name" => "WAFByteHeaderRule",
            "RuleId" => "WAFRule-1-Example"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListRules)
"""
@inline list_rules(aws::AWSConfig=default_aws_config(); args...) = list_rules(aws, args)

@inline list_rules(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListRules", args)

@inline list_rules(args) = list_rules(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_size_constraint_sets
    list_size_constraint_sets([::AWSConfig], arguments::Dict)
    list_size_constraint_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListSizeConstraintSets", arguments::Dict)
    waf_regional([::AWSConfig], "ListSizeConstraintSets", <keyword arguments>)

# ListSizeConstraintSets Operation

Returns an array of [SizeConstraintSetSummary](@ref) objects.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `SizeConstraintSets` than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `SizeConstraintSets`. For the second and subsequent `ListSizeConstraintSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `SizeConstraintSets`.


## `Limit = ::Int`
Specifies the number of `SizeConstraintSet` objects that you want AWS WAF to return for this request. If you have more `SizeConstraintSets` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `SizeConstraintSet` objects.




# Returns

`ListSizeConstraintSetsResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

# Example: To list a size constraint sets

The following example returns an array of up to 100 size contraint match sets.

Input:
```
[
    "Limit" => 100
]
```

Output:
```
Dict(
    "SizeConstraintSets" => [
        Dict(
            "Name" => "MySampleSizeConstraintSet",
            "SizeConstraintSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListSizeConstraintSets)
"""
@inline list_size_constraint_sets(aws::AWSConfig=default_aws_config(); args...) = list_size_constraint_sets(aws, args)

@inline list_size_constraint_sets(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListSizeConstraintSets", args)

@inline list_size_constraint_sets(args) = list_size_constraint_sets(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_sql_injection_match_sets
    list_sql_injection_match_sets([::AWSConfig], arguments::Dict)
    list_sql_injection_match_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListSqlInjectionMatchSets", arguments::Dict)
    waf_regional([::AWSConfig], "ListSqlInjectionMatchSets", <keyword arguments>)

# ListSqlInjectionMatchSets Operation

Returns an array of [SqlInjectionMatchSet](@ref) objects.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more [SqlInjectionMatchSet](@ref) objects than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `SqlInjectionMatchSets`. For the second and subsequent `ListSqlInjectionMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `SqlInjectionMatchSets`.


## `Limit = ::Int`
Specifies the number of [SqlInjectionMatchSet](@ref) objects that you want AWS WAF to return for this request. If you have more `SqlInjectionMatchSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `Rules`.




# Returns

`ListSqlInjectionMatchSetsResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

# Example: To list SQL injection match sets

The following example returns an array of up to 100 SQL injection match sets.

Input:
```
[
    "Limit" => 100
]
```

Output:
```
Dict(
    "SqlInjectionMatchSets" => [
        Dict(
            "Name" => "MySQLInjectionMatchSet",
            "SqlInjectionMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListSqlInjectionMatchSets)
"""
@inline list_sql_injection_match_sets(aws::AWSConfig=default_aws_config(); args...) = list_sql_injection_match_sets(aws, args)

@inline list_sql_injection_match_sets(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListSqlInjectionMatchSets", args)

@inline list_sql_injection_match_sets(args) = list_sql_injection_match_sets(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_subscribed_rule_groups
    list_subscribed_rule_groups([::AWSConfig], arguments::Dict)
    list_subscribed_rule_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListSubscribedRuleGroups", arguments::Dict)
    waf_regional([::AWSConfig], "ListSubscribedRuleGroups", <keyword arguments>)

# ListSubscribedRuleGroups Operation

Returns an array of [RuleGroup](@ref) objects that you are subscribed to.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `ByteMatchSets`subscribed rule groups than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of subscribed rule groups. For the second and subsequent `ListSubscribedRuleGroupsRequest` requests, specify the value of `NextMarker` from the previous response to get information about another batch of subscribed rule groups.


## `Limit = ::Int`
Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of objects.




# Returns

`ListSubscribedRuleGroupsResponse`

# Exceptions

`WAFNonexistentItemException` or `WAFInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListSubscribedRuleGroups)
"""
@inline list_subscribed_rule_groups(aws::AWSConfig=default_aws_config(); args...) = list_subscribed_rule_groups(aws, args)

@inline list_subscribed_rule_groups(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListSubscribedRuleGroups", args)

@inline list_subscribed_rule_groups(args) = list_subscribed_rule_groups(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_web_acls
    list_web_acls([::AWSConfig], arguments::Dict)
    list_web_acls([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListWebACLs", arguments::Dict)
    waf_regional([::AWSConfig], "ListWebACLs", <keyword arguments>)

# ListWebACLs Operation

Returns an array of [WebACLSummary](@ref) objects in the response.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more `WebACL` objects than the number that you specify for `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `WebACL` objects. For the second and subsequent `ListWebACLs` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `WebACL` objects.


## `Limit = ::Int`
Specifies the number of `WebACL` objects that you want AWS WAF to return for this request. If you have more `WebACL` objects than the number that you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `WebACL` objects.




# Returns

`ListWebACLsResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

# Example: To list Web ACLs

The following example returns an array of up to 100 web ACLs.

Input:
```
[
    "Limit" => 100
]
```

Output:
```
Dict(
    "WebACLs" => [
        Dict(
            "Name" => "WebACLexample",
            "WebACLId" => "webacl-1472061481310"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListWebACLs)
"""
@inline list_web_acls(aws::AWSConfig=default_aws_config(); args...) = list_web_acls(aws, args)

@inline list_web_acls(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListWebACLs", args)

@inline list_web_acls(args) = list_web_acls(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.list_xss_match_sets
    list_xss_match_sets([::AWSConfig], arguments::Dict)
    list_xss_match_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "ListXssMatchSets", arguments::Dict)
    waf_regional([::AWSConfig], "ListXssMatchSets", <keyword arguments>)

# ListXssMatchSets Operation

Returns an array of [XssMatchSet](@ref) objects.

# Arguments

## `NextMarker = ::String`
If you specify a value for `Limit` and you have more [XssMatchSet](@ref) objects than the value of `Limit`, AWS WAF returns a `NextMarker` value in the response that allows you to list another group of `XssMatchSets`. For the second and subsequent `ListXssMatchSets` requests, specify the value of `NextMarker` from the previous response to get information about another batch of `XssMatchSets`.


## `Limit = ::Int`
Specifies the number of [XssMatchSet](@ref) objects that you want AWS WAF to return for this request. If you have more `XssMatchSet` objects than the number you specify for `Limit`, the response includes a `NextMarker` value that you can use to get another batch of `Rules`.




# Returns

`ListXssMatchSetsResponse`

# Exceptions

`WAFInternalErrorException` or `WAFInvalidAccountException`.

# Example: To list XSS match sets

The following example returns an array of up to 100 XSS match sets.

Input:
```
[
    "Limit" => 100
]
```

Output:
```
Dict(
    "XssMatchSets" => [
        Dict(
            "Name" => "MySampleXssMatchSet",
            "XssMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/ListXssMatchSets)
"""
@inline list_xss_match_sets(aws::AWSConfig=default_aws_config(); args...) = list_xss_match_sets(aws, args)

@inline list_xss_match_sets(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "ListXssMatchSets", args)

@inline list_xss_match_sets(args) = list_xss_match_sets(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.put_permission_policy
    put_permission_policy([::AWSConfig], arguments::Dict)
    put_permission_policy([::AWSConfig]; ResourceArn=, Policy=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "PutPermissionPolicy", arguments::Dict)
    waf_regional([::AWSConfig], "PutPermissionPolicy", ResourceArn=, Policy=)

# PutPermissionPolicy Operation

Attaches a IAM policy to the specified resource. The only supported use for this action is to share a RuleGroup across accounts.

The `PutPermissionPolicy` is subject to the following restrictions:

*   You can attach only one policy with each `PutPermissionPolicy` request.

*   The policy must include an `Effect`, `Action` and `Principal`.

*   `Effect` must specify `Allow`.

*   The `Action` in the policy must be `waf:UpdateWebACL` and `waf-regional:UpdateWebACL`. Any extra or wildcard actions in the policy will be rejected.

*   The policy cannot include a `Resource` parameter.

*   The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup must exist in the same region.

*   The user making the request must be the owner of the RuleGroup.

*   Your policy must be composed using IAM Policy version 2012-10-17.

For more information, see [IAM Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html).

An example of a valid policy parameter is shown in the Examples section below.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the RuleGroup to which you want to attach the policy.


## `Policy = ::String` -- *Required*
The policy to attach to the specified RuleGroup.




# Returns

`PutPermissionPolicyResponse`

# Exceptions

`WAFInternalErrorException`, `WAFStaleDataException`, `WAFNonexistentItemException` or `WAFInvalidPermissionPolicyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/PutPermissionPolicy)
"""
@inline put_permission_policy(aws::AWSConfig=default_aws_config(); args...) = put_permission_policy(aws, args)

@inline put_permission_policy(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "PutPermissionPolicy", args)

@inline put_permission_policy(args) = put_permission_policy(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_byte_match_set
    update_byte_match_set([::AWSConfig], arguments::Dict)
    update_byte_match_set([::AWSConfig]; ByteMatchSetId=, ChangeToken=, Updates=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateByteMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateByteMatchSet", ByteMatchSetId=, ChangeToken=, Updates=)

# UpdateByteMatchSet Operation

Inserts or deletes [ByteMatchTuple](@ref) objects (filters) in a [ByteMatchSet](@ref). For each `ByteMatchTuple` object, you specify the following values:

*   Whether to insert or delete the object from the array. If you want to change a `ByteMatchSetUpdate` object, you delete the existing object and add a new one.

*   The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the `User-Agent` header.

*   The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to look for. For more information, including how you specify the values for the AWS WAF API and the AWS CLI or SDKs, see `TargetString` in the [ByteMatchTuple](@ref) data type.

*   Where to look, such as at the beginning or the end of a query string.

*   Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.

For example, you can add a `ByteMatchSetUpdate` object that matches web requests in which `User-Agent` headers contain the string `BadBot`. You can then configure AWS WAF to block those requests.

To create and configure a `ByteMatchSet`, perform the following steps:

1.  Create a `ByteMatchSet.` For more information, see [CreateByteMatchSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of an `UpdateByteMatchSet` request.

3.  Submit an `UpdateByteMatchSet` request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `ByteMatchSetId = ::String` -- *Required*
The `ByteMatchSetId` of the [ByteMatchSet](@ref) that you want to update. `ByteMatchSetId` is returned by [CreateByteMatchSet](@ref) and by [ListByteMatchSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `ByteMatchSetUpdate` objects that you want to insert into or delete from a [ByteMatchSet](@ref). For more information, see the applicable data types:

*   [ByteMatchSetUpdate](@ref): Contains `Action` and `ByteMatchTuple`

*   [ByteMatchTuple](@ref): Contains `FieldToMatch`, `PositionalConstraint`, `TargetString`, and `TextTransformation`

*   [FieldToMatch](@ref): Contains `Data` and `Type`
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "ByteMatchTuple" => <required> [
            "FieldToMatch" => <required> [
                "Type" => <required> "URI", "QUERY_STRING", "HEADER", "METHOD" or "BODY",
                "Data" =>  ::String
            ],
            "TargetString" => <required> blob,
            "TextTransformation" => <required> "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE" or "URL_DECODE",
            "PositionalConstraint" => <required> "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS" or "CONTAINS_WORD"
        ]
    ], ...]
```



# Returns

`UpdateByteMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidOperationException`, `WAFInvalidParameterException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFStaleDataException` or `WAFLimitsExceededException`.

# Example: To update a byte match set

The following example deletes a ByteMatchTuple object (filters) in an byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ByteMatchSetId" => "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "Updates" => [
        [
            "Action" => "DELETE",
            "ByteMatchTuple" => [
                "FieldToMatch" => [
                    "Data" => "referer",
                    "Type" => "HEADER"
                ],
                "PositionalConstraint" => "CONTAINS",
                "TargetString" => "badrefer1",
                "TextTransformation" => "NONE"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateByteMatchSet)
"""
@inline update_byte_match_set(aws::AWSConfig=default_aws_config(); args...) = update_byte_match_set(aws, args)

@inline update_byte_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateByteMatchSet", args)

@inline update_byte_match_set(args) = update_byte_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_geo_match_set
    update_geo_match_set([::AWSConfig], arguments::Dict)
    update_geo_match_set([::AWSConfig]; GeoMatchSetId=, ChangeToken=, Updates=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateGeoMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateGeoMatchSet", GeoMatchSetId=, ChangeToken=, Updates=)

# UpdateGeoMatchSet Operation

Inserts or deletes [GeoMatchConstraint](@ref) objects in an `GeoMatchSet`. For each `GeoMatchConstraint` object, you specify the following values:

*   Whether to insert or delete the object from the array. If you want to change an `GeoMatchConstraint` object, you delete the existing object and add a new one.

*   The `Type`. The only valid value for `Type` is `Country`.

*   The `Value`, which is a two character code for the country to add to the `GeoMatchConstraint` object. Valid codes are listed in [GeoMatchConstraint\$Value](@ref).

To create and configure an `GeoMatchSet`, perform the following steps:

1.  Submit a [CreateGeoMatchSet](@ref) request.

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of an [UpdateGeoMatchSet](@ref) request.

3.  Submit an `UpdateGeoMatchSet` request to specify the country that you want AWS WAF to watch for.

When you update an `GeoMatchSet`, you specify the country that you want to add and/or the country that you want to delete. If you want to change a country, you delete the existing country and add the new one.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `GeoMatchSetId = ::String` -- *Required*
The `GeoMatchSetId` of the [GeoMatchSet](@ref) that you want to update. `GeoMatchSetId` is returned by [CreateGeoMatchSet](@ref) and by [ListGeoMatchSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `GeoMatchSetUpdate` objects that you want to insert into or delete from an [GeoMatchSet](@ref). For more information, see the applicable data types:

*   [GeoMatchSetUpdate](@ref): Contains `Action` and `GeoMatchConstraint`

*   [GeoMatchConstraint](@ref): Contains `Type` and `Value`

    You can have only one `Type` and `Value` per `GeoMatchConstraint`. To add multiple countries, include multiple `GeoMatchSetUpdate` objects in your request.
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "GeoMatchConstraint" => <required> [
            "Type" => <required> "Country",
            "Value" => <required> "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM" or "ZW"
        ]
    ], ...]
```



# Returns

`UpdateGeoMatchSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidOperationException`, `WAFInvalidParameterException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFLimitsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateGeoMatchSet)
"""
@inline update_geo_match_set(aws::AWSConfig=default_aws_config(); args...) = update_geo_match_set(aws, args)

@inline update_geo_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateGeoMatchSet", args)

@inline update_geo_match_set(args) = update_geo_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_ipset
    update_ipset([::AWSConfig], arguments::Dict)
    update_ipset([::AWSConfig]; IPSetId=, ChangeToken=, Updates=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateIPSet", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateIPSet", IPSetId=, ChangeToken=, Updates=)

# UpdateIPSet Operation

Inserts or deletes [IPSetDescriptor](@ref) objects in an `IPSet`. For each `IPSetDescriptor` object, you specify the following values:

*   Whether to insert or delete the object from the array. If you want to change an `IPSetDescriptor` object, you delete the existing object and add a new one.

*   The IP address version, `IPv4` or `IPv6`.

*   The IP address in CIDR notation, for example, `192.0.2.0/24` (for the range of IP addresses from `192.0.2.0` to `192.0.2.255`) or `192.0.2.44/32` (for the individual IP address `192.0.2.44`).

AWS WAF supports /8, /16, /24, and /32 IP address ranges for IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6. For more information about CIDR notation, see the Wikipedia entry [Classless Inter-Domain Routing](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

IPv6 addresses can be represented using any of the following formats:

*   1111:0000:0000:0000:0000:0000:0000:0111/128

*   1111:0:0:0:0:0:0:0111/128

*   1111::0111/128

*   1111::111/128

You use an `IPSet` to specify which web requests you want to allow or block based on the IP addresses that the requests originated from. For example, if you're receiving a lot of requests from one or a small number of IP addresses and you want to block the requests, you can create an `IPSet` that specifies those IP addresses, and then configure AWS WAF to block the requests.

To create and configure an `IPSet`, perform the following steps:

1.  Submit a [CreateIPSet](@ref) request.

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of an [UpdateIPSet](@ref) request.

3.  Submit an `UpdateIPSet` request to specify the IP addresses that you want AWS WAF to watch for.

When you update an `IPSet`, you specify the IP addresses that you want to add and/or the IP addresses that you want to delete. If you want to change an IP address, you delete the existing IP address and add the new one.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `IPSetId = ::String` -- *Required*
The `IPSetId` of the [IPSet](@ref) that you want to update. `IPSetId` is returned by [CreateIPSet](@ref) and by [ListIPSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `IPSetUpdate` objects that you want to insert into or delete from an [IPSet](@ref). For more information, see the applicable data types:

*   [IPSetUpdate](@ref): Contains `Action` and `IPSetDescriptor`

*   [IPSetDescriptor](@ref): Contains `Type` and `Value`
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "IPSetDescriptor" => <required> [
            "Type" => <required> "IPV4" or "IPV6",
            "Value" => <required> ::String
        ]
    ], ...]
```



# Returns

`UpdateIPSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidOperationException`, `WAFInvalidParameterException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFLimitsExceededException`.

# Example: To update an IP set

The following example deletes an IPSetDescriptor object in an IP match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "IPSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    "Updates" => [
        [
            "Action" => "DELETE",
            "IPSetDescriptor" => [
                "Type" => "IPV4",
                "Value" => "192.0.2.44/32"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateIPSet)
"""
@inline update_ipset(aws::AWSConfig=default_aws_config(); args...) = update_ipset(aws, args)

@inline update_ipset(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateIPSet", args)

@inline update_ipset(args) = update_ipset(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_rate_based_rule
    update_rate_based_rule([::AWSConfig], arguments::Dict)
    update_rate_based_rule([::AWSConfig]; RuleId=, ChangeToken=, Updates=, RateLimit=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateRateBasedRule", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateRateBasedRule", RuleId=, ChangeToken=, Updates=, RateLimit=)

# UpdateRateBasedRule Operation

Inserts or deletes [Predicate](@ref) objects in a rule and updates the `RateLimit` in the rule.

Each `Predicate` object identifies a predicate, such as a [ByteMatchSet](@ref) or an [IPSet](@ref), that specifies the web requests that you want to block or count. The `RateLimit` specifies the number of requests every five minutes that triggers the rule.

If you add more than one predicate to a `RateBasedRule`, a request must match all the predicates and exceed the `RateLimit` to be counted or blocked. For example, suppose you add the following to a `RateBasedRule`:

*   An `IPSet` that matches the IP address `192.0.2.44/32`

*   A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header

Further, you specify a `RateLimit` of 15,000.

You then add the `RateBasedRule` to a `WebACL` and specify that you want to block requests that satisfy the rule. For a request to be blocked, it must come from the IP address 192.0.2.44 *and* the `User-Agent` header in the request must contain the value `BadBot`. Further, requests that match these two conditions much be received at a rate of more than 15,000 every five minutes. If the rate drops below this limit, AWS WAF no longer blocks the requests.

As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a `RateBasedRule`:

*   A `ByteMatchSet` with `FieldToMatch` of `URI`

*   A `PositionalConstraint` of `STARTS_WITH`

*   A `TargetString` of `login`

Further, you specify a `RateLimit` of 15,000.

By adding this `RateBasedRule` to a `WebACL`, you could limit requests to your login page without affecting the rest of your site.

# Arguments

## `RuleId = ::String` -- *Required*
The `RuleId` of the `RateBasedRule` that you want to update. `RuleId` is returned by `CreateRateBasedRule` and by [ListRateBasedRules](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `RuleUpdate` objects that you want to insert into or delete from a [RateBasedRule](@ref).
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "Predicate" => <required> [
            "Negated" => <required> ::Bool,
            "Type" => <required> "IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch" or "RegexMatch",
            "DataId" => <required> ::String
        ]
    ], ...]
```

## `RateLimit = ::Int` -- *Required*
The maximum number of requests, which have an identical value in the field specified by the `RateKey`, allowed in a five-minute period. If the number of requests exceeds the `RateLimit` and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.




# Returns

`UpdateRateBasedRuleResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidOperationException`, `WAFInvalidParameterException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFLimitsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRateBasedRule)
"""
@inline update_rate_based_rule(aws::AWSConfig=default_aws_config(); args...) = update_rate_based_rule(aws, args)

@inline update_rate_based_rule(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateRateBasedRule", args)

@inline update_rate_based_rule(args) = update_rate_based_rule(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_regex_match_set
    update_regex_match_set([::AWSConfig], arguments::Dict)
    update_regex_match_set([::AWSConfig]; RegexMatchSetId=, Updates=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateRegexMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateRegexMatchSet", RegexMatchSetId=, Updates=, ChangeToken=)

# UpdateRegexMatchSet Operation

Inserts or deletes [RegexMatchTuple](@ref) objects (filters) in a [RegexMatchSet](@ref). For each `RegexMatchSetUpdate` object, you specify the following values:

*   Whether to insert or delete the object from the array. If you want to change a `RegexMatchSetUpdate` object, you delete the existing object and add a new one.

*   The part of a web request that you want AWS WAF to inspectupdate, such as a query string or the value of the `User-Agent` header.

*   The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see [RegexPatternSet](@ref).

*   Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.

For example, you can create a `RegexPatternSet` that matches any requests with `User-Agent` headers that contain the string `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those requests.

To create and configure a `RegexMatchSet`, perform the following steps:

1.  Create a `RegexMatchSet.` For more information, see [CreateRegexMatchSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of an `UpdateRegexMatchSet` request.

3.  Submit an `UpdateRegexMatchSet` request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the identifier of the `RegexPatternSet` that contain the regular expression patters you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `RegexMatchSetId = ::String` -- *Required*
The `RegexMatchSetId` of the [RegexMatchSet](@ref) that you want to update. `RegexMatchSetId` is returned by [CreateRegexMatchSet](@ref) and by [ListRegexMatchSets](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `RegexMatchSetUpdate` objects that you want to insert into or delete from a [RegexMatchSet](@ref). For more information, see [RegexMatchTuple](@ref).
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "RegexMatchTuple" => <required> [
            "FieldToMatch" => <required> [
                "Type" => <required> "URI", "QUERY_STRING", "HEADER", "METHOD" or "BODY",
                "Data" =>  ::String
            ],
            "TextTransformation" => <required> "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE" or "URL_DECODE",
            "RegexPatternSetId" => <required> ::String
        ]
    ], ...]
```

## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`UpdateRegexMatchSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFDisallowedNameException`, `WAFLimitsExceededException`, `WAFNonexistentItemException`, `WAFNonexistentContainerException`, `WAFInvalidOperationException` or `WAFInvalidAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRegexMatchSet)
"""
@inline update_regex_match_set(aws::AWSConfig=default_aws_config(); args...) = update_regex_match_set(aws, args)

@inline update_regex_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateRegexMatchSet", args)

@inline update_regex_match_set(args) = update_regex_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_regex_pattern_set
    update_regex_pattern_set([::AWSConfig], arguments::Dict)
    update_regex_pattern_set([::AWSConfig]; RegexPatternSetId=, Updates=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateRegexPatternSet", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateRegexPatternSet", RegexPatternSetId=, Updates=, ChangeToken=)

# UpdateRegexPatternSet Operation

Inserts or deletes `RegexPatternString` objects in a [RegexPatternSet](@ref). For each `RegexPatternString` object, you specify the following values:

*   Whether to insert or delete the `RegexPatternString`.

*   The regular expression pattern that you want to insert or delete. For more information, see [RegexPatternSet](@ref).

For example, you can create a `RegexPatternString` such as `B[a@]dB[o0]t`. AWS WAF will match this `RegexPatternString` to:

*   BadBot

*   BadB0t

*   B@dBot

*   B@dB0t

To create and configure a `RegexPatternSet`, perform the following steps:

1.  Create a `RegexPatternSet.` For more information, see [CreateRegexPatternSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of an `UpdateRegexPatternSet` request.

3.  Submit an `UpdateRegexPatternSet` request to specify the regular expression pattern that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `RegexPatternSetId = ::String` -- *Required*
The `RegexPatternSetId` of the [RegexPatternSet](@ref) that you want to update. `RegexPatternSetId` is returned by [CreateRegexPatternSet](@ref) and by [ListRegexPatternSets](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `RegexPatternSetUpdate` objects that you want to insert into or delete from a [RegexPatternSet](@ref).
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "RegexPatternString" => <required> ::String
    ], ...]
```

## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`UpdateRegexPatternSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFLimitsExceededException`, `WAFNonexistentItemException`, `WAFNonexistentContainerException`, `WAFInvalidOperationException`, `WAFInvalidAccountException` or `WAFInvalidRegexPatternException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRegexPatternSet)
"""
@inline update_regex_pattern_set(aws::AWSConfig=default_aws_config(); args...) = update_regex_pattern_set(aws, args)

@inline update_regex_pattern_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateRegexPatternSet", args)

@inline update_regex_pattern_set(args) = update_regex_pattern_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_rule
    update_rule([::AWSConfig], arguments::Dict)
    update_rule([::AWSConfig]; RuleId=, ChangeToken=, Updates=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateRule", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateRule", RuleId=, ChangeToken=, Updates=)

# UpdateRule Operation

Inserts or deletes [Predicate](@ref) objects in a `Rule`. Each `Predicate` object identifies a predicate, such as a [ByteMatchSet](@ref) or an [IPSet](@ref), that specifies the web requests that you want to allow, block, or count. If you add more than one predicate to a `Rule`, a request must match all of the specifications to be allowed, blocked, or counted. For example, suppose you add the following to a `Rule`:

*   A `ByteMatchSet` that matches the value `BadBot` in the `User-Agent` header

*   An `IPSet` that matches the IP address `192.0.2.44`

You then add the `Rule` to a `WebACL` and specify that you want to block requests that satisfy the `Rule`. For a request to be blocked, the `User-Agent` header in the request must contain the value `BadBot` *and* the request must originate from the IP address 192.0.2.44.

To create and configure a `Rule`, perform the following steps:

1.  Create and update the predicates that you want to include in the `Rule`.

2.  Create the `Rule`. See [CreateRule](@ref).

3.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateRule](@ref) request.

4.  Submit an `UpdateRule` request to add predicates to the `Rule`.

5.  Create and update a `WebACL` that contains the `Rule`. See [CreateWebACL](@ref).

If you want to replace one `ByteMatchSet` or `IPSet` with another, you delete the existing one and add the new one.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `RuleId = ::String` -- *Required*
The `RuleId` of the `Rule` that you want to update. `RuleId` is returned by `CreateRule` and by [ListRules](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `RuleUpdate` objects that you want to insert into or delete from a [Rule](@ref). For more information, see the applicable data types:

*   [RuleUpdate](@ref): Contains `Action` and `Predicate`

*   [Predicate](@ref): Contains `DataId`, `Negated`, and `Type`

*   [FieldToMatch](@ref): Contains `Data` and `Type`
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "Predicate" => <required> [
            "Negated" => <required> ::Bool,
            "Type" => <required> "IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch" or "RegexMatch",
            "DataId" => <required> ::String
        ]
    ], ...]
```



# Returns

`UpdateRuleResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidOperationException`, `WAFInvalidParameterException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFLimitsExceededException`.

# Example: To update a rule

The following example deletes a Predicate object in a rule with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "RuleId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    "Updates" => [
        [
            "Action" => "DELETE",
            "Predicate" => [
                "DataId" => "MyByteMatchSetID",
                "Negated" => false,
                "Type" => "ByteMatch"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRule)
"""
@inline update_rule(aws::AWSConfig=default_aws_config(); args...) = update_rule(aws, args)

@inline update_rule(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateRule", args)

@inline update_rule(args) = update_rule(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_rule_group
    update_rule_group([::AWSConfig], arguments::Dict)
    update_rule_group([::AWSConfig]; RuleGroupId=, Updates=, ChangeToken=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateRuleGroup", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateRuleGroup", RuleGroupId=, Updates=, ChangeToken=)

# UpdateRuleGroup Operation

Inserts or deletes [ActivatedRule](@ref) objects in a `RuleGroup`.

You can only insert `REGULAR` rules into a rule group.

You can have a maximum of ten rules per rule group.

To create and configure a `RuleGroup`, perform the following steps:

1.  Create and update the `Rules` that you want to include in the `RuleGroup`. See [CreateRule](@ref).

2.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateRuleGroup](@ref) request.

3.  Submit an `UpdateRuleGroup` request to add `Rules` to the `RuleGroup`.

4.  Create and update a `WebACL` that contains the `RuleGroup`. See [CreateWebACL](@ref).

If you want to replace one `Rule` with another, you delete the existing one and add the new one.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `RuleGroupId = ::String` -- *Required*
The `RuleGroupId` of the [RuleGroup](@ref) that you want to update. `RuleGroupId` is returned by [CreateRuleGroup](@ref) and by [ListRuleGroups](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `RuleGroupUpdate` objects that you want to insert into or delete from a [RuleGroup](@ref).

You can only insert `REGULAR` rules into a rule group.

`ActivatedRule|OverrideAction` applies only when updating or adding a `RuleGroup` to a `WebACL`. In this case you do not use `ActivatedRule|Action`. For all other update requests, `ActivatedRule|Action` is used instead of `ActivatedRule|OverrideAction`.
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "ActivatedRule" => <required> [
            "Priority" => <required> ::Int,
            "RuleId" => <required> ::String,
            "Action" =>  ["Type" => <required> "BLOCK", "ALLOW" or "COUNT"],
            "OverrideAction" =>  ["Type" => <required> "NONE" or "COUNT"],
            "Type" =>  "REGULAR", "RATE_BASED" or "GROUP"
        ]
    ], ...]
```

## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).




# Returns

`UpdateRuleGroupResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFInvalidOperationException`, `WAFLimitsExceededException` or `WAFInvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateRuleGroup)
"""
@inline update_rule_group(aws::AWSConfig=default_aws_config(); args...) = update_rule_group(aws, args)

@inline update_rule_group(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateRuleGroup", args)

@inline update_rule_group(args) = update_rule_group(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_size_constraint_set
    update_size_constraint_set([::AWSConfig], arguments::Dict)
    update_size_constraint_set([::AWSConfig]; SizeConstraintSetId=, ChangeToken=, Updates=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateSizeConstraintSet", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateSizeConstraintSet", SizeConstraintSetId=, ChangeToken=, Updates=)

# UpdateSizeConstraintSet Operation

Inserts or deletes [SizeConstraint](@ref) objects (filters) in a [SizeConstraintSet](@ref). For each `SizeConstraint` object, you specify the following values:

*   Whether to insert or delete the object from the array. If you want to change a `SizeConstraintSetUpdate` object, you delete the existing object and add a new one.

*   The part of a web request that you want AWS WAF to evaluate, such as the length of a query string or the length of the `User-Agent` header.

*   Whether to perform any transformations on the request, such as converting it to lowercase, before checking its length. Note that transformations of the request body are not supported because the AWS resource forwards only the first `8192` bytes of your request to AWS WAF.

*   A `ComparisonOperator` used for evaluating the selected part of the request against the specified `Size`, such as equals, greater than, less than, and so on.

*   The length, in bytes, that you want AWS WAF to watch for in selected part of the request. The length is computed after applying the transformation.

For example, you can add a `SizeConstraintSetUpdate` object that matches web requests in which the length of the `User-Agent` header is greater than 100 bytes. You can then configure AWS WAF to block those requests.

To create and configure a `SizeConstraintSet`, perform the following steps:

1.  Create a `SizeConstraintSet.` For more information, see [CreateSizeConstraintSet](@ref).

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.

3.  Submit an `UpdateSizeConstraintSet` request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `SizeConstraintSetId = ::String` -- *Required*
The `SizeConstraintSetId` of the [SizeConstraintSet](@ref) that you want to update. `SizeConstraintSetId` is returned by [CreateSizeConstraintSet](@ref) and by [ListSizeConstraintSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `SizeConstraintSetUpdate` objects that you want to insert into or delete from a [SizeConstraintSet](@ref). For more information, see the applicable data types:

*   [SizeConstraintSetUpdate](@ref): Contains `Action` and `SizeConstraint`

*   [SizeConstraint](@ref): Contains `FieldToMatch`, `TextTransformation`, `ComparisonOperator`, and `Size`

*   [FieldToMatch](@ref): Contains `Data` and `Type`
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "SizeConstraint" => <required> [
            "FieldToMatch" => <required> [
                "Type" => <required> "URI", "QUERY_STRING", "HEADER", "METHOD" or "BODY",
                "Data" =>  ::String
            ],
            "TextTransformation" => <required> "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE" or "URL_DECODE",
            "ComparisonOperator" => <required> "EQ", "NE", "LE", "LT", "GE" or "GT",
            "Size" => <required> ::Int
        ]
    ], ...]
```



# Returns

`UpdateSizeConstraintSetResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidOperationException`, `WAFInvalidParameterException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFReferencedItemException` or `WAFLimitsExceededException`.

# Example: To update a size constraint set

The following example deletes a SizeConstraint object (filters) in a size constraint set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "SizeConstraintSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    "Updates" => [
        [
            "Action" => "DELETE",
            "SizeConstraint" => [
                "ComparisonOperator" => "GT",
                "FieldToMatch" => [
                    "Type" => "QUERY_STRING"
                ],
                "Size" => 0,
                "TextTransformation" => "NONE"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateSizeConstraintSet)
"""
@inline update_size_constraint_set(aws::AWSConfig=default_aws_config(); args...) = update_size_constraint_set(aws, args)

@inline update_size_constraint_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateSizeConstraintSet", args)

@inline update_size_constraint_set(args) = update_size_constraint_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_sql_injection_match_set
    update_sql_injection_match_set([::AWSConfig], arguments::Dict)
    update_sql_injection_match_set([::AWSConfig]; SqlInjectionMatchSetId=, ChangeToken=, Updates=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateSqlInjectionMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateSqlInjectionMatchSet", SqlInjectionMatchSetId=, ChangeToken=, Updates=)

# UpdateSqlInjectionMatchSet Operation

Inserts or deletes [SqlInjectionMatchTuple](@ref) objects (filters) in a [SqlInjectionMatchSet](@ref). For each `SqlInjectionMatchTuple` object, you specify the following values:

*   `Action`: Whether to insert the object into or delete the object from the array. To change a `SqlInjectionMatchTuple`, you delete the existing object and add a new one.

*   `FieldToMatch`: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header, the name of the header.

*   `TextTransformation`: Which text transformation, if any, to perform on the web request before inspecting the request for snippets of malicious SQL code.

You use `SqlInjectionMatchSet` objects to specify which CloudFront requests you want to allow, block, or count. For example, if you're receiving requests that contain snippets of SQL code in the query string and you want to block the requests, you can create a `SqlInjectionMatchSet` with the applicable settings, and then configure AWS WAF to block the requests.

To create and configure a `SqlInjectionMatchSet`, perform the following steps:

1.  Submit a [CreateSqlInjectionMatchSet](@ref) request.

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of an [UpdateIPSet](@ref) request.

3.  Submit an `UpdateSqlInjectionMatchSet` request to specify the parts of web requests that you want AWS WAF to inspect for snippets of SQL code.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `SqlInjectionMatchSetId = ::String` -- *Required*
The `SqlInjectionMatchSetId` of the `SqlInjectionMatchSet` that you want to update. `SqlInjectionMatchSetId` is returned by [CreateSqlInjectionMatchSet](@ref) and by [ListSqlInjectionMatchSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `SqlInjectionMatchSetUpdate` objects that you want to insert into or delete from a [SqlInjectionMatchSet](@ref). For more information, see the applicable data types:

*   [SqlInjectionMatchSetUpdate](@ref): Contains `Action` and `SqlInjectionMatchTuple`

*   [SqlInjectionMatchTuple](@ref): Contains `FieldToMatch` and `TextTransformation`

*   [FieldToMatch](@ref): Contains `Data` and `Type`
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "SqlInjectionMatchTuple" => <required> [
            "FieldToMatch" => <required> [
                "Type" => <required> "URI", "QUERY_STRING", "HEADER", "METHOD" or "BODY",
                "Data" =>  ::String
            ],
            "TextTransformation" => <required> "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE" or "URL_DECODE"
        ]
    ], ...]
```



# Returns

`UpdateSqlInjectionMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidOperationException`, `WAFInvalidParameterException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFStaleDataException` or `WAFLimitsExceededException`.

# Example: To update a SQL injection match set

The following example deletes a SqlInjectionMatchTuple object (filters) in a SQL injection match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "SqlInjectionMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    "Updates" => [
        [
            "Action" => "DELETE",
            "SqlInjectionMatchTuple" => [
                "FieldToMatch" => [
                    "Type" => "QUERY_STRING"
                ],
                "TextTransformation" => "URL_DECODE"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateSqlInjectionMatchSet)
"""
@inline update_sql_injection_match_set(aws::AWSConfig=default_aws_config(); args...) = update_sql_injection_match_set(aws, args)

@inline update_sql_injection_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateSqlInjectionMatchSet", args)

@inline update_sql_injection_match_set(args) = update_sql_injection_match_set(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_web_acl
    update_web_acl([::AWSConfig], arguments::Dict)
    update_web_acl([::AWSConfig]; WebACLId=, ChangeToken=, <keyword arguments>)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateWebACL", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateWebACL", WebACLId=, ChangeToken=, <keyword arguments>)

# UpdateWebACL Operation

Inserts or deletes [ActivatedRule](@ref) objects in a `WebACL`. Each `Rule` identifies web requests that you want to allow, block, or count. When you update a `WebACL`, you specify the following values:

*   A default action for the `WebACL`, either `ALLOW` or `BLOCK`. AWS WAF performs the default action if a request doesn't match the criteria in any of the `Rules` in a `WebACL`.

*   The `Rules` that you want to add and/or delete. If you want to replace one `Rule` with another, you delete the existing `Rule` and add the new one.

*   For each `Rule`, whether you want AWS WAF to allow requests, block requests, or count requests that match the conditions in the `Rule`.

*   The order in which you want AWS WAF to evaluate the `Rules` in a `WebACL`. If you add more than one `Rule` to a `WebACL`, AWS WAF evaluates each request against the `Rules` in order based on the value of `Priority`. (The `Rule` that has the lowest value for `Priority` is evaluated first.) When a web request matches all of the predicates (such as `ByteMatchSets` and `IPSets`) in a `Rule`, AWS WAF immediately takes the corresponding action, allow or block, and doesn't evaluate the request against the remaining `Rules` in the `WebACL`, if any.

To create and configure a `WebACL`, perform the following steps:

1.  Create and update the predicates that you want to include in `Rules`. For more information, see [CreateByteMatchSet](@ref), [UpdateByteMatchSet](@ref), [CreateIPSet](@ref), [UpdateIPSet](@ref), [CreateSqlInjectionMatchSet](@ref), and [UpdateSqlInjectionMatchSet](@ref).

2.  Create and update the `Rules` that you want to include in the `WebACL`. For more information, see [CreateRule](@ref) and [UpdateRule](@ref).

3.  Create a `WebACL`. See [CreateWebACL](@ref).

4.  Use `GetChangeToken` to get the change token that you provide in the `ChangeToken` parameter of an [UpdateWebACL](@ref) request.

5.  Submit an `UpdateWebACL` request to specify the `Rules` that you want to include in the `WebACL`, to specify the default action, and to associate the `WebACL` with a CloudFront distribution.

Be aware that if you try to add a RATE_BASED rule to a web ACL without setting the rule type when first creating the rule, the [UpdateWebACL](@ref) request will fail because the request tries to add a REGULAR rule (the default rule type) with the specified ID, which does not exist.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `WebACLId = ::String` -- *Required*
The `WebACLId` of the [WebACL](@ref) that you want to update. `WebACLId` is returned by [CreateWebACL](@ref) and by [ListWebACLs](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).


## `Updates = [[ ... ], ...]`
An array of updates to make to the [WebACL](@ref).

An array of `WebACLUpdate` objects that you want to insert into or delete from a [WebACL](@ref). For more information, see the applicable data types:

*   [WebACLUpdate](@ref): Contains `Action` and `ActivatedRule`

*   [ActivatedRule](@ref): Contains `Action`, `OverrideAction`, `Priority`, `RuleId`, and `Type`. `ActivatedRule|OverrideAction` applies only when updating or adding a `RuleGroup` to a `WebACL`. In this case you do not use `ActivatedRule|Action`. For all other update requests, `ActivatedRule|Action` is used instead of `ActivatedRule|OverrideAction`.

*   [WafAction](@ref): Contains `Type`
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "ActivatedRule" => <required> [
            "Priority" => <required> ::Int,
            "RuleId" => <required> ::String,
            "Action" =>  ["Type" => <required> "BLOCK", "ALLOW" or "COUNT"],
            "OverrideAction" =>  ["Type" => <required> "NONE" or "COUNT"],
            "Type" =>  "REGULAR", "RATE_BASED" or "GROUP"
        ]
    ], ...]
```

## `DefaultAction = ["Type" => <required> "BLOCK", "ALLOW" or "COUNT"]`
A default action for the web ACL, either ALLOW or BLOCK. AWS WAF performs the default action if a request doesn't match the criteria in any of the rules in a web ACL.




# Returns

`UpdateWebACLResponse`

# Exceptions

`WAFStaleDataException`, `WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidOperationException`, `WAFInvalidParameterException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFReferencedItemException`, `WAFLimitsExceededException` or `WAFSubscriptionNotFoundException`.

# Example: To update a Web ACL

The following example deletes an ActivatedRule object in a WebACL with the ID webacl-1472061481310.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "DefaultAction" => [
        "Type" => "ALLOW"
    ],
    "Updates" => [
        [
            "Action" => "DELETE",
            "ActivatedRule" => [
                "Action" => [
                    "Type" => "ALLOW"
                ],
                "Priority" => 1,
                "RuleId" => "WAFRule-1-Example"
            ]
        ]
    ],
    "WebACLId" => "webacl-1472061481310"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateWebACL)
"""
@inline update_web_acl(aws::AWSConfig=default_aws_config(); args...) = update_web_acl(aws, args)

@inline update_web_acl(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateWebACL", args)

@inline update_web_acl(args) = update_web_acl(default_aws_config(), args)


"""
    using AWSSDK.WAFRegional.update_xss_match_set
    update_xss_match_set([::AWSConfig], arguments::Dict)
    update_xss_match_set([::AWSConfig]; XssMatchSetId=, ChangeToken=, Updates=)

    using AWSCore.Services.waf_regional
    waf_regional([::AWSConfig], "UpdateXssMatchSet", arguments::Dict)
    waf_regional([::AWSConfig], "UpdateXssMatchSet", XssMatchSetId=, ChangeToken=, Updates=)

# UpdateXssMatchSet Operation

Inserts or deletes [XssMatchTuple](@ref) objects (filters) in an [XssMatchSet](@ref). For each `XssMatchTuple` object, you specify the following values:

*   `Action`: Whether to insert the object into or delete the object from the array. To change a `XssMatchTuple`, you delete the existing object and add a new one.

*   `FieldToMatch`: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header, the name of the header.

*   `TextTransformation`: Which text transformation, if any, to perform on the web request before inspecting the request for cross-site scripting attacks.

You use `XssMatchSet` objects to specify which CloudFront requests you want to allow, block, or count. For example, if you're receiving requests that contain cross-site scripting attacks in the request body and you want to block the requests, you can create an `XssMatchSet` with the applicable settings, and then configure AWS WAF to block the requests.

To create and configure an `XssMatchSet`, perform the following steps:

1.  Submit a [CreateXssMatchSet](@ref) request.

2.  Use [GetChangeToken](@ref) to get the change token that you provide in the `ChangeToken` parameter of an [UpdateIPSet](@ref) request.

3.  Submit an `UpdateXssMatchSet` request to specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks.

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the [AWS WAF Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).

# Arguments

## `XssMatchSetId = ::String` -- *Required*
The `XssMatchSetId` of the `XssMatchSet` that you want to update. `XssMatchSetId` is returned by [CreateXssMatchSet](@ref) and by [ListXssMatchSets](@ref).


## `ChangeToken = ::String` -- *Required*
The value returned by the most recent call to [GetChangeToken](@ref).


## `Updates = [[ ... ], ...]` -- *Required*
An array of `XssMatchSetUpdate` objects that you want to insert into or delete from a [XssMatchSet](@ref). For more information, see the applicable data types:

*   [XssMatchSetUpdate](@ref): Contains `Action` and `XssMatchTuple`

*   [XssMatchTuple](@ref): Contains `FieldToMatch` and `TextTransformation`

*   [FieldToMatch](@ref): Contains `Data` and `Type`
```
 Updates = [[
        "Action" => <required> "INSERT" or "DELETE",
        "XssMatchTuple" => <required> [
            "FieldToMatch" => <required> [
                "Type" => <required> "URI", "QUERY_STRING", "HEADER", "METHOD" or "BODY",
                "Data" =>  ::String
            ],
            "TextTransformation" => <required> "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE" or "URL_DECODE"
        ]
    ], ...]
```



# Returns

`UpdateXssMatchSetResponse`

# Exceptions

`WAFInternalErrorException`, `WAFInvalidAccountException`, `WAFInvalidOperationException`, `WAFInvalidParameterException`, `WAFNonexistentContainerException`, `WAFNonexistentItemException`, `WAFStaleDataException` or `WAFLimitsExceededException`.

# Example: To update an XSS match set

The following example deletes an XssMatchTuple object (filters) in an XssMatchSet with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.

Input:
```
[
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    "Updates" => [
        [
            "Action" => "DELETE",
            "XssMatchTuple" => [
                "FieldToMatch" => [
                    "Type" => "QUERY_STRING"
                ],
                "TextTransformation" => "URL_DECODE"
            ]
        ]
    ],
    "XssMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
]
```

Output:
```
Dict(
    "ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/waf-regional-2016-11-28/UpdateXssMatchSet)
"""
@inline update_xss_match_set(aws::AWSConfig=default_aws_config(); args...) = update_xss_match_set(aws, args)

@inline update_xss_match_set(aws::AWSConfig, args) = AWSCore.Services.waf_regional(aws, "UpdateXssMatchSet", args)

@inline update_xss_match_set(args) = update_xss_match_set(default_aws_config(), args)




end # module WAFRegional


#==============================================================================#
# End of file
#==============================================================================#
