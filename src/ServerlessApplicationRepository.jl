#==============================================================================#
# ServerlessApplicationRepository.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/serverlessrepo-2017-09-08.normal.json
#==============================================================================#

__precompile__()

module ServerlessApplicationRepository

using AWSCore


"""
    using AWSSDK.ServerlessApplicationRepository.create_application
    create_application([::AWSConfig], arguments::Dict)
    create_application([::AWSConfig]; author=, description=, name=, <keyword arguments>)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "POST", "/applications", arguments::Dict)
    serverlessrepo([::AWSConfig], "POST", "/applications", author=, description=, name=, <keyword arguments>)

# CreateApplication Operation

Creates an application, optionally including an AWS SAM file to create the first application version in the same call.

# Arguments

## `author = ::String` -- *Required*
The name of the author publishing the app.

Minimum length=1. Maximum length=127.

Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?\$";


## `description = ::String` -- *Required*
The description of the application.

Minimum length=1. Maximum length=256


## `homePageUrl = ::String`
A URL with more information about the application, for example the location of your GitHub repository for the application.


## `labels = [::String, ...]`
Labels to improve discovery of apps in search results.

Minimum length=1. Maximum length=127. Maximum number of labels: 10

Pattern: "^[a-zA-Z0-9+\\\\-_:\\\\/@]+\$";


## `licenseBody = ::String`
A local text file that contains the license of the app that matches the spdxLicenseID value of your application. The file is of the format file://<path>/<filename>.

Maximum size 5 MB

Note: Only one of licenseBody and licenseUrl can be specified, otherwise an error will result.


## `licenseUrl = ::String`
A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.

Maximum size 5 MB

Note: Only one of licenseBody and licenseUrl can be specified, otherwise an error will result.


## `name = ::String` -- *Required*
The name of the application that you want to publish.

Minimum length=1. Maximum length=140

Pattern: "[a-zA-Z0-9\\\\-]+";


## `readmeBody = ::String`
A local text readme file in Markdown language that contains a more detailed description of the application and how it works. The file is of the format file://<path>/<filename>.

Maximum size 5 MB

Note: Only one of readmeBody and readmeUrl can be specified, otherwise an error will result.


## `readmeUrl = ::String`
A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.

Maximum size 5 MB

Note: Only one of readmeBody and readmeUrl can be specified, otherwise an error will result.


## `semanticVersion = ::String`
The semantic version of the application:

[https://semver.org/](https://semver.org/)


## `sourceCodeUrl = ::String`
A link to a public repository for the source code of your application.


## `spdxLicenseId = ::String`
A valid identifier from [https://spdx.org/licenses/](https://spdx.org/licenses/).


## `templateBody = ::String`
The local raw packaged AWS SAM template file of your application. The file is of the format file://<path>/<filename>.

Note: Only one of templateBody and templateUrl can be specified, otherwise an error will result.


## `templateUrl = ::String`
A link to the S3 object cotaining the packaged AWS SAM template of your application.

Note: Only one of templateBody and templateUrl can be specified, otherwise an error will result.




# Returns

`CreateApplicationResponse`

# Exceptions

`TooManyRequestsException`, `BadRequestException`, `InternalServerErrorException`, `ConflictException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplication)
"""
@inline create_application(aws::AWSConfig=default_aws_config(); args...) = create_application(aws, args)

@inline create_application(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "POST", "/applications", args)

@inline create_application(args) = create_application(default_aws_config(), args)


"""
    using AWSSDK.ServerlessApplicationRepository.create_application_version
    create_application_version([::AWSConfig], arguments::Dict)
    create_application_version([::AWSConfig]; applicationId=, semanticVersion=, <keyword arguments>)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "PUT", "/applications/{applicationId}/versions/{semanticVersion}", arguments::Dict)
    serverlessrepo([::AWSConfig], "PUT", "/applications/{applicationId}/versions/{semanticVersion}", applicationId=, semanticVersion=, <keyword arguments>)

# CreateApplicationVersion Operation

Creates an application version.

# Arguments

## `applicationId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the application.


## `semanticVersion = ::String` -- *Required*
The semantic version of the new version.


## `sourceCodeUrl = ::String`
A link to a public repository for the source code of your application.


## `templateBody = ::String`
The raw packaged AWS SAM template of your application.


## `templateUrl = ::String`
A link to the packaged AWS SAM template of your application.




# Returns

`CreateApplicationVersionResponse`

# Exceptions

`TooManyRequestsException`, `BadRequestException`, `InternalServerErrorException`, `ConflictException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplicationVersion)
"""
@inline create_application_version(aws::AWSConfig=default_aws_config(); args...) = create_application_version(aws, args)

@inline create_application_version(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "PUT", "/applications/{applicationId}/versions/{semanticVersion}", args)

@inline create_application_version(args) = create_application_version(default_aws_config(), args)


"""
    using AWSSDK.ServerlessApplicationRepository.create_cloud_formation_change_set
    create_cloud_formation_change_set([::AWSConfig], arguments::Dict)
    create_cloud_formation_change_set([::AWSConfig]; applicationId=, stackName=, <keyword arguments>)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "POST", "/applications/{applicationId}/changesets", arguments::Dict)
    serverlessrepo([::AWSConfig], "POST", "/applications/{applicationId}/changesets", applicationId=, stackName=, <keyword arguments>)

# CreateCloudFormationChangeSet Operation

Creates an AWS CloudFormation change set for the given application.

# Arguments

## `applicationId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the application.


## `parameterOverrides = [[ ... ], ...]`
A list of parameter values for the parameters of the application.
```
 parameterOverrides = [[
        "name" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```

## `semanticVersion = ::String`
The semantic version of the application:

[https://semver.org/](https://semver.org/)


## `stackName = ::String` -- *Required*
The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.

Constraints: Minimum length of 1.

Pattern: ([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)




# Returns

`CreateCloudFormationChangeSetResponse`

# Exceptions

`TooManyRequestsException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationChangeSet)
"""
@inline create_cloud_formation_change_set(aws::AWSConfig=default_aws_config(); args...) = create_cloud_formation_change_set(aws, args)

@inline create_cloud_formation_change_set(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "POST", "/applications/{applicationId}/changesets", args)

@inline create_cloud_formation_change_set(args) = create_cloud_formation_change_set(default_aws_config(), args)


"""
    using AWSSDK.ServerlessApplicationRepository.delete_application
    delete_application([::AWSConfig], arguments::Dict)
    delete_application([::AWSConfig]; applicationId=)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "DELETE", "/applications/{applicationId}", arguments::Dict)
    serverlessrepo([::AWSConfig], "DELETE", "/applications/{applicationId}", applicationId=)

# DeleteApplication Operation

Deletes the specified application.

# Arguments

## `applicationId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the application.




# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/DeleteApplication)
"""
@inline delete_application(aws::AWSConfig=default_aws_config(); args...) = delete_application(aws, args)

@inline delete_application(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "DELETE", "/applications/{applicationId}", args)

@inline delete_application(args) = delete_application(default_aws_config(), args)


"""
    using AWSSDK.ServerlessApplicationRepository.get_application
    get_application([::AWSConfig], arguments::Dict)
    get_application([::AWSConfig]; applicationId=, <keyword arguments>)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "GET", "/applications/{applicationId}", arguments::Dict)
    serverlessrepo([::AWSConfig], "GET", "/applications/{applicationId}", applicationId=, <keyword arguments>)

# GetApplication Operation

Gets the specified application.

# Arguments

## `applicationId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the application.


## `semanticVersion = ::String`
The semantic version of the application to get.




# Returns

`GetApplicationResponse`

# Exceptions

`NotFoundException`, `TooManyRequestsException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetApplication)
"""
@inline get_application(aws::AWSConfig=default_aws_config(); args...) = get_application(aws, args)

@inline get_application(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "GET", "/applications/{applicationId}", args)

@inline get_application(args) = get_application(default_aws_config(), args)


"""
    using AWSSDK.ServerlessApplicationRepository.get_application_policy
    get_application_policy([::AWSConfig], arguments::Dict)
    get_application_policy([::AWSConfig]; applicationId=)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "GET", "/applications/{applicationId}/policy", arguments::Dict)
    serverlessrepo([::AWSConfig], "GET", "/applications/{applicationId}/policy", applicationId=)

# GetApplicationPolicy Operation

Retrieves the policy for the application.

# Arguments

## `applicationId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the application.




# Returns

`GetApplicationPolicyResponse`

# Exceptions

`NotFoundException`, `TooManyRequestsException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetApplicationPolicy)
"""
@inline get_application_policy(aws::AWSConfig=default_aws_config(); args...) = get_application_policy(aws, args)

@inline get_application_policy(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "GET", "/applications/{applicationId}/policy", args)

@inline get_application_policy(args) = get_application_policy(default_aws_config(), args)


"""
    using AWSSDK.ServerlessApplicationRepository.list_application_versions
    list_application_versions([::AWSConfig], arguments::Dict)
    list_application_versions([::AWSConfig]; applicationId=, <keyword arguments>)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "GET", "/applications/{applicationId}/versions", arguments::Dict)
    serverlessrepo([::AWSConfig], "GET", "/applications/{applicationId}/versions", applicationId=, <keyword arguments>)

# ListApplicationVersions Operation

Lists versions for the specified application.

# Arguments

## `applicationId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the application.


## `maxItems = ::Int`
The total number of items to return.


## `nextToken = ::String`
A token to specify where to start paginating.




# Returns

`ListApplicationVersionsResponse`

# Exceptions

`NotFoundException`, `TooManyRequestsException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplicationVersions)
"""
@inline list_application_versions(aws::AWSConfig=default_aws_config(); args...) = list_application_versions(aws, args)

@inline list_application_versions(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "GET", "/applications/{applicationId}/versions", args)

@inline list_application_versions(args) = list_application_versions(default_aws_config(), args)


"""
    using AWSSDK.ServerlessApplicationRepository.list_applications
    list_applications([::AWSConfig], arguments::Dict)
    list_applications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "GET", "/applications", arguments::Dict)
    serverlessrepo([::AWSConfig], "GET", "/applications", <keyword arguments>)

# ListApplications Operation

Lists applications owned by the requester.

# Arguments

## `maxItems = ::Int`
The total number of items to return.


## `nextToken = ::String`
A token to specify where to start paginating.




# Returns

`ListApplicationsResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplications)
"""
@inline list_applications(aws::AWSConfig=default_aws_config(); args...) = list_applications(aws, args)

@inline list_applications(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "GET", "/applications", args)

@inline list_applications(args) = list_applications(default_aws_config(), args)


"""
    using AWSSDK.ServerlessApplicationRepository.put_application_policy
    put_application_policy([::AWSConfig], arguments::Dict)
    put_application_policy([::AWSConfig]; applicationId=, statements=)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "PUT", "/applications/{applicationId}/policy", arguments::Dict)
    serverlessrepo([::AWSConfig], "PUT", "/applications/{applicationId}/policy", applicationId=, statements=)

# PutApplicationPolicy Operation

Sets the permission policy for an application. See [Application Permissions](https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions) for the list of supported actions that can be used with this operation.

# Arguments

## `applicationId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the application.


## `statements = [[ ... ], ...]` -- *Required*
An array of policy statements applied to the application.
```
 statements = [[
        "actions" => <required> [::String, ...],
        "principals" => <required> [::String, ...],
        "statementId" =>  ::String
    ], ...]
```



# Returns

`PutApplicationPolicyResponse`

# Exceptions

`NotFoundException`, `TooManyRequestsException`, `BadRequestException`, `InternalServerErrorException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/PutApplicationPolicy)
"""
@inline put_application_policy(aws::AWSConfig=default_aws_config(); args...) = put_application_policy(aws, args)

@inline put_application_policy(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "PUT", "/applications/{applicationId}/policy", args)

@inline put_application_policy(args) = put_application_policy(default_aws_config(), args)


"""
    using AWSSDK.ServerlessApplicationRepository.update_application
    update_application([::AWSConfig], arguments::Dict)
    update_application([::AWSConfig]; applicationId=, <keyword arguments>)

    using AWSCore.Services.serverlessrepo
    serverlessrepo([::AWSConfig], "PATCH", "/applications/{applicationId}", arguments::Dict)
    serverlessrepo([::AWSConfig], "PATCH", "/applications/{applicationId}", applicationId=, <keyword arguments>)

# UpdateApplication Operation

Updates the specified application.

# Arguments

## `applicationId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the application.


## `author = ::String`
The name of the author publishing the app.

Minimum length=1. Maximum length=127.

Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?\$";


## `description = ::String`
The description of the application.

Minimum length=1. Maximum length=256


## `homePageUrl = ::String`
A URL with more information about the application, for example the location of your GitHub repository for the application.


## `labels = [::String, ...]`
Labels to improve discovery of apps in search results.

Minimum length=1. Maximum length=127. Maximum number of labels: 10

Pattern: "^[a-zA-Z0-9+\\\\-_:\\\\/@]+\$";


## `readmeBody = ::String`
A text readme file in Markdown language that contains a more detailed description of the application and how it works.

Maximum size 5 MB


## `readmeUrl = ::String`
A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.

Maximum size 5 MB




# Returns

`UpdateApplicationResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/UpdateApplication)
"""
@inline update_application(aws::AWSConfig=default_aws_config(); args...) = update_application(aws, args)

@inline update_application(aws::AWSConfig, args) = AWSCore.Services.serverlessrepo(aws, "PATCH", "/applications/{applicationId}", args)

@inline update_application(args) = update_application(default_aws_config(), args)




end # module ServerlessApplicationRepository


#==============================================================================#
# End of file
#==============================================================================#
