#==============================================================================#
# Macie.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/macie-2017-12-19.normal.json
#==============================================================================#

__precompile__()

module Macie

using AWSCore


"""
    using AWSSDK.Macie.associate_member_account
    associate_member_account([::AWSConfig], arguments::Dict)
    associate_member_account([::AWSConfig]; memberAccountId=)

    using AWSCore.Services.macie
    macie([::AWSConfig], "AssociateMemberAccount", arguments::Dict)
    macie([::AWSConfig], "AssociateMemberAccount", memberAccountId=)

# AssociateMemberAccount Operation

Associates a specified AWS account with Amazon Macie as a member account.

# Arguments

## `memberAccountId = ::String` -- *Required*
The ID of the AWS account that you want to associate with Amazon Macie as a member account.




# Exceptions

`InvalidInputException`, `LimitExceededException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateMemberAccount)
"""
@inline associate_member_account(aws::AWSConfig=default_aws_config(); args...) = associate_member_account(aws, args)

@inline associate_member_account(aws::AWSConfig, args) = AWSCore.Services.macie(aws, "AssociateMemberAccount", args)

@inline associate_member_account(args) = associate_member_account(default_aws_config(), args)


"""
    using AWSSDK.Macie.associate_s3resources
    associate_s3resources([::AWSConfig], arguments::Dict)
    associate_s3resources([::AWSConfig]; s3Resources=, <keyword arguments>)

    using AWSCore.Services.macie
    macie([::AWSConfig], "AssociateS3Resources", arguments::Dict)
    macie([::AWSConfig], "AssociateS3Resources", s3Resources=, <keyword arguments>)

# AssociateS3Resources Operation

Associates specified S3 resources with Amazon Macie for monitoring and data classification. If memberAccountId isn't specified, the action associates specified S3 resources with Macie for the current master account. If memberAccountId is specified, the action associates specified S3 resources with Macie for the specified member account.

# Arguments

## `memberAccountId = ::String`
The ID of the Amazon Macie member account whose resources you want to associate with Macie.


## `s3Resources = [[ ... ], ...]` -- *Required*
The S3 resources that you want to associate with Amazon Macie for monitoring and data classification.
```
 s3Resources = [[
        "bucketName" => <required> ::String,
        "prefix" =>  ::String,
        "classificationType" => <required> [
            "oneTime" => <required> "FULL" or "NONE",
            "continuous" => <required> "FULL"
        ]
    ], ...]
```



# Returns

`AssociateS3ResourcesResult`

# Exceptions

`InvalidInputException`, `AccessDeniedException`, `LimitExceededException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateS3Resources)
"""
@inline associate_s3resources(aws::AWSConfig=default_aws_config(); args...) = associate_s3resources(aws, args)

@inline associate_s3resources(aws::AWSConfig, args) = AWSCore.Services.macie(aws, "AssociateS3Resources", args)

@inline associate_s3resources(args) = associate_s3resources(default_aws_config(), args)


"""
    using AWSSDK.Macie.disassociate_member_account
    disassociate_member_account([::AWSConfig], arguments::Dict)
    disassociate_member_account([::AWSConfig]; memberAccountId=)

    using AWSCore.Services.macie
    macie([::AWSConfig], "DisassociateMemberAccount", arguments::Dict)
    macie([::AWSConfig], "DisassociateMemberAccount", memberAccountId=)

# DisassociateMemberAccount Operation

Removes the specified member account from Amazon Macie.

# Arguments

## `memberAccountId = ::String` -- *Required*
The ID of the member account that you want to remove from Amazon Macie.




# Exceptions

`InvalidInputException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateMemberAccount)
"""
@inline disassociate_member_account(aws::AWSConfig=default_aws_config(); args...) = disassociate_member_account(aws, args)

@inline disassociate_member_account(aws::AWSConfig, args) = AWSCore.Services.macie(aws, "DisassociateMemberAccount", args)

@inline disassociate_member_account(args) = disassociate_member_account(default_aws_config(), args)


"""
    using AWSSDK.Macie.disassociate_s3resources
    disassociate_s3resources([::AWSConfig], arguments::Dict)
    disassociate_s3resources([::AWSConfig]; associatedS3Resources=, <keyword arguments>)

    using AWSCore.Services.macie
    macie([::AWSConfig], "DisassociateS3Resources", arguments::Dict)
    macie([::AWSConfig], "DisassociateS3Resources", associatedS3Resources=, <keyword arguments>)

# DisassociateS3Resources Operation

Removes specified S3 resources from being monitored by Amazon Macie. If memberAccountId isn't specified, the action removes specified S3 resources from Macie for the current master account. If memberAccountId is specified, the action removes specified S3 resources from Macie for the specified member account.

# Arguments

## `memberAccountId = ::String`
The ID of the Amazon Macie member account whose resources you want to remove from being monitored by Amazon Macie.


## `associatedS3Resources = [[ ... ], ...]` -- *Required*
The S3 resources (buckets or prefixes) that you want to remove from being monitored and classified by Amazon Macie.
```
 associatedS3Resources = [[
        "bucketName" => <required> ::String,
        "prefix" =>  ::String
    ], ...]
```



# Returns

`DisassociateS3ResourcesResult`

# Exceptions

`InvalidInputException`, `AccessDeniedException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateS3Resources)
"""
@inline disassociate_s3resources(aws::AWSConfig=default_aws_config(); args...) = disassociate_s3resources(aws, args)

@inline disassociate_s3resources(aws::AWSConfig, args) = AWSCore.Services.macie(aws, "DisassociateS3Resources", args)

@inline disassociate_s3resources(args) = disassociate_s3resources(default_aws_config(), args)


"""
    using AWSSDK.Macie.list_member_accounts
    list_member_accounts([::AWSConfig], arguments::Dict)
    list_member_accounts([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.macie
    macie([::AWSConfig], "ListMemberAccounts", arguments::Dict)
    macie([::AWSConfig], "ListMemberAccounts", <keyword arguments>)

# ListMemberAccounts Operation

Lists all Amazon Macie member accounts for the current Amazon Macie master account.

# Arguments

## `nextToken = ::String`
Use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMemberAccounts action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.


## `maxResults = ::Int`
Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250.




# Returns

`ListMemberAccountsResult`

# Exceptions

`InternalException` or `InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListMemberAccounts)
"""
@inline list_member_accounts(aws::AWSConfig=default_aws_config(); args...) = list_member_accounts(aws, args)

@inline list_member_accounts(aws::AWSConfig, args) = AWSCore.Services.macie(aws, "ListMemberAccounts", args)

@inline list_member_accounts(args) = list_member_accounts(default_aws_config(), args)


"""
    using AWSSDK.Macie.list_s3resources
    list_s3resources([::AWSConfig], arguments::Dict)
    list_s3resources([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.macie
    macie([::AWSConfig], "ListS3Resources", arguments::Dict)
    macie([::AWSConfig], "ListS3Resources", <keyword arguments>)

# ListS3Resources Operation

Lists all the S3 resources associated with Amazon Macie. If memberAccountId isn't specified, the action lists the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action lists the S3 resources associated with Amazon Macie for the specified member account.

# Arguments

## `memberAccountId = ::String`
The Amazon Macie member account ID whose associated S3 resources you want to list.


## `nextToken = ::String`
Use this parameter when paginating results. Set its value to null on your first call to the ListS3Resources action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.


## `maxResults = ::Int`
Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250.




# Returns

`ListS3ResourcesResult`

# Exceptions

`InvalidInputException`, `AccessDeniedException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListS3Resources)
"""
@inline list_s3resources(aws::AWSConfig=default_aws_config(); args...) = list_s3resources(aws, args)

@inline list_s3resources(aws::AWSConfig, args) = AWSCore.Services.macie(aws, "ListS3Resources", args)

@inline list_s3resources(args) = list_s3resources(default_aws_config(), args)


"""
    using AWSSDK.Macie.update_s3resources
    update_s3resources([::AWSConfig], arguments::Dict)
    update_s3resources([::AWSConfig]; s3ResourcesUpdate=, <keyword arguments>)

    using AWSCore.Services.macie
    macie([::AWSConfig], "UpdateS3Resources", arguments::Dict)
    macie([::AWSConfig], "UpdateS3Resources", s3ResourcesUpdate=, <keyword arguments>)

# UpdateS3Resources Operation

Updates the classification types for the specified S3 resources. If memberAccountId isn't specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the specified member account.

# Arguments

## `memberAccountId = ::String`
The AWS ID of the Amazon Macie member account whose S3 resources' classification types you want to update.


## `s3ResourcesUpdate = [[ ... ], ...]` -- *Required*
The S3 resources whose classification types you want to update.
```
 s3ResourcesUpdate = [[
        "bucketName" => <required> ::String,
        "prefix" =>  ::String,
        "classificationTypeUpdate" => <required> [
            "oneTime" =>  "FULL" or "NONE",
            "continuous" =>  "FULL"
        ]
    ], ...]
```



# Returns

`UpdateS3ResourcesResult`

# Exceptions

`InvalidInputException`, `AccessDeniedException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/UpdateS3Resources)
"""
@inline update_s3resources(aws::AWSConfig=default_aws_config(); args...) = update_s3resources(aws, args)

@inline update_s3resources(aws::AWSConfig, args) = AWSCore.Services.macie(aws, "UpdateS3Resources", args)

@inline update_s3resources(args) = update_s3resources(default_aws_config(), args)




end # module Macie


#==============================================================================#
# End of file
#==============================================================================#
