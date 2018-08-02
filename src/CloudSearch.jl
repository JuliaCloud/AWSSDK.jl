#==============================================================================#
# CloudSearch.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cloudsearch-2013-01-01.normal.json
#==============================================================================#

__precompile__()

module CloudSearch

using AWSCore


"""
    using AWSSDK.CloudSearch.build_suggesters
    build_suggesters([::AWSConfig], arguments::Dict)
    build_suggesters([::AWSConfig]; DomainName=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "BuildSuggesters", arguments::Dict)
    cloudsearch([::AWSConfig], "BuildSuggesters", DomainName=)

# BuildSuggesters Operation

Indexes the search suggestions. For more information, see [Configuring Suggesters](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*





# Returns

`BuildSuggestersResponse`

# Exceptions

`BaseException`, `InternalException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/BuildSuggesters)
"""
@inline build_suggesters(aws::AWSConfig=default_aws_config(); args...) = build_suggesters(aws, args)

@inline build_suggesters(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "BuildSuggesters", args)

@inline build_suggesters(args) = build_suggesters(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.create_domain
    create_domain([::AWSConfig], arguments::Dict)
    create_domain([::AWSConfig]; DomainName=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "CreateDomain", arguments::Dict)
    cloudsearch([::AWSConfig], "CreateDomain", DomainName=)

# CreateDomain Operation

Creates a new search domain. For more information, see [Creating a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*
A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.




# Returns

`CreateDomainResponse`

# Exceptions

`BaseException`, `InternalException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/CreateDomain)
"""
@inline create_domain(aws::AWSConfig=default_aws_config(); args...) = create_domain(aws, args)

@inline create_domain(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "CreateDomain", args)

@inline create_domain(args) = create_domain(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.define_analysis_scheme
    define_analysis_scheme([::AWSConfig], arguments::Dict)
    define_analysis_scheme([::AWSConfig]; DomainName=, AnalysisScheme=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DefineAnalysisScheme", arguments::Dict)
    cloudsearch([::AWSConfig], "DefineAnalysisScheme", DomainName=, AnalysisScheme=)

# DefineAnalysisScheme Operation

Configures an analysis scheme that can be applied to a `text` or `text-array` field to define language-specific text processing options. For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `AnalysisScheme = [ ... ]` -- *Required*

```
 AnalysisScheme = [
        "AnalysisSchemeName" => <required> ::String,
        "AnalysisSchemeLanguage" => <required> "ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans" or "zh-Hant",
        "AnalysisOptions" =>  [
            "Synonyms" =>  ::String,
            "Stopwords" =>  ::String,
            "StemmingDictionary" =>  ::String,
            "JapaneseTokenizationDictionary" =>  ::String,
            "AlgorithmicStemming" =>  "none", "minimal", "light" or "full"
        ]
    ]
```



# Returns

`DefineAnalysisSchemeResponse`

# Exceptions

`BaseException`, `InternalException`, `LimitExceededException`, `InvalidTypeException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DefineAnalysisScheme)
"""
@inline define_analysis_scheme(aws::AWSConfig=default_aws_config(); args...) = define_analysis_scheme(aws, args)

@inline define_analysis_scheme(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DefineAnalysisScheme", args)

@inline define_analysis_scheme(args) = define_analysis_scheme(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.define_expression
    define_expression([::AWSConfig], arguments::Dict)
    define_expression([::AWSConfig]; DomainName=, Expression=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DefineExpression", arguments::Dict)
    cloudsearch([::AWSConfig], "DefineExpression", DomainName=, Expression=)

# DefineExpression Operation

Configures an `[Expression](@ref)` for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `Expression = [ ... ]` -- *Required*

```
 Expression = [
        "ExpressionName" => <required> ::String,
        "ExpressionValue" => <required> ::String
    ]
```



# Returns

`DefineExpressionResponse`

# Exceptions

`BaseException`, `InternalException`, `LimitExceededException`, `InvalidTypeException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DefineExpression)
"""
@inline define_expression(aws::AWSConfig=default_aws_config(); args...) = define_expression(aws, args)

@inline define_expression(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DefineExpression", args)

@inline define_expression(args) = define_expression(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.define_index_field
    define_index_field([::AWSConfig], arguments::Dict)
    define_index_field([::AWSConfig]; DomainName=, IndexField=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DefineIndexField", arguments::Dict)
    cloudsearch([::AWSConfig], "DefineIndexField", DomainName=, IndexField=)

# DefineIndexField Operation

Configures an `[IndexField](@ref)` for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the `[IndexFieldType](@ref)`. If the field exists, the new configuration replaces the old one. For more information, see [Configuring Index Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `IndexField = [ ... ]` -- *Required*
The index field and field options you want to configure.
```
 IndexField = [
        "IndexFieldName" => <required> ::String,
        "IndexFieldType" => <required> "int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array" or "date-array",
        "IntOptions" =>  [
            "DefaultValue" =>  ::Int,
            "SourceField" =>  ::String,
            "FacetEnabled" =>  ::Bool,
            "SearchEnabled" =>  ::Bool,
            "ReturnEnabled" =>  ::Bool,
            "SortEnabled" =>  ::Bool
        ],
        "DoubleOptions" =>  [
            "DefaultValue" =>  double,
            "SourceField" =>  ::String,
            "FacetEnabled" =>  ::Bool,
            "SearchEnabled" =>  ::Bool,
            "ReturnEnabled" =>  ::Bool,
            "SortEnabled" =>  ::Bool
        ],
        "LiteralOptions" =>  [
            "DefaultValue" =>  ::String,
            "SourceField" =>  ::String,
            "FacetEnabled" =>  ::Bool,
            "SearchEnabled" =>  ::Bool,
            "ReturnEnabled" =>  ::Bool,
            "SortEnabled" =>  ::Bool
        ],
        "TextOptions" =>  [
            "DefaultValue" =>  ::String,
            "SourceField" =>  ::String,
            "ReturnEnabled" =>  ::Bool,
            "SortEnabled" =>  ::Bool,
            "HighlightEnabled" =>  ::Bool,
            "AnalysisScheme" =>  ::String
        ],
        "DateOptions" =>  [
            "DefaultValue" =>  ::String,
            "SourceField" =>  ::String,
            "FacetEnabled" =>  ::Bool,
            "SearchEnabled" =>  ::Bool,
            "ReturnEnabled" =>  ::Bool,
            "SortEnabled" =>  ::Bool
        ],
        "LatLonOptions" =>  [
            "DefaultValue" =>  ::String,
            "SourceField" =>  ::String,
            "FacetEnabled" =>  ::Bool,
            "SearchEnabled" =>  ::Bool,
            "ReturnEnabled" =>  ::Bool,
            "SortEnabled" =>  ::Bool
        ],
        "IntArrayOptions" =>  [
            "DefaultValue" =>  ::Int,
            "SourceFields" =>  ::String,
            "FacetEnabled" =>  ::Bool,
            "SearchEnabled" =>  ::Bool,
            "ReturnEnabled" =>  ::Bool
        ],
        "DoubleArrayOptions" =>  [
            "DefaultValue" =>  double,
            "SourceFields" =>  ::String,
            "FacetEnabled" =>  ::Bool,
            "SearchEnabled" =>  ::Bool,
            "ReturnEnabled" =>  ::Bool
        ],
        "LiteralArrayOptions" =>  [
            "DefaultValue" =>  ::String,
            "SourceFields" =>  ::String,
            "FacetEnabled" =>  ::Bool,
            "SearchEnabled" =>  ::Bool,
            "ReturnEnabled" =>  ::Bool
        ],
        "TextArrayOptions" =>  [
            "DefaultValue" =>  ::String,
            "SourceFields" =>  ::String,
            "ReturnEnabled" =>  ::Bool,
            "HighlightEnabled" =>  ::Bool,
            "AnalysisScheme" =>  ::String
        ],
        "DateArrayOptions" =>  [
            "DefaultValue" =>  ::String,
            "SourceFields" =>  ::String,
            "FacetEnabled" =>  ::Bool,
            "SearchEnabled" =>  ::Bool,
            "ReturnEnabled" =>  ::Bool
        ]
    ]
```



# Returns

`DefineIndexFieldResponse`

# Exceptions

`BaseException`, `InternalException`, `LimitExceededException`, `InvalidTypeException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DefineIndexField)
"""
@inline define_index_field(aws::AWSConfig=default_aws_config(); args...) = define_index_field(aws, args)

@inline define_index_field(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DefineIndexField", args)

@inline define_index_field(args) = define_index_field(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.define_suggester
    define_suggester([::AWSConfig], arguments::Dict)
    define_suggester([::AWSConfig]; DomainName=, Suggester=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DefineSuggester", arguments::Dict)
    cloudsearch([::AWSConfig], "DefineSuggester", DomainName=, Suggester=)

# DefineSuggester Operation

Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `Suggester = [ ... ]` -- *Required*

```
 Suggester = [
        "SuggesterName" => <required> ::String,
        "DocumentSuggesterOptions" => <required> [
            "SourceField" => <required> ::String,
            "FuzzyMatching" =>  "none", "low" or "high",
            "SortExpression" =>  ::String
        ]
    ]
```



# Returns

`DefineSuggesterResponse`

# Exceptions

`BaseException`, `InternalException`, `LimitExceededException`, `InvalidTypeException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DefineSuggester)
"""
@inline define_suggester(aws::AWSConfig=default_aws_config(); args...) = define_suggester(aws, args)

@inline define_suggester(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DefineSuggester", args)

@inline define_suggester(args) = define_suggester(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.delete_analysis_scheme
    delete_analysis_scheme([::AWSConfig], arguments::Dict)
    delete_analysis_scheme([::AWSConfig]; DomainName=, AnalysisSchemeName=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DeleteAnalysisScheme", arguments::Dict)
    cloudsearch([::AWSConfig], "DeleteAnalysisScheme", DomainName=, AnalysisSchemeName=)

# DeleteAnalysisScheme Operation

Deletes an analysis scheme. For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `AnalysisSchemeName = ::String` -- *Required*
The name of the analysis scheme you want to delete.




# Returns

`DeleteAnalysisSchemeResponse`

# Exceptions

`BaseException`, `InternalException`, `InvalidTypeException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DeleteAnalysisScheme)
"""
@inline delete_analysis_scheme(aws::AWSConfig=default_aws_config(); args...) = delete_analysis_scheme(aws, args)

@inline delete_analysis_scheme(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DeleteAnalysisScheme", args)

@inline delete_analysis_scheme(args) = delete_analysis_scheme(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.delete_domain
    delete_domain([::AWSConfig], arguments::Dict)
    delete_domain([::AWSConfig]; DomainName=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DeleteDomain", arguments::Dict)
    cloudsearch([::AWSConfig], "DeleteDomain", DomainName=)

# DeleteDomain Operation

Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see [Deleting a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain you want to permanently delete.




# Returns

`DeleteDomainResponse`

# Exceptions

`BaseException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DeleteDomain)
"""
@inline delete_domain(aws::AWSConfig=default_aws_config(); args...) = delete_domain(aws, args)

@inline delete_domain(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DeleteDomain", args)

@inline delete_domain(args) = delete_domain(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.delete_expression
    delete_expression([::AWSConfig], arguments::Dict)
    delete_expression([::AWSConfig]; DomainName=, ExpressionName=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DeleteExpression", arguments::Dict)
    cloudsearch([::AWSConfig], "DeleteExpression", DomainName=, ExpressionName=)

# DeleteExpression Operation

Removes an `[Expression](@ref)` from the search domain. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `ExpressionName = ::String` -- *Required*
The name of the `[Expression](@ref)` to delete.




# Returns

`DeleteExpressionResponse`

# Exceptions

`BaseException`, `InternalException`, `InvalidTypeException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DeleteExpression)
"""
@inline delete_expression(aws::AWSConfig=default_aws_config(); args...) = delete_expression(aws, args)

@inline delete_expression(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DeleteExpression", args)

@inline delete_expression(args) = delete_expression(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.delete_index_field
    delete_index_field([::AWSConfig], arguments::Dict)
    delete_index_field([::AWSConfig]; DomainName=, IndexFieldName=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DeleteIndexField", arguments::Dict)
    cloudsearch([::AWSConfig], "DeleteIndexField", DomainName=, IndexFieldName=)

# DeleteIndexField Operation

Removes an `[IndexField](@ref)` from the search domain. For more information, see [Configuring Index Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `IndexFieldName = ::String` -- *Required*
The name of the index field your want to remove from the domain's indexing options.




# Returns

`DeleteIndexFieldResponse`

# Exceptions

`BaseException`, `InternalException`, `InvalidTypeException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DeleteIndexField)
"""
@inline delete_index_field(aws::AWSConfig=default_aws_config(); args...) = delete_index_field(aws, args)

@inline delete_index_field(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DeleteIndexField", args)

@inline delete_index_field(args) = delete_index_field(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.delete_suggester
    delete_suggester([::AWSConfig], arguments::Dict)
    delete_suggester([::AWSConfig]; DomainName=, SuggesterName=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DeleteSuggester", arguments::Dict)
    cloudsearch([::AWSConfig], "DeleteSuggester", DomainName=, SuggesterName=)

# DeleteSuggester Operation

Deletes a suggester. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `SuggesterName = ::String` -- *Required*
Specifies the name of the suggester you want to delete.




# Returns

`DeleteSuggesterResponse`

# Exceptions

`BaseException`, `InternalException`, `InvalidTypeException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DeleteSuggester)
"""
@inline delete_suggester(aws::AWSConfig=default_aws_config(); args...) = delete_suggester(aws, args)

@inline delete_suggester(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DeleteSuggester", args)

@inline delete_suggester(args) = delete_suggester(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.describe_analysis_schemes
    describe_analysis_schemes([::AWSConfig], arguments::Dict)
    describe_analysis_schemes([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DescribeAnalysisSchemes", arguments::Dict)
    cloudsearch([::AWSConfig], "DescribeAnalysisSchemes", DomainName=, <keyword arguments>)

# DescribeAnalysisSchemes Operation

Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a `text` field. Can be limited to specific analysis schemes by name. By default, shows all analysis schemes and includes any pending changes to the configuration. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain you want to describe.


## `AnalysisSchemeNames = [::String, ...]`
The analysis schemes you want to describe.


## `Deployed = ::Bool`
Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.




# Returns

`DescribeAnalysisSchemesResponse`

# Exceptions

`BaseException`, `InternalException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DescribeAnalysisSchemes)
"""
@inline describe_analysis_schemes(aws::AWSConfig=default_aws_config(); args...) = describe_analysis_schemes(aws, args)

@inline describe_analysis_schemes(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DescribeAnalysisSchemes", args)

@inline describe_analysis_schemes(args) = describe_analysis_schemes(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.describe_availability_options
    describe_availability_options([::AWSConfig], arguments::Dict)
    describe_availability_options([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DescribeAvailabilityOptions", arguments::Dict)
    cloudsearch([::AWSConfig], "DescribeAvailabilityOptions", DomainName=, <keyword arguments>)

# DescribeAvailabilityOptions Operation

Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Configuring Availability Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain you want to describe.


## `Deployed = ::Bool`
Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.




# Returns

`DescribeAvailabilityOptionsResponse`

# Exceptions

`BaseException`, `InternalException`, `InvalidTypeException`, `LimitExceededException`, `ResourceNotFoundException` or `DisabledOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DescribeAvailabilityOptions)
"""
@inline describe_availability_options(aws::AWSConfig=default_aws_config(); args...) = describe_availability_options(aws, args)

@inline describe_availability_options(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DescribeAvailabilityOptions", args)

@inline describe_availability_options(args) = describe_availability_options(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.describe_domains
    describe_domains([::AWSConfig], arguments::Dict)
    describe_domains([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DescribeDomains", arguments::Dict)
    cloudsearch([::AWSConfig], "DescribeDomains", <keyword arguments>)

# DescribeDomains Operation

Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default. To get the number of searchable documents in a domain, use the console or submit a `matchall` request to your domain's search endpoint: `q=matchall&amp;q.parser=structured&amp;size=0`. For more information, see [Getting Information about a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainNames = [::String, ...]`
The names of the domains you want to include in the response.




# Returns

`DescribeDomainsResponse`

# Exceptions

`BaseException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DescribeDomains)
"""
@inline describe_domains(aws::AWSConfig=default_aws_config(); args...) = describe_domains(aws, args)

@inline describe_domains(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DescribeDomains", args)

@inline describe_domains(args) = describe_domains(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.describe_expressions
    describe_expressions([::AWSConfig], arguments::Dict)
    describe_expressions([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DescribeExpressions", arguments::Dict)
    cloudsearch([::AWSConfig], "DescribeExpressions", DomainName=, <keyword arguments>)

# DescribeExpressions Operation

Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain you want to describe.


## `ExpressionNames = [::String, ...]`
Limits the `[DescribeExpressions](@ref)` response to the specified expressions. If not specified, all expressions are shown.


## `Deployed = ::Bool`
Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.




# Returns

`DescribeExpressionsResponse`

# Exceptions

`BaseException`, `InternalException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DescribeExpressions)
"""
@inline describe_expressions(aws::AWSConfig=default_aws_config(); args...) = describe_expressions(aws, args)

@inline describe_expressions(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DescribeExpressions", args)

@inline describe_expressions(args) = describe_expressions(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.describe_index_fields
    describe_index_fields([::AWSConfig], arguments::Dict)
    describe_index_fields([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DescribeIndexFields", arguments::Dict)
    cloudsearch([::AWSConfig], "DescribeIndexFields", DomainName=, <keyword arguments>)

# DescribeIndexFields Operation

Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. By default, shows all fields and includes any pending changes to the configuration. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Getting Domain Information](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain you want to describe.


## `FieldNames = [::String, ...]`
A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.


## `Deployed = ::Bool`
Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.




# Returns

`DescribeIndexFieldsResponse`

# Exceptions

`BaseException`, `InternalException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DescribeIndexFields)
"""
@inline describe_index_fields(aws::AWSConfig=default_aws_config(); args...) = describe_index_fields(aws, args)

@inline describe_index_fields(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DescribeIndexFields", args)

@inline describe_index_fields(args) = describe_index_fields(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.describe_scaling_parameters
    describe_scaling_parameters([::AWSConfig], arguments::Dict)
    describe_scaling_parameters([::AWSConfig]; DomainName=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DescribeScalingParameters", arguments::Dict)
    cloudsearch([::AWSConfig], "DescribeScalingParameters", DomainName=)

# DescribeScalingParameters Operation

Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see [Configuring Scaling Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*





# Returns

`DescribeScalingParametersResponse`

# Exceptions

`BaseException`, `InternalException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DescribeScalingParameters)
"""
@inline describe_scaling_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_scaling_parameters(aws, args)

@inline describe_scaling_parameters(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DescribeScalingParameters", args)

@inline describe_scaling_parameters(args) = describe_scaling_parameters(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.describe_service_access_policies
    describe_service_access_policies([::AWSConfig], arguments::Dict)
    describe_service_access_policies([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DescribeServiceAccessPolicies", arguments::Dict)
    cloudsearch([::AWSConfig], "DescribeServiceAccessPolicies", DomainName=, <keyword arguments>)

# DescribeServiceAccessPolicies Operation

Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Configuring Access for a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain you want to describe.


## `Deployed = ::Bool`
Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.




# Returns

`DescribeServiceAccessPoliciesResponse`

# Exceptions

`BaseException`, `InternalException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DescribeServiceAccessPolicies)
"""
@inline describe_service_access_policies(aws::AWSConfig=default_aws_config(); args...) = describe_service_access_policies(aws, args)

@inline describe_service_access_policies(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DescribeServiceAccessPolicies", args)

@inline describe_service_access_policies(args) = describe_service_access_policies(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.describe_suggesters
    describe_suggesters([::AWSConfig], arguments::Dict)
    describe_suggesters([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "DescribeSuggesters", arguments::Dict)
    cloudsearch([::AWSConfig], "DescribeSuggesters", DomainName=, <keyword arguments>)

# DescribeSuggesters Operation

Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries. Can be limited to specific suggesters by name. By default, shows all suggesters and includes any pending changes to the configuration. Set the `Deployed` option to `true` to show the active configuration and exclude pending changes. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain you want to describe.


## `SuggesterNames = [::String, ...]`
The suggesters you want to describe.


## `Deployed = ::Bool`
Whether to display the deployed configuration (`true`) or include any pending changes (`false`). Defaults to `false`.




# Returns

`DescribeSuggestersResponse`

# Exceptions

`BaseException`, `InternalException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/DescribeSuggesters)
"""
@inline describe_suggesters(aws::AWSConfig=default_aws_config(); args...) = describe_suggesters(aws, args)

@inline describe_suggesters(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "DescribeSuggesters", args)

@inline describe_suggesters(args) = describe_suggesters(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.index_documents
    index_documents([::AWSConfig], arguments::Dict)
    index_documents([::AWSConfig]; DomainName=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "IndexDocuments", arguments::Dict)
    cloudsearch([::AWSConfig], "IndexDocuments", DomainName=)

# IndexDocuments Operation

Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose [OptionStatus](@ref) is `RequiresIndexDocuments`.

# Arguments

## `DomainName = ::String` -- *Required*





# Returns

`IndexDocumentsResponse`

# Exceptions

`BaseException`, `InternalException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/IndexDocuments)
"""
@inline index_documents(aws::AWSConfig=default_aws_config(); args...) = index_documents(aws, args)

@inline index_documents(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "IndexDocuments", args)

@inline index_documents(args) = index_documents(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.list_domain_names
    list_domain_names([::AWSConfig])
    

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "ListDomainNames",)
    

# ListDomainNames Operation

Lists all search domains owned by an account.

# Returns

`ListDomainNamesResponse`

# Exceptions

`BaseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/ListDomainNames)
"""
@inline list_domain_names(aws::AWSConfig=default_aws_config(); args...) = list_domain_names(aws, args)

@inline list_domain_names(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "ListDomainNames", args)

@inline list_domain_names(args) = list_domain_names(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.update_availability_options
    update_availability_options([::AWSConfig], arguments::Dict)
    update_availability_options([::AWSConfig]; DomainName=, MultiAZ=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "UpdateAvailabilityOptions", arguments::Dict)
    cloudsearch([::AWSConfig], "UpdateAvailabilityOptions", DomainName=, MultiAZ=)

# UpdateAvailabilityOptions Operation

Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see [Configuring Availability Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `MultiAZ = ::Bool` -- *Required*
You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to `false`.




# Returns

`UpdateAvailabilityOptionsResponse`

# Exceptions

`BaseException`, `InternalException`, `InvalidTypeException`, `LimitExceededException`, `ResourceNotFoundException` or `DisabledOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/UpdateAvailabilityOptions)
"""
@inline update_availability_options(aws::AWSConfig=default_aws_config(); args...) = update_availability_options(aws, args)

@inline update_availability_options(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "UpdateAvailabilityOptions", args)

@inline update_availability_options(args) = update_availability_options(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.update_scaling_parameters
    update_scaling_parameters([::AWSConfig], arguments::Dict)
    update_scaling_parameters([::AWSConfig]; DomainName=, ScalingParameters=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "UpdateScalingParameters", arguments::Dict)
    cloudsearch([::AWSConfig], "UpdateScalingParameters", DomainName=, ScalingParameters=)

# UpdateScalingParameters Operation

Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see [Configuring Scaling Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html) in the *Amazon CloudSearch Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*



## `ScalingParameters = [ ... ]` -- *Required*

```
 ScalingParameters = [
        "DesiredInstanceType" =>  "search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge" or "search.m3.2xlarge",
        "DesiredReplicationCount" =>  ::Int,
        "DesiredPartitionCount" =>  ::Int
    ]
```



# Returns

`UpdateScalingParametersResponse`

# Exceptions

`BaseException`, `InternalException`, `LimitExceededException`, `ResourceNotFoundException` or `InvalidTypeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/UpdateScalingParameters)
"""
@inline update_scaling_parameters(aws::AWSConfig=default_aws_config(); args...) = update_scaling_parameters(aws, args)

@inline update_scaling_parameters(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "UpdateScalingParameters", args)

@inline update_scaling_parameters(args) = update_scaling_parameters(default_aws_config(), args)


"""
    using AWSSDK.CloudSearch.update_service_access_policies
    update_service_access_policies([::AWSConfig], arguments::Dict)
    update_service_access_policies([::AWSConfig]; DomainName=, AccessPolicies=)

    using AWSCore.Services.cloudsearch
    cloudsearch([::AWSConfig], "UpdateServiceAccessPolicies", arguments::Dict)
    cloudsearch([::AWSConfig], "UpdateServiceAccessPolicies", DomainName=, AccessPolicies=)

# UpdateServiceAccessPolicies Operation

Configures the access rules that control access to the domain's document and search endpoints. For more information, see [Configuring Access for an Amazon CloudSearch Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html).

# Arguments

## `DomainName = ::String` -- *Required*



## `AccessPolicies = ::String` -- *Required*
The access rules you want to configure. These rules replace any existing rules.




# Returns

`UpdateServiceAccessPoliciesResponse`

# Exceptions

`BaseException`, `InternalException`, `LimitExceededException`, `ResourceNotFoundException` or `InvalidTypeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudsearch-2013-01-01/UpdateServiceAccessPolicies)
"""
@inline update_service_access_policies(aws::AWSConfig=default_aws_config(); args...) = update_service_access_policies(aws, args)

@inline update_service_access_policies(aws::AWSConfig, args) = AWSCore.Services.cloudsearch(aws, "UpdateServiceAccessPolicies", args)

@inline update_service_access_policies(args) = update_service_access_policies(default_aws_config(), args)




end # module CloudSearch


#==============================================================================#
# End of file
#==============================================================================#
