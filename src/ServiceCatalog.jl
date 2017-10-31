#==============================================================================#
# ServiceCatalog.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/servicecatalog-2015-12-10.normal.json
#==============================================================================#

__precompile__()

module ServiceCatalog

using AWSCore


"""
    using AWSSDK.ServiceCatalog.accept_portfolio_share
    accept_portfolio_share([::AWSConfig], arguments::Dict)
    accept_portfolio_share([::AWSConfig]; PortfolioId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "AcceptPortfolioShare", arguments::Dict)
    servicecatalog([::AWSConfig], "AcceptPortfolioShare", PortfolioId=, <keyword arguments>)

# AcceptPortfolioShare Operation

Accepts an offer to share a portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.




# Returns

`AcceptPortfolioShareOutput`

# Exceptions

`InvalidParametersException`, `ResourceNotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AcceptPortfolioShare)
"""

@inline accept_portfolio_share(aws::AWSConfig=default_aws_config(); args...) = accept_portfolio_share(aws, args)

@inline accept_portfolio_share(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "AcceptPortfolioShare", args)

@inline accept_portfolio_share(args) = accept_portfolio_share(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.associate_principal_with_portfolio
    associate_principal_with_portfolio([::AWSConfig], arguments::Dict)
    associate_principal_with_portfolio([::AWSConfig]; PortfolioId=, PrincipalARN=, PrincipalType=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "AssociatePrincipalWithPortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "AssociatePrincipalWithPortfolio", PortfolioId=, PrincipalARN=, PrincipalType=, <keyword arguments>)

# AssociatePrincipalWithPortfolio Operation

Associates the specified principal ARN with the specified portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.


## `PrincipalARN = ::String` -- *Required*
The ARN representing the principal (IAM user, role, or group).


## `PrincipalType = "IAM"` -- *Required*
The principal type. Must be `IAM`




# Returns

`AssociatePrincipalWithPortfolioOutput`

# Exceptions

`InvalidParametersException`, `ResourceNotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociatePrincipalWithPortfolio)
"""

@inline associate_principal_with_portfolio(aws::AWSConfig=default_aws_config(); args...) = associate_principal_with_portfolio(aws, args)

@inline associate_principal_with_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "AssociatePrincipalWithPortfolio", args)

@inline associate_principal_with_portfolio(args) = associate_principal_with_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.associate_product_with_portfolio
    associate_product_with_portfolio([::AWSConfig], arguments::Dict)
    associate_product_with_portfolio([::AWSConfig]; ProductId=, PortfolioId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "AssociateProductWithPortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "AssociateProductWithPortfolio", ProductId=, PortfolioId=, <keyword arguments>)

# AssociateProductWithPortfolio Operation

Associates a product with a portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier.


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.


## `SourcePortfolioId = ::String`
The identifier of the source portfolio to use with this association.




# Returns

`AssociateProductWithPortfolioOutput`

# Exceptions

`InvalidParametersException`, `ResourceNotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateProductWithPortfolio)
"""

@inline associate_product_with_portfolio(aws::AWSConfig=default_aws_config(); args...) = associate_product_with_portfolio(aws, args)

@inline associate_product_with_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "AssociateProductWithPortfolio", args)

@inline associate_product_with_portfolio(args) = associate_product_with_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.associate_tag_option_with_resource
    associate_tag_option_with_resource([::AWSConfig], arguments::Dict)
    associate_tag_option_with_resource([::AWSConfig]; ResourceId=, TagOptionId=)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "AssociateTagOptionWithResource", arguments::Dict)
    servicecatalog([::AWSConfig], "AssociateTagOptionWithResource", ResourceId=, TagOptionId=)

# AssociateTagOptionWithResource Operation

Associate a TagOption identifier with a resource identifier.

# Arguments

## `ResourceId = ::String` -- *Required*
The resource identifier.


## `TagOptionId = ::String` -- *Required*
The TagOption identifier.




# Returns

`AssociateTagOptionWithResourceOutput`

# Exceptions

`TagOptionNotMigratedException`, `ResourceNotFoundException`, `InvalidParametersException`, `LimitExceededException`, `DuplicateResourceException` or `InvalidStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateTagOptionWithResource)
"""

@inline associate_tag_option_with_resource(aws::AWSConfig=default_aws_config(); args...) = associate_tag_option_with_resource(aws, args)

@inline associate_tag_option_with_resource(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "AssociateTagOptionWithResource", args)

@inline associate_tag_option_with_resource(args) = associate_tag_option_with_resource(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.copy_product
    copy_product([::AWSConfig], arguments::Dict)
    copy_product([::AWSConfig]; SourceProductArn=, IdempotencyToken=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "CopyProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "CopyProduct", SourceProductArn=, IdempotencyToken=, <keyword arguments>)

# CopyProduct Operation

Copies the specified source product to the specified target product or a new product.

You can copy the product to the same account or another account. You can copy the product to the same region or another region.

This operation is performed asynchronously. To track the progress of the operation, use [DescribeCopyProductStatus](@ref).

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `SourceProductArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the source product.


## `TargetProductId = ::String`
The ID of the target product. By default, a new product is created.


## `TargetProductName = ::String`
A name for the target product. The default is the name of the source product.


## `SourceProvisioningArtifactIdentifiers = [::Dict{String,String}, ...]`
The IDs of the product versions to copy. By default, all provisioning artifacts are copied.


## `CopyOptions = ["CopyTags", ...]`
The copy options. If the value is `CopyTags`, the tags from the source product are copied to the target product.


## `IdempotencyToken = ::String` -- *Required*
A token to disambiguate duplicate requests. You can use the same input in multiple requests, provided that you also specify a different idempotency token for each request.




# Returns

`CopyProductOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CopyProduct)
"""

@inline copy_product(aws::AWSConfig=default_aws_config(); args...) = copy_product(aws, args)

@inline copy_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "CopyProduct", args)

@inline copy_product(args) = copy_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.create_constraint
    create_constraint([::AWSConfig], arguments::Dict)
    create_constraint([::AWSConfig]; PortfolioId=, ProductId=, Parameters=, Type=, IdempotencyToken=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "CreateConstraint", arguments::Dict)
    servicecatalog([::AWSConfig], "CreateConstraint", PortfolioId=, ProductId=, Parameters=, Type=, IdempotencyToken=, <keyword arguments>)

# CreateConstraint Operation

Creates a new constraint. For more information, see [Using Constraints](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/constraints.html).

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.


## `ProductId = ::String` -- *Required*
The product identifier.


## `Parameters = ::String` -- *Required*
The constraint parameters. Expected values vary depending on which **Type** is specified. For more information, see the Examples section.

For Type `LAUNCH`, the `RoleArn` property is required.

For Type `NOTIFICATION`, the `NotificationArns` property is required.

For Type `TEMPLATE`, the `Rules` property is required.


## `Type = ::String` -- *Required*
The type of the constraint. Case-sensitive valid values are: `LAUNCH`, `NOTIFICATION`, or `TEMPLATE`.


## `Description = ::String`
The text description of the constraint.


## `IdempotencyToken = ::String` -- *Required*
A token to disambiguate duplicate requests. You can use the same input in multiple requests, provided that you also specify a different idempotency token for each request.




# Returns

`CreateConstraintOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidParametersException`, `LimitExceededException` or `DuplicateResourceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateConstraint)
"""

@inline create_constraint(aws::AWSConfig=default_aws_config(); args...) = create_constraint(aws, args)

@inline create_constraint(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "CreateConstraint", args)

@inline create_constraint(args) = create_constraint(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.create_portfolio
    create_portfolio([::AWSConfig], arguments::Dict)
    create_portfolio([::AWSConfig]; DisplayName=, ProviderName=, IdempotencyToken=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "CreatePortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "CreatePortfolio", DisplayName=, ProviderName=, IdempotencyToken=, <keyword arguments>)

# CreatePortfolio Operation

Creates a new portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `DisplayName = ::String` -- *Required*
The name to use for display purposes.


## `Description = ::String`
The text description of the portfolio.


## `ProviderName = ::String` -- *Required*
The name of the portfolio provider.


## `Tags = [[ ... ], ...]`
Tags to associate with the new portfolio.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `IdempotencyToken = ::String` -- *Required*
A token to disambiguate duplicate requests. You can use the same input in multiple requests, provided that you also specify a different idempotency token for each request.




# Returns

`CreatePortfolioOutput`

# Exceptions

`InvalidParametersException`, `LimitExceededException` or `TagOptionNotMigratedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolio)
"""

@inline create_portfolio(aws::AWSConfig=default_aws_config(); args...) = create_portfolio(aws, args)

@inline create_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "CreatePortfolio", args)

@inline create_portfolio(args) = create_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.create_portfolio_share
    create_portfolio_share([::AWSConfig], arguments::Dict)
    create_portfolio_share([::AWSConfig]; PortfolioId=, AccountId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "CreatePortfolioShare", arguments::Dict)
    servicecatalog([::AWSConfig], "CreatePortfolioShare", PortfolioId=, AccountId=, <keyword arguments>)

# CreatePortfolioShare Operation

Creates a new portfolio share.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.


## `AccountId = ::String` -- *Required*
The account ID with which to share the portfolio.




# Returns

`CreatePortfolioShareOutput`

# Exceptions

`ResourceNotFoundException`, `LimitExceededException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolioShare)
"""

@inline create_portfolio_share(aws::AWSConfig=default_aws_config(); args...) = create_portfolio_share(aws, args)

@inline create_portfolio_share(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "CreatePortfolioShare", args)

@inline create_portfolio_share(args) = create_portfolio_share(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.create_product
    create_product([::AWSConfig], arguments::Dict)
    create_product([::AWSConfig]; Name=, Owner=, ProductType=, ProvisioningArtifactParameters=, IdempotencyToken=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "CreateProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "CreateProduct", Name=, Owner=, ProductType=, ProvisioningArtifactParameters=, IdempotencyToken=, <keyword arguments>)

# CreateProduct Operation

Creates a new product.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Name = ::String` -- *Required*
The name of the product.


## `Owner = ::String` -- *Required*
The owner of the product.


## `Description = ::String`
The text description of the product.


## `Distributor = ::String`
The distributor of the product.


## `SupportDescription = ::String`
Support information about the product.


## `SupportEmail = ::String`
Contact email for product support.


## `SupportUrl = ::String`
Contact URL for product support.


## `ProductType = "CLOUD_FORMATION_TEMPLATE" or "MARKETPLACE"` -- *Required*
The type of the product to create.


## `Tags = [[ ... ], ...]`
Tags to associate with the new product.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `ProvisioningArtifactParameters = [ ... ]` -- *Required*
Parameters for the provisioning artifact.
```
 ProvisioningArtifactParameters = [
        "Name" =>  ::String,
        "Description" =>  ::String,
        "Info" => <required> ::Dict{String,String},
        "Type" =>  "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI" or "MARKETPLACE_CAR"
    ]
```

## `IdempotencyToken = ::String` -- *Required*
A token to disambiguate duplicate requests. You can use the same input in multiple requests, provided that you also specify a different idempotency token for each request.




# Returns

`CreateProductOutput`

# Exceptions

`InvalidParametersException`, `LimitExceededException` or `TagOptionNotMigratedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProduct)
"""

@inline create_product(aws::AWSConfig=default_aws_config(); args...) = create_product(aws, args)

@inline create_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "CreateProduct", args)

@inline create_product(args) = create_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.create_provisioning_artifact
    create_provisioning_artifact([::AWSConfig], arguments::Dict)
    create_provisioning_artifact([::AWSConfig]; ProductId=, Parameters=, IdempotencyToken=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "CreateProvisioningArtifact", arguments::Dict)
    servicecatalog([::AWSConfig], "CreateProvisioningArtifact", ProductId=, Parameters=, IdempotencyToken=, <keyword arguments>)

# CreateProvisioningArtifact Operation

Create a new provisioning artifact for the specified product. This operation does not work with a product that has been shared with you.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier.


## `Parameters = [ ... ]` -- *Required*
The parameters to use when creating the new provisioning artifact.
```
 Parameters = [
        "Name" =>  ::String,
        "Description" =>  ::String,
        "Info" => <required> ::Dict{String,String},
        "Type" =>  "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI" or "MARKETPLACE_CAR"
    ]
```

## `IdempotencyToken = ::String` -- *Required*
A token to disambiguate duplicate requests. You can use the same input in multiple requests, provided that you also specify a different idempotency token for each request.




# Returns

`CreateProvisioningArtifactOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidParametersException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProvisioningArtifact)
"""

@inline create_provisioning_artifact(aws::AWSConfig=default_aws_config(); args...) = create_provisioning_artifact(aws, args)

@inline create_provisioning_artifact(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "CreateProvisioningArtifact", args)

@inline create_provisioning_artifact(args) = create_provisioning_artifact(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.create_tag_option
    create_tag_option([::AWSConfig], arguments::Dict)
    create_tag_option([::AWSConfig]; Key=, Value=)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "CreateTagOption", arguments::Dict)
    servicecatalog([::AWSConfig], "CreateTagOption", Key=, Value=)

# CreateTagOption Operation

Create a new TagOption.

# Arguments

## `Key = ::String` -- *Required*
The TagOption key.


## `Value = ::String` -- *Required*
The TagOption value.




# Returns

`CreateTagOptionOutput`

# Exceptions

`TagOptionNotMigratedException`, `DuplicateResourceException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateTagOption)
"""

@inline create_tag_option(aws::AWSConfig=default_aws_config(); args...) = create_tag_option(aws, args)

@inline create_tag_option(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "CreateTagOption", args)

@inline create_tag_option(args) = create_tag_option(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.delete_constraint
    delete_constraint([::AWSConfig], arguments::Dict)
    delete_constraint([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DeleteConstraint", arguments::Dict)
    servicecatalog([::AWSConfig], "DeleteConstraint", Id=, <keyword arguments>)

# DeleteConstraint Operation

Deletes the specified constraint.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The identifier of the constraint to delete.




# Returns

`DeleteConstraintOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteConstraint)
"""

@inline delete_constraint(aws::AWSConfig=default_aws_config(); args...) = delete_constraint(aws, args)

@inline delete_constraint(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DeleteConstraint", args)

@inline delete_constraint(args) = delete_constraint(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.delete_portfolio
    delete_portfolio([::AWSConfig], arguments::Dict)
    delete_portfolio([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DeletePortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "DeletePortfolio", Id=, <keyword arguments>)

# DeletePortfolio Operation

Deletes the specified portfolio. This operation does not work with a portfolio that has been shared with you or if it has products, users, constraints, or shared accounts associated with it.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The identifier of the portfolio for the delete request.




# Returns

`DeletePortfolioOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidParametersException`, `ResourceInUseException` or `TagOptionNotMigratedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolio)
"""

@inline delete_portfolio(aws::AWSConfig=default_aws_config(); args...) = delete_portfolio(aws, args)

@inline delete_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DeletePortfolio", args)

@inline delete_portfolio(args) = delete_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.delete_portfolio_share
    delete_portfolio_share([::AWSConfig], arguments::Dict)
    delete_portfolio_share([::AWSConfig]; PortfolioId=, AccountId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DeletePortfolioShare", arguments::Dict)
    servicecatalog([::AWSConfig], "DeletePortfolioShare", PortfolioId=, AccountId=, <keyword arguments>)

# DeletePortfolioShare Operation

Deletes the specified portfolio share.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.


## `AccountId = ::String` -- *Required*
The account ID associated with the share to delete.




# Returns

`DeletePortfolioShareOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolioShare)
"""

@inline delete_portfolio_share(aws::AWSConfig=default_aws_config(); args...) = delete_portfolio_share(aws, args)

@inline delete_portfolio_share(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DeletePortfolioShare", args)

@inline delete_portfolio_share(args) = delete_portfolio_share(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.delete_product
    delete_product([::AWSConfig], arguments::Dict)
    delete_product([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DeleteProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "DeleteProduct", Id=, <keyword arguments>)

# DeleteProduct Operation

Deletes the specified product. This operation does not work with a product that has been shared with you or is associated with a portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The identifier of the product for the delete request.




# Returns

`DeleteProductOutput`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidParametersException` or `TagOptionNotMigratedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProduct)
"""

@inline delete_product(aws::AWSConfig=default_aws_config(); args...) = delete_product(aws, args)

@inline delete_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DeleteProduct", args)

@inline delete_product(args) = delete_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.delete_provisioning_artifact
    delete_provisioning_artifact([::AWSConfig], arguments::Dict)
    delete_provisioning_artifact([::AWSConfig]; ProductId=, ProvisioningArtifactId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DeleteProvisioningArtifact", arguments::Dict)
    servicecatalog([::AWSConfig], "DeleteProvisioningArtifact", ProductId=, ProvisioningArtifactId=, <keyword arguments>)

# DeleteProvisioningArtifact Operation

Deletes the specified provisioning artifact. This operation does not work on a provisioning artifact associated with a product that has been shared with you, or on the last provisioning artifact associated with a product (a product must have at least one provisioning artifact).

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier.


## `ProvisioningArtifactId = ::String` -- *Required*
The identifier of the provisioning artifact for the delete request. This is sometimes referred to as the product version.




# Returns

`DeleteProvisioningArtifactOutput`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProvisioningArtifact)
"""

@inline delete_provisioning_artifact(aws::AWSConfig=default_aws_config(); args...) = delete_provisioning_artifact(aws, args)

@inline delete_provisioning_artifact(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DeleteProvisioningArtifact", args)

@inline delete_provisioning_artifact(args) = delete_provisioning_artifact(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_constraint
    describe_constraint([::AWSConfig], arguments::Dict)
    describe_constraint([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeConstraint", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeConstraint", Id=, <keyword arguments>)

# DescribeConstraint Operation

Retrieves detailed information for a specified constraint.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The identifier of the constraint.




# Returns

`DescribeConstraintOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeConstraint)
"""

@inline describe_constraint(aws::AWSConfig=default_aws_config(); args...) = describe_constraint(aws, args)

@inline describe_constraint(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeConstraint", args)

@inline describe_constraint(args) = describe_constraint(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_copy_product_status
    describe_copy_product_status([::AWSConfig], arguments::Dict)
    describe_copy_product_status([::AWSConfig]; CopyProductToken=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeCopyProductStatus", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeCopyProductStatus", CopyProductToken=, <keyword arguments>)

# DescribeCopyProductStatus Operation

Describes the status of the specified copy product operation.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `CopyProductToken = ::String` -- *Required*
The token returned from the call to `CopyProduct` that initiated the operation.




# Returns

`DescribeCopyProductStatusOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeCopyProductStatus)
"""

@inline describe_copy_product_status(aws::AWSConfig=default_aws_config(); args...) = describe_copy_product_status(aws, args)

@inline describe_copy_product_status(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeCopyProductStatus", args)

@inline describe_copy_product_status(args) = describe_copy_product_status(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_portfolio
    describe_portfolio([::AWSConfig], arguments::Dict)
    describe_portfolio([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribePortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribePortfolio", Id=, <keyword arguments>)

# DescribePortfolio Operation

Retrieves detailed information and any tags associated with the specified portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The identifier of the portfolio for which to retrieve information.




# Returns

`DescribePortfolioOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolio)
"""

@inline describe_portfolio(aws::AWSConfig=default_aws_config(); args...) = describe_portfolio(aws, args)

@inline describe_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribePortfolio", args)

@inline describe_portfolio(args) = describe_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_product
    describe_product([::AWSConfig], arguments::Dict)
    describe_product([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeProduct", Id=, <keyword arguments>)

# DescribeProduct Operation

Retrieves information about a specified product.

This operation is functionally identical to [DescribeProductView](@ref) except that it takes as input `ProductId` instead of `ProductViewId`.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The `ProductId` of the product to describe.




# Returns

`DescribeProductOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProduct)
"""

@inline describe_product(aws::AWSConfig=default_aws_config(); args...) = describe_product(aws, args)

@inline describe_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeProduct", args)

@inline describe_product(args) = describe_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_product_as_admin
    describe_product_as_admin([::AWSConfig], arguments::Dict)
    describe_product_as_admin([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeProductAsAdmin", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeProductAsAdmin", Id=, <keyword arguments>)

# DescribeProductAsAdmin Operation

Retrieves information about a specified product, run with administrator access.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The identifier of the product for which to retrieve information.




# Returns

`DescribeProductAsAdminOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductAsAdmin)
"""

@inline describe_product_as_admin(aws::AWSConfig=default_aws_config(); args...) = describe_product_as_admin(aws, args)

@inline describe_product_as_admin(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeProductAsAdmin", args)

@inline describe_product_as_admin(args) = describe_product_as_admin(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_product_view
    describe_product_view([::AWSConfig], arguments::Dict)
    describe_product_view([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeProductView", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeProductView", Id=, <keyword arguments>)

# DescribeProductView Operation

Retrieves information about a specified product.

This operation is functionally identical to [DescribeProduct](@ref) except that it takes as input `ProductViewId` instead of `ProductId`.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The `ProductViewId` of the product to describe.




# Returns

`DescribeProductViewOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductView)
"""

@inline describe_product_view(aws::AWSConfig=default_aws_config(); args...) = describe_product_view(aws, args)

@inline describe_product_view(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeProductView", args)

@inline describe_product_view(args) = describe_product_view(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_provisioned_product
    describe_provisioned_product([::AWSConfig], arguments::Dict)
    describe_provisioned_product([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeProvisionedProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeProvisionedProduct", Id=, <keyword arguments>)

# DescribeProvisionedProduct Operation

Retrieve detailed information about the provisioned product.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The provisioned product identifier.




# Returns

`DescribeProvisionedProductOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProduct)
"""

@inline describe_provisioned_product(aws::AWSConfig=default_aws_config(); args...) = describe_provisioned_product(aws, args)

@inline describe_provisioned_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeProvisionedProduct", args)

@inline describe_provisioned_product(args) = describe_provisioned_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_provisioning_artifact
    describe_provisioning_artifact([::AWSConfig], arguments::Dict)
    describe_provisioning_artifact([::AWSConfig]; ProvisioningArtifactId=, ProductId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeProvisioningArtifact", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeProvisioningArtifact", ProvisioningArtifactId=, ProductId=, <keyword arguments>)

# DescribeProvisioningArtifact Operation

Retrieves detailed information about the specified provisioning artifact.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProvisioningArtifactId = ::String` -- *Required*
The identifier of the provisioning artifact. This is sometimes referred to as the product version.


## `ProductId = ::String` -- *Required*
The product identifier.


## `Verbose = ::Bool`
Enable a verbose level of details for the provisioning artifact.




# Returns

`DescribeProvisioningArtifactOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningArtifact)
"""

@inline describe_provisioning_artifact(aws::AWSConfig=default_aws_config(); args...) = describe_provisioning_artifact(aws, args)

@inline describe_provisioning_artifact(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeProvisioningArtifact", args)

@inline describe_provisioning_artifact(args) = describe_provisioning_artifact(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_provisioning_parameters
    describe_provisioning_parameters([::AWSConfig], arguments::Dict)
    describe_provisioning_parameters([::AWSConfig]; ProductId=, ProvisioningArtifactId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeProvisioningParameters", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeProvisioningParameters", ProductId=, ProvisioningArtifactId=, <keyword arguments>)

# DescribeProvisioningParameters Operation

Provides information about parameters required to provision a specified product in a specified manner. Use this operation to obtain the list of `ProvisioningArtifactParameters` parameters available to call the [ProvisionProduct](@ref) operation for the specified product.

If the output contains a TagOption key with an empty list of values, there is a TagOption conflict for that key. The end user cannot take action to fix the conflict, and launch is not blocked. In subsequent calls to the `ProvisionProduct` operation, do not include conflicted TagOption keys as tags. Calls to `ProvisionProduct` with empty TagOption values cause the error "Parameter validation failed: Missing required parameter in Tags[*N*]:*Value* ". Calls to `ProvisionProduct` with conflicted TagOption keys automatically tag the provisioned product with the conflicted keys with the value "`sc-tagoption-conflict-portfolioId-productId`".

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier.


## `ProvisioningArtifactId = ::String` -- *Required*
The provisioning artifact identifier for this product. This is sometimes referred to as the product version.


## `PathId = ::String`
The identifier of the path for this product's provisioning. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.




# Returns

`DescribeProvisioningParametersOutput`

# Exceptions

`InvalidParametersException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningParameters)
"""

@inline describe_provisioning_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_provisioning_parameters(aws, args)

@inline describe_provisioning_parameters(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeProvisioningParameters", args)

@inline describe_provisioning_parameters(args) = describe_provisioning_parameters(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_record
    describe_record([::AWSConfig], arguments::Dict)
    describe_record([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeRecord", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeRecord", Id=, <keyword arguments>)

# DescribeRecord Operation

Retrieves a paginated list of the full details of a specific request. Use this operation after calling a request operation ([ProvisionProduct](@ref), [TerminateProvisionedProduct](@ref), or [UpdateProvisionedProduct](@ref)).

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The record identifier of the ProvisionedProduct object for which to retrieve output information. This is the `RecordDetail.RecordId` obtained from the request operation's response.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.




# Returns

`DescribeRecordOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeRecord)
"""

@inline describe_record(aws::AWSConfig=default_aws_config(); args...) = describe_record(aws, args)

@inline describe_record(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeRecord", args)

@inline describe_record(args) = describe_record(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.describe_tag_option
    describe_tag_option([::AWSConfig], arguments::Dict)
    describe_tag_option([::AWSConfig]; Id=)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DescribeTagOption", arguments::Dict)
    servicecatalog([::AWSConfig], "DescribeTagOption", Id=)

# DescribeTagOption Operation

Describes a TagOption.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the TagOption.




# Returns

`DescribeTagOptionOutput`

# Exceptions

`TagOptionNotMigratedException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeTagOption)
"""

@inline describe_tag_option(aws::AWSConfig=default_aws_config(); args...) = describe_tag_option(aws, args)

@inline describe_tag_option(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DescribeTagOption", args)

@inline describe_tag_option(args) = describe_tag_option(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.disassociate_principal_from_portfolio
    disassociate_principal_from_portfolio([::AWSConfig], arguments::Dict)
    disassociate_principal_from_portfolio([::AWSConfig]; PortfolioId=, PrincipalARN=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DisassociatePrincipalFromPortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "DisassociatePrincipalFromPortfolio", PortfolioId=, PrincipalARN=, <keyword arguments>)

# DisassociatePrincipalFromPortfolio Operation

Disassociates a previously associated principal ARN from a specified portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.


## `PrincipalARN = ::String` -- *Required*
The ARN representing the principal (IAM user, role, or group).




# Returns

`DisassociatePrincipalFromPortfolioOutput`

# Exceptions

`InvalidParametersException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociatePrincipalFromPortfolio)
"""

@inline disassociate_principal_from_portfolio(aws::AWSConfig=default_aws_config(); args...) = disassociate_principal_from_portfolio(aws, args)

@inline disassociate_principal_from_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DisassociatePrincipalFromPortfolio", args)

@inline disassociate_principal_from_portfolio(args) = disassociate_principal_from_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.disassociate_product_from_portfolio
    disassociate_product_from_portfolio([::AWSConfig], arguments::Dict)
    disassociate_product_from_portfolio([::AWSConfig]; ProductId=, PortfolioId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DisassociateProductFromPortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "DisassociateProductFromPortfolio", ProductId=, PortfolioId=, <keyword arguments>)

# DisassociateProductFromPortfolio Operation

Disassociates the specified product from the specified portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier.


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.




# Returns

`DisassociateProductFromPortfolioOutput`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateProductFromPortfolio)
"""

@inline disassociate_product_from_portfolio(aws::AWSConfig=default_aws_config(); args...) = disassociate_product_from_portfolio(aws, args)

@inline disassociate_product_from_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DisassociateProductFromPortfolio", args)

@inline disassociate_product_from_portfolio(args) = disassociate_product_from_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.disassociate_tag_option_from_resource
    disassociate_tag_option_from_resource([::AWSConfig], arguments::Dict)
    disassociate_tag_option_from_resource([::AWSConfig]; ResourceId=, TagOptionId=)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "DisassociateTagOptionFromResource", arguments::Dict)
    servicecatalog([::AWSConfig], "DisassociateTagOptionFromResource", ResourceId=, TagOptionId=)

# DisassociateTagOptionFromResource Operation

Disassociates a TagOption from a resource.

# Arguments

## `ResourceId = ::String` -- *Required*
Identifier of the resource from which to disassociate the TagOption.


## `TagOptionId = ::String` -- *Required*
Identifier of the TagOption to disassociate from the resource.




# Returns

`DisassociateTagOptionFromResourceOutput`

# Exceptions

`TagOptionNotMigratedException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateTagOptionFromResource)
"""

@inline disassociate_tag_option_from_resource(aws::AWSConfig=default_aws_config(); args...) = disassociate_tag_option_from_resource(aws, args)

@inline disassociate_tag_option_from_resource(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "DisassociateTagOptionFromResource", args)

@inline disassociate_tag_option_from_resource(args) = disassociate_tag_option_from_resource(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_accepted_portfolio_shares
    list_accepted_portfolio_shares([::AWSConfig], arguments::Dict)
    list_accepted_portfolio_shares([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListAcceptedPortfolioShares", arguments::Dict)
    servicecatalog([::AWSConfig], "ListAcceptedPortfolioShares", <keyword arguments>)

# ListAcceptedPortfolioShares Operation

Lists details of all portfolios for which sharing was accepted by this account.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.




# Returns

`ListAcceptedPortfolioSharesOutput`

# Exceptions

`InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListAcceptedPortfolioShares)
"""

@inline list_accepted_portfolio_shares(aws::AWSConfig=default_aws_config(); args...) = list_accepted_portfolio_shares(aws, args)

@inline list_accepted_portfolio_shares(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListAcceptedPortfolioShares", args)

@inline list_accepted_portfolio_shares(args) = list_accepted_portfolio_shares(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_constraints_for_portfolio
    list_constraints_for_portfolio([::AWSConfig], arguments::Dict)
    list_constraints_for_portfolio([::AWSConfig]; PortfolioId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListConstraintsForPortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "ListConstraintsForPortfolio", PortfolioId=, <keyword arguments>)

# ListConstraintsForPortfolio Operation

Retrieves detailed constraint information for the specified portfolio and product.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.


## `ProductId = ::String`
The product identifier.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.




# Returns

`ListConstraintsForPortfolioOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListConstraintsForPortfolio)
"""

@inline list_constraints_for_portfolio(aws::AWSConfig=default_aws_config(); args...) = list_constraints_for_portfolio(aws, args)

@inline list_constraints_for_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListConstraintsForPortfolio", args)

@inline list_constraints_for_portfolio(args) = list_constraints_for_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_launch_paths
    list_launch_paths([::AWSConfig], arguments::Dict)
    list_launch_paths([::AWSConfig]; ProductId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListLaunchPaths", arguments::Dict)
    servicecatalog([::AWSConfig], "ListLaunchPaths", ProductId=, <keyword arguments>)

# ListLaunchPaths Operation

Returns a paginated list of all paths to a specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier. Identifies the product for which to retrieve `LaunchPathSummaries` information.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.




# Returns

`ListLaunchPathsOutput`

# Exceptions

`InvalidParametersException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListLaunchPaths)
"""

@inline list_launch_paths(aws::AWSConfig=default_aws_config(); args...) = list_launch_paths(aws, args)

@inline list_launch_paths(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListLaunchPaths", args)

@inline list_launch_paths(args) = list_launch_paths(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_portfolio_access
    list_portfolio_access([::AWSConfig], arguments::Dict)
    list_portfolio_access([::AWSConfig]; PortfolioId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListPortfolioAccess", arguments::Dict)
    servicecatalog([::AWSConfig], "ListPortfolioAccess", PortfolioId=, <keyword arguments>)

# ListPortfolioAccess Operation

Lists the account IDs that have been authorized sharing of the specified portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.




# Returns

`ListPortfolioAccessOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfolioAccess)
"""

@inline list_portfolio_access(aws::AWSConfig=default_aws_config(); args...) = list_portfolio_access(aws, args)

@inline list_portfolio_access(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListPortfolioAccess", args)

@inline list_portfolio_access(args) = list_portfolio_access(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_portfolios
    list_portfolios([::AWSConfig], arguments::Dict)
    list_portfolios([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListPortfolios", arguments::Dict)
    servicecatalog([::AWSConfig], "ListPortfolios", <keyword arguments>)

# ListPortfolios Operation

Lists all portfolios in the catalog.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.




# Returns

`ListPortfoliosOutput`

# Exceptions

`InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfolios)
"""

@inline list_portfolios(aws::AWSConfig=default_aws_config(); args...) = list_portfolios(aws, args)

@inline list_portfolios(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListPortfolios", args)

@inline list_portfolios(args) = list_portfolios(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_portfolios_for_product
    list_portfolios_for_product([::AWSConfig], arguments::Dict)
    list_portfolios_for_product([::AWSConfig]; ProductId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListPortfoliosForProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "ListPortfoliosForProduct", ProductId=, <keyword arguments>)

# ListPortfoliosForProduct Operation

Lists all portfolios that the specified product is associated with.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.




# Returns

`ListPortfoliosForProductOutput`

# Exceptions

`InvalidParametersException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfoliosForProduct)
"""

@inline list_portfolios_for_product(aws::AWSConfig=default_aws_config(); args...) = list_portfolios_for_product(aws, args)

@inline list_portfolios_for_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListPortfoliosForProduct", args)

@inline list_portfolios_for_product(args) = list_portfolios_for_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_principals_for_portfolio
    list_principals_for_portfolio([::AWSConfig], arguments::Dict)
    list_principals_for_portfolio([::AWSConfig]; PortfolioId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListPrincipalsForPortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "ListPrincipalsForPortfolio", PortfolioId=, <keyword arguments>)

# ListPrincipalsForPortfolio Operation

Lists all principal ARNs associated with the specified portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.




# Returns

`ListPrincipalsForPortfolioOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPrincipalsForPortfolio)
"""

@inline list_principals_for_portfolio(aws::AWSConfig=default_aws_config(); args...) = list_principals_for_portfolio(aws, args)

@inline list_principals_for_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListPrincipalsForPortfolio", args)

@inline list_principals_for_portfolio(args) = list_principals_for_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_provisioning_artifacts
    list_provisioning_artifacts([::AWSConfig], arguments::Dict)
    list_provisioning_artifacts([::AWSConfig]; ProductId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListProvisioningArtifacts", arguments::Dict)
    servicecatalog([::AWSConfig], "ListProvisioningArtifacts", ProductId=, <keyword arguments>)

# ListProvisioningArtifacts Operation

Lists all provisioning artifacts associated with the specified product.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier.




# Returns

`ListProvisioningArtifactsOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisioningArtifacts)
"""

@inline list_provisioning_artifacts(aws::AWSConfig=default_aws_config(); args...) = list_provisioning_artifacts(aws, args)

@inline list_provisioning_artifacts(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListProvisioningArtifacts", args)

@inline list_provisioning_artifacts(args) = list_provisioning_artifacts(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_record_history
    list_record_history([::AWSConfig], arguments::Dict)
    list_record_history([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListRecordHistory", arguments::Dict)
    servicecatalog([::AWSConfig], "ListRecordHistory", <keyword arguments>)

# ListRecordHistory Operation

Returns a paginated list of all performed requests, in the form of RecordDetails objects that are filtered as specified.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `AccessLevelFilter = [ ... ]`
The access level for obtaining results. If left unspecified, `User` level access is used.
```
 AccessLevelFilter = [
        "Key" =>  "Account", "Role" or "User",
        "Value" =>  ::String
    ]
```

## `SearchFilter = [ ... ]`
The filter to limit search results.
```
 SearchFilter = [
        "Key" =>  ::String,
        "Value" =>  ::String
    ]
```

## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.




# Returns

`ListRecordHistoryOutput`

# Exceptions

`InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListRecordHistory)
"""

@inline list_record_history(aws::AWSConfig=default_aws_config(); args...) = list_record_history(aws, args)

@inline list_record_history(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListRecordHistory", args)

@inline list_record_history(args) = list_record_history(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_resources_for_tag_option
    list_resources_for_tag_option([::AWSConfig], arguments::Dict)
    list_resources_for_tag_option([::AWSConfig]; TagOptionId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListResourcesForTagOption", arguments::Dict)
    servicecatalog([::AWSConfig], "ListResourcesForTagOption", TagOptionId=, <keyword arguments>)

# ListResourcesForTagOption Operation

Lists resources associated with a TagOption.

# Arguments

## `TagOptionId = ::String` -- *Required*
Identifier of the TagOption.


## `ResourceType = ::String`
Resource type.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.




# Returns

`ListResourcesForTagOptionOutput`

# Exceptions

`TagOptionNotMigratedException`, `ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListResourcesForTagOption)
"""

@inline list_resources_for_tag_option(aws::AWSConfig=default_aws_config(); args...) = list_resources_for_tag_option(aws, args)

@inline list_resources_for_tag_option(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListResourcesForTagOption", args)

@inline list_resources_for_tag_option(args) = list_resources_for_tag_option(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.list_tag_options
    list_tag_options([::AWSConfig], arguments::Dict)
    list_tag_options([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ListTagOptions", arguments::Dict)
    servicecatalog([::AWSConfig], "ListTagOptions", <keyword arguments>)

# ListTagOptions Operation

Lists detailed TagOptions information.

# Arguments

## `Filters = [ ... ]`
The list of filters with which to limit search results. If no search filters are specified, the output is all TagOptions.
```
 Filters = [
        "Key" =>  ::String,
        "Value" =>  ::String,
        "Active" =>  ::Bool
    ]
```

## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.




# Returns

`ListTagOptionsOutput`

# Exceptions

`TagOptionNotMigratedException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListTagOptions)
"""

@inline list_tag_options(aws::AWSConfig=default_aws_config(); args...) = list_tag_options(aws, args)

@inline list_tag_options(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ListTagOptions", args)

@inline list_tag_options(args) = list_tag_options(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.provision_product
    provision_product([::AWSConfig], arguments::Dict)
    provision_product([::AWSConfig]; ProductId=, ProvisioningArtifactId=, ProvisionedProductName=, ProvisionToken=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ProvisionProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "ProvisionProduct", ProductId=, ProvisioningArtifactId=, ProvisionedProductName=, ProvisionToken=, <keyword arguments>)

# ProvisionProduct Operation

Requests a *provision* of a specified product. A *provisioned product* is a resourced instance for a product. For example, provisioning a CloudFormation-template-backed product results in launching a CloudFormation stack and all the underlying resources that come with it.

You can check the status of this request using the [DescribeRecord](@ref) operation. The error "Parameter validation failed: Missing required parameter in Tags[*N*]:*Value*" indicates that your request contains a tag which has a tag key but no corresponding tag value (value is empty or null). Your call may have included values returned from a `DescribeProvisioningParameters` call that resulted in a TagOption key with an empty list. This happens when TagOption keys are in conflict. For more information, see [DescribeProvisioningParameters](@ref).

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier.


## `ProvisioningArtifactId = ::String` -- *Required*
The provisioning artifact identifier for this product. This is sometimes referred to as the product version.


## `PathId = ::String`
The identifier of the path for this product's provisioning. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.


## `ProvisionedProductName = ::String` -- *Required*
A user-friendly name to identify the ProvisionedProduct object. This value must be unique for the AWS account and cannot be updated after the product is provisioned.


## `ProvisioningParameters = [[ ... ], ...]`
Parameters specified by the administrator that are required for provisioning the product.
```
 ProvisioningParameters = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `Tags = [[ ... ], ...]`
A list of tags to use as provisioning options.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `NotificationArns = [::String, ...]`
Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.


## `ProvisionToken = ::String` -- *Required*
An idempotency token that uniquely identifies the provisioning request.




# Returns

`ProvisionProductOutput`

# Exceptions

`InvalidParametersException`, `ResourceNotFoundException` or `DuplicateResourceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionProduct)
"""

@inline provision_product(aws::AWSConfig=default_aws_config(); args...) = provision_product(aws, args)

@inline provision_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ProvisionProduct", args)

@inline provision_product(args) = provision_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.reject_portfolio_share
    reject_portfolio_share([::AWSConfig], arguments::Dict)
    reject_portfolio_share([::AWSConfig]; PortfolioId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "RejectPortfolioShare", arguments::Dict)
    servicecatalog([::AWSConfig], "RejectPortfolioShare", PortfolioId=, <keyword arguments>)

# RejectPortfolioShare Operation

Rejects an offer to share a portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String` -- *Required*
The portfolio identifier.




# Returns

`RejectPortfolioShareOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RejectPortfolioShare)
"""

@inline reject_portfolio_share(aws::AWSConfig=default_aws_config(); args...) = reject_portfolio_share(aws, args)

@inline reject_portfolio_share(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "RejectPortfolioShare", args)

@inline reject_portfolio_share(args) = reject_portfolio_share(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.scan_provisioned_products
    scan_provisioned_products([::AWSConfig], arguments::Dict)
    scan_provisioned_products([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "ScanProvisionedProducts", arguments::Dict)
    servicecatalog([::AWSConfig], "ScanProvisionedProducts", <keyword arguments>)

# ScanProvisionedProducts Operation

Returns a paginated list of all the ProvisionedProduct objects that are currently available (not terminated).

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `AccessLevelFilter = [ ... ]`
The access level for obtaining results. If left unspecified, `User` level access is used.
```
 AccessLevelFilter = [
        "Key" =>  "Account", "Role" or "User",
        "Value" =>  ::String
    ]
```

## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.




# Returns

`ScanProvisionedProductsOutput`

# Exceptions

`InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ScanProvisionedProducts)
"""

@inline scan_provisioned_products(aws::AWSConfig=default_aws_config(); args...) = scan_provisioned_products(aws, args)

@inline scan_provisioned_products(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "ScanProvisionedProducts", args)

@inline scan_provisioned_products(args) = scan_provisioned_products(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.search_products
    search_products([::AWSConfig], arguments::Dict)
    search_products([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "SearchProducts", arguments::Dict)
    servicecatalog([::AWSConfig], "SearchProducts", <keyword arguments>)

# SearchProducts Operation

Returns a paginated list all of the `Products` objects to which the caller has access.

The output of this operation can be used as input for other operations, such as [DescribeProductView](@ref).

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Filters = ::Dict{String,String}`
The list of filters with which to limit search results. If no search filters are specified, the output is all the products to which the calling user has access.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.


## `SortBy = "Title", "VersionCount" or "CreationDate"`
The sort field specifier. If no value is specified, results are not sorted.


## `SortOrder = "ASCENDING" or "DESCENDING"`
The sort order specifier. If no value is specified, results are not sorted.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.




# Returns

`SearchProductsOutput`

# Exceptions

`InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProducts)
"""

@inline search_products(aws::AWSConfig=default_aws_config(); args...) = search_products(aws, args)

@inline search_products(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "SearchProducts", args)

@inline search_products(args) = search_products(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.search_products_as_admin
    search_products_as_admin([::AWSConfig], arguments::Dict)
    search_products_as_admin([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "SearchProductsAsAdmin", arguments::Dict)
    servicecatalog([::AWSConfig], "SearchProductsAsAdmin", <keyword arguments>)

# SearchProductsAsAdmin Operation

Retrieves summary and status information about all products created within the caller's account. If a portfolio ID is provided, this operation retrieves information for only those products that are associated with the specified portfolio.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `PortfolioId = ::String`
The portfolio identifier.


## `Filters = ::Dict{String,String}`
The list of filters with which to limit search results. If no search filters are specified, the output is all the products to which the administrator has access.


## `SortBy = "Title", "VersionCount" or "CreationDate"`
The sort field specifier. If no value is specified, results are not sorted.


## `SortOrder = "ASCENDING" or "DESCENDING"`
The sort order specifier. If no value is specified, results are not sorted.


## `PageToken = ::String`
The page token of the first page retrieved. If null, this retrieves the first page of size `PageSize`.


## `PageSize = ::Int`
The maximum number of items to return in the results. If more results exist than fit in the specified `PageSize`, the value of `NextPageToken` in the response is non-null.


## `ProductSource = "ACCOUNT"`
Access level of the source of the product.




# Returns

`SearchProductsAsAdminOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProductsAsAdmin)
"""

@inline search_products_as_admin(aws::AWSConfig=default_aws_config(); args...) = search_products_as_admin(aws, args)

@inline search_products_as_admin(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "SearchProductsAsAdmin", args)

@inline search_products_as_admin(args) = search_products_as_admin(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.terminate_provisioned_product
    terminate_provisioned_product([::AWSConfig], arguments::Dict)
    terminate_provisioned_product([::AWSConfig]; TerminateToken=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "TerminateProvisionedProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "TerminateProvisionedProduct", TerminateToken=, <keyword arguments>)

# TerminateProvisionedProduct Operation

Requests termination of an existing ProvisionedProduct object. If there are `Tags` associated with the object, they are terminated when the ProvisionedProduct object is terminated.

This operation does not delete any records associated with the ProvisionedProduct object.

You can check the status of this request using the [DescribeRecord](@ref) operation.

# Arguments

## `ProvisionedProductName = ::String`
The name of the ProvisionedProduct object to terminate. Specify either `ProvisionedProductName` or `ProvisionedProductId`, but not both.


## `ProvisionedProductId = ::String`
The identifier of the ProvisionedProduct object to terminate. Specify either `ProvisionedProductName` or `ProvisionedProductId`, but not both.


## `TerminateToken = ::String` -- *Required*
An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the ProvisionedProduct object is terminated, further requests to terminate the same ProvisionedProduct object always return **ResourceNotFound** regardless of the value of `TerminateToken`.


## `IgnoreErrors = ::Bool`
If set to true, AWS Service Catalog stops managing the specified ProvisionedProduct object even if it cannot delete the underlying resources.


## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese




# Returns

`TerminateProvisionedProductOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/TerminateProvisionedProduct)
"""

@inline terminate_provisioned_product(aws::AWSConfig=default_aws_config(); args...) = terminate_provisioned_product(aws, args)

@inline terminate_provisioned_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "TerminateProvisionedProduct", args)

@inline terminate_provisioned_product(args) = terminate_provisioned_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.update_constraint
    update_constraint([::AWSConfig], arguments::Dict)
    update_constraint([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "UpdateConstraint", arguments::Dict)
    servicecatalog([::AWSConfig], "UpdateConstraint", Id=, <keyword arguments>)

# UpdateConstraint Operation

Updates an existing constraint.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The identifier of the constraint to update.


## `Description = ::String`
The updated text description of the constraint.




# Returns

`UpdateConstraintOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateConstraint)
"""

@inline update_constraint(aws::AWSConfig=default_aws_config(); args...) = update_constraint(aws, args)

@inline update_constraint(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "UpdateConstraint", args)

@inline update_constraint(args) = update_constraint(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.update_portfolio
    update_portfolio([::AWSConfig], arguments::Dict)
    update_portfolio([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "UpdatePortfolio", arguments::Dict)
    servicecatalog([::AWSConfig], "UpdatePortfolio", Id=, <keyword arguments>)

# UpdatePortfolio Operation

Updates the specified portfolio's details. This operation does not work with a product that has been shared with you.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The identifier of the portfolio for the update request.


## `DisplayName = ::String`
The name to use for display purposes.


## `Description = ::String`
The updated text description of the portfolio.


## `ProviderName = ::String`
The updated name of the portfolio provider.


## `AddTags = [[ ... ], ...]`
Tags to add to the existing list of tags associated with the portfolio.
```
 AddTags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `RemoveTags = [::String, ...]`
Tags to remove from the existing list of tags associated with the portfolio.




# Returns

`UpdatePortfolioOutput`

# Exceptions

`InvalidParametersException`, `ResourceNotFoundException`, `LimitExceededException` or `TagOptionNotMigratedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdatePortfolio)
"""

@inline update_portfolio(aws::AWSConfig=default_aws_config(); args...) = update_portfolio(aws, args)

@inline update_portfolio(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "UpdatePortfolio", args)

@inline update_portfolio(args) = update_portfolio(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.update_product
    update_product([::AWSConfig], arguments::Dict)
    update_product([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "UpdateProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "UpdateProduct", Id=, <keyword arguments>)

# UpdateProduct Operation

Updates an existing product.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `Id = ::String` -- *Required*
The identifier of the product for the update request.


## `Name = ::String`
The updated product name.


## `Owner = ::String`
The updated owner of the product.


## `Description = ::String`
The updated text description of the product.


## `Distributor = ::String`
The updated distributor of the product.


## `SupportDescription = ::String`
The updated support description for the product.


## `SupportEmail = ::String`
The updated support email for the product.


## `SupportUrl = ::String`
The updated support URL for the product.


## `AddTags = [[ ... ], ...]`
Tags to add to the existing list of tags associated with the product.
```
 AddTags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `RemoveTags = [::String, ...]`
Tags to remove from the existing list of tags associated with the product.




# Returns

`UpdateProductOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidParametersException` or `TagOptionNotMigratedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProduct)
"""

@inline update_product(aws::AWSConfig=default_aws_config(); args...) = update_product(aws, args)

@inline update_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "UpdateProduct", args)

@inline update_product(args) = update_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.update_provisioned_product
    update_provisioned_product([::AWSConfig], arguments::Dict)
    update_provisioned_product([::AWSConfig]; UpdateToken=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "UpdateProvisionedProduct", arguments::Dict)
    servicecatalog([::AWSConfig], "UpdateProvisionedProduct", UpdateToken=, <keyword arguments>)

# UpdateProvisionedProduct Operation

Requests updates to the configuration of an existing ProvisionedProduct object. If there are tags associated with the object, they cannot be updated or added with this operation. Depending on the specific updates requested, this operation may update with no interruption, with some interruption, or replace the ProvisionedProduct object entirely.

You can check the status of this request using the [DescribeRecord](@ref) operation.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProvisionedProductName = ::String`
The updated name of the ProvisionedProduct object. Specify either `ProvisionedProductName` or `ProvisionedProductId`, but not both.


## `ProvisionedProductId = ::String`
The identifier of the ProvisionedProduct object to update. Specify either `ProvisionedProductName` or `ProvisionedProductId`, but not both.


## `ProductId = ::String`
The identifier of the ProvisionedProduct object.


## `ProvisioningArtifactId = ::String`
The provisioning artifact identifier for this product. This is sometimes referred to as the product version.


## `PathId = ::String`
The identifier of the path to use in the updated ProvisionedProduct object. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.


## `ProvisioningParameters = [[ ... ], ...]`
A list of `ProvisioningParameter` objects used to update the ProvisionedProduct object.
```
 ProvisioningParameters = [[
        "Key" =>  ::String,
        "Value" =>  ::String,
        "UsePreviousValue" =>  ::Bool
    ], ...]
```

## `UpdateToken = ::String` -- *Required*
The idempotency token that uniquely identifies the provisioning update request.




# Returns

`UpdateProvisionedProductOutput`

# Exceptions

`InvalidParametersException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisionedProduct)
"""

@inline update_provisioned_product(aws::AWSConfig=default_aws_config(); args...) = update_provisioned_product(aws, args)

@inline update_provisioned_product(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "UpdateProvisionedProduct", args)

@inline update_provisioned_product(args) = update_provisioned_product(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.update_provisioning_artifact
    update_provisioning_artifact([::AWSConfig], arguments::Dict)
    update_provisioning_artifact([::AWSConfig]; ProductId=, ProvisioningArtifactId=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "UpdateProvisioningArtifact", arguments::Dict)
    servicecatalog([::AWSConfig], "UpdateProvisioningArtifact", ProductId=, ProvisioningArtifactId=, <keyword arguments>)

# UpdateProvisioningArtifact Operation

Updates an existing provisioning artifact's information. This operation does not work on a provisioning artifact associated with a product that has been shared with you.

# Arguments

## `AcceptLanguage = ::String`
The language code.

*   `en` - English (default)

*   `jp` - Japanese

*   `zh` - Chinese


## `ProductId = ::String` -- *Required*
The product identifier.


## `ProvisioningArtifactId = ::String` -- *Required*
The identifier of the provisioning artifact for the update request. This is sometimes referred to as the product version.


## `Name = ::String`
The updated name of the provisioning artifact.


## `Description = ::String`
The updated text description of the provisioning artifact.




# Returns

`UpdateProvisioningArtifactOutput`

# Exceptions

`ResourceNotFoundException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisioningArtifact)
"""

@inline update_provisioning_artifact(aws::AWSConfig=default_aws_config(); args...) = update_provisioning_artifact(aws, args)

@inline update_provisioning_artifact(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "UpdateProvisioningArtifact", args)

@inline update_provisioning_artifact(args) = update_provisioning_artifact(default_aws_config(), args)


"""
    using AWSSDK.ServiceCatalog.update_tag_option
    update_tag_option([::AWSConfig], arguments::Dict)
    update_tag_option([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.servicecatalog
    servicecatalog([::AWSConfig], "UpdateTagOption", arguments::Dict)
    servicecatalog([::AWSConfig], "UpdateTagOption", Id=, <keyword arguments>)

# UpdateTagOption Operation

Updates an existing TagOption.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the constraint to update.


## `Value = ::String`
The updated value.


## `Active = ::Bool`
The updated active state.




# Returns

`UpdateTagOptionOutput`

# Exceptions

`TagOptionNotMigratedException`, `ResourceNotFoundException`, `DuplicateResourceException` or `InvalidParametersException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateTagOption)
"""

@inline update_tag_option(aws::AWSConfig=default_aws_config(); args...) = update_tag_option(aws, args)

@inline update_tag_option(aws::AWSConfig, args) = AWSCore.Services.servicecatalog(aws, "UpdateTagOption", args)

@inline update_tag_option(args) = update_tag_option(default_aws_config(), args)




end # module ServiceCatalog


#==============================================================================#
# End of file
#==============================================================================#
