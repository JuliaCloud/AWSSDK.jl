#==============================================================================#
# MachineLearning.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/machinelearning-2014-12-12.normal.json
#==============================================================================#

__precompile__()

module MachineLearning

using AWSCore


"""
    using AWSSDK.MachineLearning.add_tags
    add_tags([::AWSConfig], arguments::Dict)
    add_tags([::AWSConfig]; Tags=, ResourceId=, ResourceType=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "AddTags", arguments::Dict)
    machinelearning([::AWSConfig], "AddTags", Tags=, ResourceId=, ResourceType=)

# AddTags Operation

Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key and an optional value. If you add a tag using a key that is already associated with the ML object, `AddTags` updates the tag's value.

# Arguments

## `Tags = [[ ... ], ...]` -- *Required*
The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `ResourceId = ::String` -- *Required*
The ID of the ML object to tag. For example, `exampleModelId`.


## `ResourceType = "BatchPrediction", "DataSource", "Evaluation" or "MLModel"` -- *Required*
The type of the ML object to tag.




# Returns

`AddTagsOutput`

# Exceptions

`InvalidInputException`, `InvalidTagException`, `TagLimitExceededException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/AddTags)
"""
@inline add_tags(aws::AWSConfig=default_aws_config(); args...) = add_tags(aws, args)

@inline add_tags(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "AddTags", args)

@inline add_tags(args) = add_tags(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.create_batch_prediction
    create_batch_prediction([::AWSConfig], arguments::Dict)
    create_batch_prediction([::AWSConfig]; BatchPredictionId=, MLModelId=, BatchPredictionDataSourceId=, OutputUri=, <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "CreateBatchPrediction", arguments::Dict)
    machinelearning([::AWSConfig], "CreateBatchPrediction", BatchPredictionId=, MLModelId=, BatchPredictionDataSourceId=, OutputUri=, <keyword arguments>)

# CreateBatchPrediction Operation

Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a `DataSource`. This operation creates a new `BatchPrediction`, and uses an `MLModel` and the data files referenced by the `DataSource` as information sources.

`CreateBatchPrediction` is an asynchronous operation. In response to `CreateBatchPrediction`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `BatchPrediction` status to `PENDING`. After the `BatchPrediction` completes, Amazon ML sets the status to `COMPLETED`.

You can poll for status updates by using the [GetBatchPrediction](@ref) operation and checking the `Status` parameter of the result. After the `COMPLETED` status appears, the results are available in the location specified by the `OutputUri` parameter.

# Arguments

## `BatchPredictionId = ::String` -- *Required*
A user-supplied ID that uniquely identifies the `BatchPrediction`.


## `BatchPredictionName = ::String`
A user-supplied name or description of the `BatchPrediction`. `BatchPredictionName` can only use the UTF-8 character set.


## `MLModelId = ::String` -- *Required*
The ID of the `MLModel` that will generate predictions for the group of observations.


## `BatchPredictionDataSourceId = ::String` -- *Required*
The ID of the `DataSource` that points to the group of observations to predict.


## `OutputUri = ::String` -- *Required*
The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the `s3 key` portion of the `outputURI` field: ':', '//', '/./', '/../'.

Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the [Amazon Machine Learning Developer Guide](http://docs.aws.amazon.com/machine-learning/latest/dg).




# Returns

`CreateBatchPredictionOutput`

# Exceptions

`InvalidInputException`, `InternalServerException` or `IdempotentParameterMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/CreateBatchPrediction)
"""
@inline create_batch_prediction(aws::AWSConfig=default_aws_config(); args...) = create_batch_prediction(aws, args)

@inline create_batch_prediction(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "CreateBatchPrediction", args)

@inline create_batch_prediction(args) = create_batch_prediction(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.create_data_source_from_rds
    create_data_source_from_rds([::AWSConfig], arguments::Dict)
    create_data_source_from_rds([::AWSConfig]; DataSourceId=, RDSData=, RoleARN=, <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "CreateDataSourceFromRDS", arguments::Dict)
    machinelearning([::AWSConfig], "CreateDataSourceFromRDS", DataSourceId=, RDSData=, RoleARN=, <keyword arguments>)

# CreateDataSourceFromRDS Operation

Creates a `DataSource` object from an [Amazon Relational Database Service](http://aws.amazon.com/rds/) (Amazon RDS). A `DataSource` references data that can be used to perform `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.

`CreateDataSourceFromRDS` is an asynchronous operation. In response to `CreateDataSourceFromRDS`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `DataSource` status to `PENDING`. After the `DataSource` is created and ready for use, Amazon ML sets the `Status` parameter to `COMPLETED`. `DataSource` in the `COMPLETED` or `PENDING` state can be used only to perform `>CreateMLModel`>, `CreateEvaluation`, or `CreateBatchPrediction` operations.

If Amazon ML cannot accept the input source, it sets the `Status` parameter to `FAILED` and includes an error message in the `Message` attribute of the `GetDataSource` operation response.

# Arguments

## `DataSourceId = ::String` -- *Required*
A user-supplied ID that uniquely identifies the `DataSource`. Typically, an Amazon Resource Number (ARN) becomes the ID for a `DataSource`.


## `DataSourceName = ::String`
A user-supplied name or description of the `DataSource`.


## `RDSData = [ ... ]` -- *Required*
The data specification of an Amazon RDS `DataSource`:

*   DatabaseInformation -

    *   `DatabaseName` - The name of the Amazon RDS database.
    *   `InstanceIdentifier` - A unique identifier for the Amazon RDS database instance.
*   DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.

*   ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon Simple Storage Service (Amazon S3). For more information, see [Role templates](http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html) for data pipelines.

*   ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see [Role templates](http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html) for data pipelines.

*   SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [`SubnetId`, `SecurityGroupIds`] pair for a VPC-based RDS DB instance.

*   SelectSqlQuery - A query that is used to retrieve the observation data for the `Datasource`.

*   S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using `SelectSqlQuery` is stored in this location.

*   DataSchemaUri - The Amazon S3 location of the `DataSchema`.

*   DataSchema - A JSON string representing the schema. This is not required if `DataSchemaUri` is specified.

*   DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the `Datasource`.

    Sample - `"{\\"splitting\\":{\\"percentBegin\\":10,\\"percentEnd\\":60}}"`
```
 RDSData = [
        "DatabaseInformation" => <required> [
            "InstanceIdentifier" => <required> ::String,
            "DatabaseName" => <required> ::String
        ],
        "SelectSqlQuery" => <required> ::String,
        "DatabaseCredentials" => <required> [
            "Username" => <required> ::String,
            "Password" => <required> ::String
        ],
        "S3StagingLocation" => <required> ::String,
        "DataRearrangement" =>  ::String,
        "DataSchema" =>  ::String,
        "DataSchemaUri" =>  ::String,
        "ResourceRole" => <required> ::String,
        "ServiceRole" => <required> ::String,
        "SubnetId" => <required> ::String,
        "SecurityGroupIds" => <required> [::String, ...]
    ]
```

## `RoleARN = ::String` -- *Required*
The role that Amazon ML assumes on behalf of the user to create and activate a data pipeline in the user's account and copy data using the `SelectSqlQuery` query from Amazon RDS to Amazon S3.


## `ComputeStatistics = ::Bool`
The compute statistics for a `DataSource`. The statistics are generated from the observation data referenced by a `DataSource`. Amazon ML uses the statistics internally during `MLModel` training. This parameter must be set to `true` if the DataSource needs to be used for `MLModel` training.




# Returns

`CreateDataSourceFromRDSOutput`

# Exceptions

`InvalidInputException`, `InternalServerException` or `IdempotentParameterMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/CreateDataSourceFromRDS)
"""
@inline create_data_source_from_rds(aws::AWSConfig=default_aws_config(); args...) = create_data_source_from_rds(aws, args)

@inline create_data_source_from_rds(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "CreateDataSourceFromRDS", args)

@inline create_data_source_from_rds(args) = create_data_source_from_rds(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.create_data_source_from_redshift
    create_data_source_from_redshift([::AWSConfig], arguments::Dict)
    create_data_source_from_redshift([::AWSConfig]; DataSourceId=, DataSpec=, RoleARN=, <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "CreateDataSourceFromRedshift", arguments::Dict)
    machinelearning([::AWSConfig], "CreateDataSourceFromRedshift", DataSourceId=, DataSpec=, RoleARN=, <keyword arguments>)

# CreateDataSourceFromRedshift Operation

Creates a `DataSource` from a database hosted on an Amazon Redshift cluster. A `DataSource` references data that can be used to perform either `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.

`CreateDataSourceFromRedshift` is an asynchronous operation. In response to `CreateDataSourceFromRedshift`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `DataSource` status to `PENDING`. After the `DataSource` is created and ready for use, Amazon ML sets the `Status` parameter to `COMPLETED`. `DataSource` in `COMPLETED` or `PENDING` states can be used to perform only `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.

If Amazon ML can't accept the input source, it sets the `Status` parameter to `FAILED` and includes an error message in the `Message` attribute of the `GetDataSource` operation response.

The observations should be contained in the database hosted on an Amazon Redshift cluster and should be specified by a `SelectSqlQuery` query. Amazon ML executes an `Unload` command in Amazon Redshift to transfer the result set of the `SelectSqlQuery` query to `S3StagingLocation`.

After the `DataSource` has been created, it's ready for use in evaluations and batch predictions. If you plan to use the `DataSource` to train an `MLModel`, the `DataSource` also requires a recipe. A recipe describes how each input variable will be used in training an `MLModel`. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.

You can't change an existing datasource, but you can copy and modify the settings from an existing Amazon Redshift datasource to create a new datasource. To do so, call `GetDataSource` for an existing datasource and copy the values to a `CreateDataSource` call. Change the settings that you want to change and make sure that all required fields have the appropriate values.

# Arguments

## `DataSourceId = ::String` -- *Required*
A user-supplied ID that uniquely identifies the `DataSource`.


## `DataSourceName = ::String`
A user-supplied name or description of the `DataSource`.


## `DataSpec = [ ... ]` -- *Required*
The data specification of an Amazon Redshift `DataSource`:

*   DatabaseInformation -

    *   `DatabaseName` - The name of the Amazon Redshift database.
    *   `ClusterIdentifier` - The unique ID for the Amazon Redshift cluster.
*   DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.

*   SelectSqlQuery - The query that is used to retrieve the observation data for the `Datasource`.

*   S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon Redshift data. The data retrieved from Amazon Redshift using the `SelectSqlQuery` query is stored in this location.

*   DataSchemaUri - The Amazon S3 location of the `DataSchema`.

*   DataSchema - A JSON string representing the schema. This is not required if `DataSchemaUri` is specified.

*   DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the `DataSource`.

    Sample - `"{\\"splitting\\":{\\"percentBegin\\":10,\\"percentEnd\\":60}}"`
```
 DataSpec = [
        "DatabaseInformation" => <required> [
            "DatabaseName" => <required> ::String,
            "ClusterIdentifier" => <required> ::String
        ],
        "SelectSqlQuery" => <required> ::String,
        "DatabaseCredentials" => <required> [
            "Username" => <required> ::String,
            "Password" => <required> ::String
        ],
        "S3StagingLocation" => <required> ::String,
        "DataRearrangement" =>  ::String,
        "DataSchema" =>  ::String,
        "DataSchemaUri" =>  ::String
    ]
```

## `RoleARN = ::String` -- *Required*
A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following:

*   A security group to allow Amazon ML to execute the `SelectSqlQuery` query on an Amazon Redshift cluster

*   An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the `S3StagingLocation`


## `ComputeStatistics = ::Bool`
The compute statistics for a `DataSource`. The statistics are generated from the observation data referenced by a `DataSource`. Amazon ML uses the statistics internally during `MLModel` training. This parameter must be set to `true` if the `DataSource` needs to be used for `MLModel` training.




# Returns

`CreateDataSourceFromRedshiftOutput`

# Exceptions

`InvalidInputException`, `InternalServerException` or `IdempotentParameterMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/CreateDataSourceFromRedshift)
"""
@inline create_data_source_from_redshift(aws::AWSConfig=default_aws_config(); args...) = create_data_source_from_redshift(aws, args)

@inline create_data_source_from_redshift(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "CreateDataSourceFromRedshift", args)

@inline create_data_source_from_redshift(args) = create_data_source_from_redshift(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.create_data_source_from_s3
    create_data_source_from_s3([::AWSConfig], arguments::Dict)
    create_data_source_from_s3([::AWSConfig]; DataSourceId=, DataSpec=, <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "CreateDataSourceFromS3", arguments::Dict)
    machinelearning([::AWSConfig], "CreateDataSourceFromS3", DataSourceId=, DataSpec=, <keyword arguments>)

# CreateDataSourceFromS3 Operation

Creates a `DataSource` object. A `DataSource` references data that can be used to perform `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.

`CreateDataSourceFromS3` is an asynchronous operation. In response to `CreateDataSourceFromS3`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `DataSource` status to `PENDING`. After the `DataSource` has been created and is ready for use, Amazon ML sets the `Status` parameter to `COMPLETED`. `DataSource` in the `COMPLETED` or `PENDING` state can be used to perform only `CreateMLModel`, `CreateEvaluation` or `CreateBatchPrediction` operations.

If Amazon ML can't accept the input source, it sets the `Status` parameter to `FAILED` and includes an error message in the `Message` attribute of the `GetDataSource` operation response.

The observation data used in a `DataSource` should be ready to use; that is, it should have a consistent structure, and missing data values should be kept to a minimum. The observation data must reside in one or more .csv files in an Amazon Simple Storage Service (Amazon S3) location, along with a schema that describes the data items by name and type. The same schema must be used for all of the data files referenced by the `DataSource`.

After the `DataSource` has been created, it's ready to use in evaluations and batch predictions. If you plan to use the `DataSource` to train an `MLModel`, the `DataSource` also needs a recipe. A recipe describes how each input variable will be used in training an `MLModel`. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.

# Arguments

## `DataSourceId = ::String` -- *Required*
A user-supplied identifier that uniquely identifies the `DataSource`.


## `DataSourceName = ::String`
A user-supplied name or description of the `DataSource`.


## `DataSpec = [ ... ]` -- *Required*
The data specification of a `DataSource`:

*   DataLocationS3 - The Amazon S3 location of the observation data.

*   DataSchemaLocationS3 - The Amazon S3 location of the `DataSchema`.

*   DataSchema - A JSON string representing the schema. This is not required if `DataSchemaUri` is specified.

*   DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the `Datasource`.

    Sample - `"{\\"splitting\\":{\\"percentBegin\\":10,\\"percentEnd\\":60}}"`
```
 DataSpec = [
        "DataLocationS3" => <required> ::String,
        "DataRearrangement" =>  ::String,
        "DataSchema" =>  ::String,
        "DataSchemaLocationS3" =>  ::String
    ]
```

## `ComputeStatistics = ::Bool`
The compute statistics for a `DataSource`. The statistics are generated from the observation data referenced by a `DataSource`. Amazon ML uses the statistics internally during `MLModel` training. This parameter must be set to `true` if the DataSource needs to be used for `MLModel` training.




# Returns

`CreateDataSourceFromS3Output`

# Exceptions

`InvalidInputException`, `InternalServerException` or `IdempotentParameterMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/CreateDataSourceFromS3)
"""
@inline create_data_source_from_s3(aws::AWSConfig=default_aws_config(); args...) = create_data_source_from_s3(aws, args)

@inline create_data_source_from_s3(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "CreateDataSourceFromS3", args)

@inline create_data_source_from_s3(args) = create_data_source_from_s3(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.create_evaluation
    create_evaluation([::AWSConfig], arguments::Dict)
    create_evaluation([::AWSConfig]; EvaluationId=, MLModelId=, EvaluationDataSourceId=, <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "CreateEvaluation", arguments::Dict)
    machinelearning([::AWSConfig], "CreateEvaluation", EvaluationId=, MLModelId=, EvaluationDataSourceId=, <keyword arguments>)

# CreateEvaluation Operation

Creates a new `Evaluation` of an `MLModel`. An `MLModel` is evaluated on a set of observations associated to a `DataSource`. Like a `DataSource` for an `MLModel`, the `DataSource` for an `Evaluation` contains values for the `Target Variable`. The `Evaluation` compares the predicted result for each observation to the actual outcome and provides a summary so that you know how effective the `MLModel` functions on the test data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding `MLModelType`: `BINARY`, `REGRESSION` or `MULTICLASS`.

`CreateEvaluation` is an asynchronous operation. In response to `CreateEvaluation`, Amazon Machine Learning (Amazon ML) immediately returns and sets the evaluation status to `PENDING`. After the `Evaluation` is created and ready for use, Amazon ML sets the status to `COMPLETED`.

You can use the `GetEvaluation` operation to check progress of the evaluation during the creation operation.

# Arguments

## `EvaluationId = ::String` -- *Required*
A user-supplied ID that uniquely identifies the `Evaluation`.


## `EvaluationName = ::String`
A user-supplied name or description of the `Evaluation`.


## `MLModelId = ::String` -- *Required*
The ID of the `MLModel` to evaluate.

The schema used in creating the `MLModel` must match the schema of the `DataSource` used in the `Evaluation`.


## `EvaluationDataSourceId = ::String` -- *Required*
The ID of the `DataSource` for the evaluation. The schema of the `DataSource` must match the schema used to create the `MLModel`.




# Returns

`CreateEvaluationOutput`

# Exceptions

`InvalidInputException`, `InternalServerException` or `IdempotentParameterMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/CreateEvaluation)
"""
@inline create_evaluation(aws::AWSConfig=default_aws_config(); args...) = create_evaluation(aws, args)

@inline create_evaluation(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "CreateEvaluation", args)

@inline create_evaluation(args) = create_evaluation(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.create_mlmodel
    create_mlmodel([::AWSConfig], arguments::Dict)
    create_mlmodel([::AWSConfig]; MLModelId=, MLModelType=, TrainingDataSourceId=, <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "CreateMLModel", arguments::Dict)
    machinelearning([::AWSConfig], "CreateMLModel", MLModelId=, MLModelType=, TrainingDataSourceId=, <keyword arguments>)

# CreateMLModel Operation

Creates a new `MLModel` using the `DataSource` and the recipe as information sources.

An `MLModel` is nearly immutable. Users can update only the `MLModelName` and the `ScoreThreshold` in an `MLModel` without creating a new `MLModel`.

`CreateMLModel` is an asynchronous operation. In response to `CreateMLModel`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `MLModel` status to `PENDING`. After the `MLModel` has been created and ready is for use, Amazon ML sets the status to `COMPLETED`.

You can use the `GetMLModel` operation to check the progress of the `MLModel` during the creation operation.

`CreateMLModel` requires a `DataSource` with computed statistics, which can be created by setting `ComputeStatistics` to `true` in `CreateDataSourceFromRDS`, `CreateDataSourceFromS3`, or `CreateDataSourceFromRedshift` operations.

# Arguments

## `MLModelId = ::String` -- *Required*
A user-supplied ID that uniquely identifies the `MLModel`.


## `MLModelName = ::String`
A user-supplied name or description of the `MLModel`.


## `MLModelType = "REGRESSION", "BINARY" or "MULTICLASS"` -- *Required*
The category of supervised learning that this `MLModel` will address. Choose from the following types:

*   Choose `REGRESSION` if the `MLModel` will be used to predict a numeric value.
*   Choose `BINARY` if the `MLModel` result has two possible values.
*   Choose `MULTICLASS` if the `MLModel` result has a limited number of values.

For more information, see the [Amazon Machine Learning Developer Guide](http://docs.aws.amazon.com/machine-learning/latest/dg).


## `Parameters = ::Dict{String,String}`
A list of the training parameters in the `MLModel`. The list is implemented as a map of key-value pairs.

The following is the current set of training parameters:

*   `sgd.maxMLModelSizeInBytes` - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.

    The value is an integer that ranges from `100000` to `2147483648`. The default value is `33554432`.

*   `sgd.maxPasses` - The number of times that the training process traverses the observations to build the `MLModel`. The value is an integer that ranges from `1` to `10000`. The default value is `10`.

*   `sgd.shuffleType` - Whether Amazon ML shuffles the training data. Shuffling the data improves a model's ability to find the optimal solution for a variety of data types. The valid values are `auto` and `none`. The default value is `none`. We strongly recommend that you shuffle your data.

*   `sgd.l1RegularizationAmount` - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as `1.0E-08`.

    The value is a double that ranges from `0` to `MAX_DOUBLE`. The default is to not use L1 normalization. This parameter can't be used when `L2` is specified. Use this parameter sparingly.

*   `sgd.l2RegularizationAmount` - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as `1.0E-08`.

    The value is a double that ranges from `0` to `MAX_DOUBLE`. The default is to not use L2 normalization. This parameter can't be used when `L1` is specified. Use this parameter sparingly.


## `TrainingDataSourceId = ::String` -- *Required*
The `DataSource` that points to the training data.


## `Recipe = ::String`
The data recipe for creating the `MLModel`. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.


## `RecipeUri = ::String`
The Amazon Simple Storage Service (Amazon S3) location and file name that contains the `MLModel` recipe. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.




# Returns

`CreateMLModelOutput`

# Exceptions

`InvalidInputException`, `InternalServerException` or `IdempotentParameterMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/CreateMLModel)
"""
@inline create_mlmodel(aws::AWSConfig=default_aws_config(); args...) = create_mlmodel(aws, args)

@inline create_mlmodel(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "CreateMLModel", args)

@inline create_mlmodel(args) = create_mlmodel(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.create_realtime_endpoint
    create_realtime_endpoint([::AWSConfig], arguments::Dict)
    create_realtime_endpoint([::AWSConfig]; MLModelId=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "CreateRealtimeEndpoint", arguments::Dict)
    machinelearning([::AWSConfig], "CreateRealtimeEndpoint", MLModelId=)

# CreateRealtimeEndpoint Operation

Creates a real-time endpoint for the `MLModel`. The endpoint contains the URI of the `MLModel`; that is, the location to send real-time prediction requests for the specified `MLModel`.

# Arguments

## `MLModelId = ::String` -- *Required*
The ID assigned to the `MLModel` during creation.




# Returns

`CreateRealtimeEndpointOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/CreateRealtimeEndpoint)
"""
@inline create_realtime_endpoint(aws::AWSConfig=default_aws_config(); args...) = create_realtime_endpoint(aws, args)

@inline create_realtime_endpoint(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "CreateRealtimeEndpoint", args)

@inline create_realtime_endpoint(args) = create_realtime_endpoint(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.delete_batch_prediction
    delete_batch_prediction([::AWSConfig], arguments::Dict)
    delete_batch_prediction([::AWSConfig]; BatchPredictionId=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DeleteBatchPrediction", arguments::Dict)
    machinelearning([::AWSConfig], "DeleteBatchPrediction", BatchPredictionId=)

# DeleteBatchPrediction Operation

Assigns the DELETED status to a `BatchPrediction`, rendering it unusable.

After using the `DeleteBatchPrediction` operation, you can use the [GetBatchPrediction](@ref) operation to verify that the status of the `BatchPrediction` changed to DELETED.

**Caution:** The result of the `DeleteBatchPrediction` operation is irreversible.

# Arguments

## `BatchPredictionId = ::String` -- *Required*
A user-supplied ID that uniquely identifies the `BatchPrediction`.




# Returns

`DeleteBatchPredictionOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DeleteBatchPrediction)
"""
@inline delete_batch_prediction(aws::AWSConfig=default_aws_config(); args...) = delete_batch_prediction(aws, args)

@inline delete_batch_prediction(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DeleteBatchPrediction", args)

@inline delete_batch_prediction(args) = delete_batch_prediction(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.delete_data_source
    delete_data_source([::AWSConfig], arguments::Dict)
    delete_data_source([::AWSConfig]; DataSourceId=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DeleteDataSource", arguments::Dict)
    machinelearning([::AWSConfig], "DeleteDataSource", DataSourceId=)

# DeleteDataSource Operation

Assigns the DELETED status to a `DataSource`, rendering it unusable.

After using the `DeleteDataSource` operation, you can use the [GetDataSource](@ref) operation to verify that the status of the `DataSource` changed to DELETED.

**Caution:** The results of the `DeleteDataSource` operation are irreversible.

# Arguments

## `DataSourceId = ::String` -- *Required*
A user-supplied ID that uniquely identifies the `DataSource`.




# Returns

`DeleteDataSourceOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DeleteDataSource)
"""
@inline delete_data_source(aws::AWSConfig=default_aws_config(); args...) = delete_data_source(aws, args)

@inline delete_data_source(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DeleteDataSource", args)

@inline delete_data_source(args) = delete_data_source(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.delete_evaluation
    delete_evaluation([::AWSConfig], arguments::Dict)
    delete_evaluation([::AWSConfig]; EvaluationId=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DeleteEvaluation", arguments::Dict)
    machinelearning([::AWSConfig], "DeleteEvaluation", EvaluationId=)

# DeleteEvaluation Operation

Assigns the `DELETED` status to an `Evaluation`, rendering it unusable.

After invoking the `DeleteEvaluation` operation, you can use the `GetEvaluation` operation to verify that the status of the `Evaluation` changed to `DELETED`.

<caution><title>Caution</title>

The results of the `DeleteEvaluation` operation are irreversible.</caution>

# Arguments

## `EvaluationId = ::String` -- *Required*
A user-supplied ID that uniquely identifies the `Evaluation` to delete.




# Returns

`DeleteEvaluationOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DeleteEvaluation)
"""
@inline delete_evaluation(aws::AWSConfig=default_aws_config(); args...) = delete_evaluation(aws, args)

@inline delete_evaluation(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DeleteEvaluation", args)

@inline delete_evaluation(args) = delete_evaluation(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.delete_mlmodel
    delete_mlmodel([::AWSConfig], arguments::Dict)
    delete_mlmodel([::AWSConfig]; MLModelId=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DeleteMLModel", arguments::Dict)
    machinelearning([::AWSConfig], "DeleteMLModel", MLModelId=)

# DeleteMLModel Operation

Assigns the `DELETED` status to an `MLModel`, rendering it unusable.

After using the `DeleteMLModel` operation, you can use the `GetMLModel` operation to verify that the status of the `MLModel` changed to DELETED.

**Caution:** The result of the `DeleteMLModel` operation is irreversible.

# Arguments

## `MLModelId = ::String` -- *Required*
A user-supplied ID that uniquely identifies the `MLModel`.




# Returns

`DeleteMLModelOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DeleteMLModel)
"""
@inline delete_mlmodel(aws::AWSConfig=default_aws_config(); args...) = delete_mlmodel(aws, args)

@inline delete_mlmodel(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DeleteMLModel", args)

@inline delete_mlmodel(args) = delete_mlmodel(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.delete_realtime_endpoint
    delete_realtime_endpoint([::AWSConfig], arguments::Dict)
    delete_realtime_endpoint([::AWSConfig]; MLModelId=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DeleteRealtimeEndpoint", arguments::Dict)
    machinelearning([::AWSConfig], "DeleteRealtimeEndpoint", MLModelId=)

# DeleteRealtimeEndpoint Operation

Deletes a real time endpoint of an `MLModel`.

# Arguments

## `MLModelId = ::String` -- *Required*
The ID assigned to the `MLModel` during creation.




# Returns

`DeleteRealtimeEndpointOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DeleteRealtimeEndpoint)
"""
@inline delete_realtime_endpoint(aws::AWSConfig=default_aws_config(); args...) = delete_realtime_endpoint(aws, args)

@inline delete_realtime_endpoint(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DeleteRealtimeEndpoint", args)

@inline delete_realtime_endpoint(args) = delete_realtime_endpoint(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.delete_tags
    delete_tags([::AWSConfig], arguments::Dict)
    delete_tags([::AWSConfig]; TagKeys=, ResourceId=, ResourceType=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DeleteTags", arguments::Dict)
    machinelearning([::AWSConfig], "DeleteTags", TagKeys=, ResourceId=, ResourceType=)

# DeleteTags Operation

Deletes the specified tags associated with an ML object. After this operation is complete, you can't recover deleted tags.

If you specify a tag that doesn't exist, Amazon ML ignores it.

# Arguments

## `TagKeys = [::String, ...]` -- *Required*
One or more tags to delete.


## `ResourceId = ::String` -- *Required*
The ID of the tagged ML object. For example, `exampleModelId`.


## `ResourceType = "BatchPrediction", "DataSource", "Evaluation" or "MLModel"` -- *Required*
The type of the tagged ML object.




# Returns

`DeleteTagsOutput`

# Exceptions

`InvalidInputException`, `InvalidTagException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DeleteTags)
"""
@inline delete_tags(aws::AWSConfig=default_aws_config(); args...) = delete_tags(aws, args)

@inline delete_tags(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DeleteTags", args)

@inline delete_tags(args) = delete_tags(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.describe_batch_predictions
    describe_batch_predictions([::AWSConfig], arguments::Dict)
    describe_batch_predictions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DescribeBatchPredictions", arguments::Dict)
    machinelearning([::AWSConfig], "DescribeBatchPredictions", <keyword arguments>)

# DescribeBatchPredictions Operation

Returns a list of `BatchPrediction` operations that match the search criteria in the request.

# Arguments

## `FilterVariable = "CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "MLModelId", "DataSourceId" or "DataURI"`
Use one of the following variables to filter a list of `BatchPrediction`:

*   `CreatedAt` - Sets the search criteria to the `BatchPrediction` creation date.
*   `Status` - Sets the search criteria to the `BatchPrediction` status.
*   `Name` - Sets the search criteria to the contents of the `BatchPrediction``Name`.
*   `IAMUser` - Sets the search criteria to the user account that invoked the `BatchPrediction` creation.
*   `MLModelId` - Sets the search criteria to the `MLModel` used in the `BatchPrediction`.
*   `DataSourceId` - Sets the search criteria to the `DataSource` used in the `BatchPrediction`.
*   `DataURI` - Sets the search criteria to the data file(s) used in the `BatchPrediction`. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.


## `EQ = ::String`
The equal to operator. The `BatchPrediction` results will have `FilterVariable` values that exactly match the value specified with `EQ`.


## `GT = ::String`
The greater than operator. The `BatchPrediction` results will have `FilterVariable` values that are greater than the value specified with `GT`.


## `LT = ::String`
The less than operator. The `BatchPrediction` results will have `FilterVariable` values that are less than the value specified with `LT`.


## `GE = ::String`
The greater than or equal to operator. The `BatchPrediction` results will have `FilterVariable` values that are greater than or equal to the value specified with `GE`.


## `LE = ::String`
The less than or equal to operator. The `BatchPrediction` results will have `FilterVariable` values that are less than or equal to the value specified with `LE`.


## `NE = ::String`
The not equal to operator. The `BatchPrediction` results will have `FilterVariable` values not equal to the value specified with `NE`.


## `Prefix = ::String`
A string that is found at the beginning of a variable, such as `Name` or `Id`.

For example, a `Batch Prediction` operation could have the `Name` `2014-09-09-HolidayGiftMailer`. To search for this `BatchPrediction`, select `Name` for the `FilterVariable` and any of the following strings for the `Prefix`:

*   2014-09

*   2014-09-09

*   2014-09-09-Holiday


## `SortOrder = "asc" or "dsc"`
A two-value parameter that determines the sequence of the resulting list of `MLModel`s.

*   `asc` - Arranges the list in ascending order (A-Z, 0-9).
*   `dsc` - Arranges the list in descending order (Z-A, 9-0).

Results are sorted by `FilterVariable`.


## `NextToken = ::String`
An ID of the page in the paginated results.


## `Limit = ::Int`
The number of pages of information to include in the result. The range of acceptable values is `1` through `100`. The default value is `100`.




# Returns

`DescribeBatchPredictionsOutput`

# Exceptions

`InvalidInputException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DescribeBatchPredictions)
"""
@inline describe_batch_predictions(aws::AWSConfig=default_aws_config(); args...) = describe_batch_predictions(aws, args)

@inline describe_batch_predictions(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DescribeBatchPredictions", args)

@inline describe_batch_predictions(args) = describe_batch_predictions(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.describe_data_sources
    describe_data_sources([::AWSConfig], arguments::Dict)
    describe_data_sources([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DescribeDataSources", arguments::Dict)
    machinelearning([::AWSConfig], "DescribeDataSources", <keyword arguments>)

# DescribeDataSources Operation

Returns a list of `DataSource` that match the search criteria in the request.

# Arguments

## `FilterVariable = "CreatedAt", "LastUpdatedAt", "Status", "Name", "DataLocationS3" or "IAMUser"`
Use one of the following variables to filter a list of `DataSource`:

*   `CreatedAt` - Sets the search criteria to `DataSource` creation dates.
*   `Status` - Sets the search criteria to `DataSource` statuses.
*   `Name` - Sets the search criteria to the contents of `DataSource` `Name`.
*   `DataUri` - Sets the search criteria to the URI of data files used to create the `DataSource`. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.
*   `IAMUser` - Sets the search criteria to the user account that invoked the `DataSource` creation.


## `EQ = ::String`
The equal to operator. The `DataSource` results will have `FilterVariable` values that exactly match the value specified with `EQ`.


## `GT = ::String`
The greater than operator. The `DataSource` results will have `FilterVariable` values that are greater than the value specified with `GT`.


## `LT = ::String`
The less than operator. The `DataSource` results will have `FilterVariable` values that are less than the value specified with `LT`.


## `GE = ::String`
The greater than or equal to operator. The `DataSource` results will have `FilterVariable` values that are greater than or equal to the value specified with `GE`.


## `LE = ::String`
The less than or equal to operator. The `DataSource` results will have `FilterVariable` values that are less than or equal to the value specified with `LE`.


## `NE = ::String`
The not equal to operator. The `DataSource` results will have `FilterVariable` values not equal to the value specified with `NE`.


## `Prefix = ::String`
A string that is found at the beginning of a variable, such as `Name` or `Id`.

For example, a `DataSource` could have the `Name` `2014-09-09-HolidayGiftMailer`. To search for this `DataSource`, select `Name` for the `FilterVariable` and any of the following strings for the `Prefix`:

*   2014-09

*   2014-09-09

*   2014-09-09-Holiday


## `SortOrder = "asc" or "dsc"`
A two-value parameter that determines the sequence of the resulting list of `DataSource`.

*   `asc` - Arranges the list in ascending order (A-Z, 0-9).
*   `dsc` - Arranges the list in descending order (Z-A, 9-0).

Results are sorted by `FilterVariable`.


## `NextToken = ::String`
The ID of the page in the paginated results.


## `Limit = ::Int`
The maximum number of `DataSource` to include in the result.




# Returns

`DescribeDataSourcesOutput`

# Exceptions

`InvalidInputException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DescribeDataSources)
"""
@inline describe_data_sources(aws::AWSConfig=default_aws_config(); args...) = describe_data_sources(aws, args)

@inline describe_data_sources(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DescribeDataSources", args)

@inline describe_data_sources(args) = describe_data_sources(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.describe_evaluations
    describe_evaluations([::AWSConfig], arguments::Dict)
    describe_evaluations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DescribeEvaluations", arguments::Dict)
    machinelearning([::AWSConfig], "DescribeEvaluations", <keyword arguments>)

# DescribeEvaluations Operation

Returns a list of `DescribeEvaluations` that match the search criteria in the request.

# Arguments

## `FilterVariable = "CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "MLModelId", "DataSourceId" or "DataURI"`
Use one of the following variable to filter a list of `Evaluation` objects:

*   `CreatedAt` - Sets the search criteria to the `Evaluation` creation date.
*   `Status` - Sets the search criteria to the `Evaluation` status.
*   `Name` - Sets the search criteria to the contents of `Evaluation` `Name`.
*   `IAMUser` - Sets the search criteria to the user account that invoked an `Evaluation`.
*   `MLModelId` - Sets the search criteria to the `MLModel` that was evaluated.
*   `DataSourceId` - Sets the search criteria to the `DataSource` used in `Evaluation`.
*   `DataUri` - Sets the search criteria to the data file(s) used in `Evaluation`. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.


## `EQ = ::String`
The equal to operator. The `Evaluation` results will have `FilterVariable` values that exactly match the value specified with `EQ`.


## `GT = ::String`
The greater than operator. The `Evaluation` results will have `FilterVariable` values that are greater than the value specified with `GT`.


## `LT = ::String`
The less than operator. The `Evaluation` results will have `FilterVariable` values that are less than the value specified with `LT`.


## `GE = ::String`
The greater than or equal to operator. The `Evaluation` results will have `FilterVariable` values that are greater than or equal to the value specified with `GE`.


## `LE = ::String`
The less than or equal to operator. The `Evaluation` results will have `FilterVariable` values that are less than or equal to the value specified with `LE`.


## `NE = ::String`
The not equal to operator. The `Evaluation` results will have `FilterVariable` values not equal to the value specified with `NE`.


## `Prefix = ::String`
A string that is found at the beginning of a variable, such as `Name` or `Id`.

For example, an `Evaluation` could have the `Name` `2014-09-09-HolidayGiftMailer`. To search for this `Evaluation`, select `Name` for the `FilterVariable` and any of the following strings for the `Prefix`:

*   2014-09

*   2014-09-09

*   2014-09-09-Holiday


## `SortOrder = "asc" or "dsc"`
A two-value parameter that determines the sequence of the resulting list of `Evaluation`.

*   `asc` - Arranges the list in ascending order (A-Z, 0-9).
*   `dsc` - Arranges the list in descending order (Z-A, 9-0).

Results are sorted by `FilterVariable`.


## `NextToken = ::String`
The ID of the page in the paginated results.


## `Limit = ::Int`
The maximum number of `Evaluation` to include in the result.




# Returns

`DescribeEvaluationsOutput`

# Exceptions

`InvalidInputException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DescribeEvaluations)
"""
@inline describe_evaluations(aws::AWSConfig=default_aws_config(); args...) = describe_evaluations(aws, args)

@inline describe_evaluations(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DescribeEvaluations", args)

@inline describe_evaluations(args) = describe_evaluations(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.describe_mlmodels
    describe_mlmodels([::AWSConfig], arguments::Dict)
    describe_mlmodels([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DescribeMLModels", arguments::Dict)
    machinelearning([::AWSConfig], "DescribeMLModels", <keyword arguments>)

# DescribeMLModels Operation

Returns a list of `MLModel` that match the search criteria in the request.

# Arguments

## `FilterVariable = "CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "TrainingDataSourceId", "RealtimeEndpointStatus", "MLModelType", "Algorithm" or "TrainingDataURI"`
Use one of the following variables to filter a list of `MLModel`:

*   `CreatedAt` - Sets the search criteria to `MLModel` creation date.
*   `Status` - Sets the search criteria to `MLModel` status.
*   `Name` - Sets the search criteria to the contents of `MLModel``Name`.
*   `IAMUser` - Sets the search criteria to the user account that invoked the `MLModel` creation.
*   `TrainingDataSourceId` - Sets the search criteria to the `DataSource` used to train one or more `MLModel`.
*   `RealtimeEndpointStatus` - Sets the search criteria to the `MLModel` real-time endpoint status.
*   `MLModelType` - Sets the search criteria to `MLModel` type: binary, regression, or multi-class.
*   `Algorithm` - Sets the search criteria to the algorithm that the `MLModel` uses.
*   `TrainingDataURI` - Sets the search criteria to the data file(s) used in training a `MLModel`. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.


## `EQ = ::String`
The equal to operator. The `MLModel` results will have `FilterVariable` values that exactly match the value specified with `EQ`.


## `GT = ::String`
The greater than operator. The `MLModel` results will have `FilterVariable` values that are greater than the value specified with `GT`.


## `LT = ::String`
The less than operator. The `MLModel` results will have `FilterVariable` values that are less than the value specified with `LT`.


## `GE = ::String`
The greater than or equal to operator. The `MLModel` results will have `FilterVariable` values that are greater than or equal to the value specified with `GE`.


## `LE = ::String`
The less than or equal to operator. The `MLModel` results will have `FilterVariable` values that are less than or equal to the value specified with `LE`.


## `NE = ::String`
The not equal to operator. The `MLModel` results will have `FilterVariable` values not equal to the value specified with `NE`.


## `Prefix = ::String`
A string that is found at the beginning of a variable, such as `Name` or `Id`.

For example, an `MLModel` could have the `Name` `2014-09-09-HolidayGiftMailer`. To search for this `MLModel`, select `Name` for the `FilterVariable` and any of the following strings for the `Prefix`:

*   2014-09

*   2014-09-09

*   2014-09-09-Holiday


## `SortOrder = "asc" or "dsc"`
A two-value parameter that determines the sequence of the resulting list of `MLModel`.

*   `asc` - Arranges the list in ascending order (A-Z, 0-9).
*   `dsc` - Arranges the list in descending order (Z-A, 9-0).

Results are sorted by `FilterVariable`.


## `NextToken = ::String`
The ID of the page in the paginated results.


## `Limit = ::Int`
The number of pages of information to include in the result. The range of acceptable values is `1` through `100`. The default value is `100`.




# Returns

`DescribeMLModelsOutput`

# Exceptions

`InvalidInputException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DescribeMLModels)
"""
@inline describe_mlmodels(aws::AWSConfig=default_aws_config(); args...) = describe_mlmodels(aws, args)

@inline describe_mlmodels(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DescribeMLModels", args)

@inline describe_mlmodels(args) = describe_mlmodels(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; ResourceId=, ResourceType=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "DescribeTags", arguments::Dict)
    machinelearning([::AWSConfig], "DescribeTags", ResourceId=, ResourceType=)

# DescribeTags Operation

Describes one or more of the tags for your Amazon ML object.

# Arguments

## `ResourceId = ::String` -- *Required*
The ID of the ML object. For example, `exampleModelId`.


## `ResourceType = "BatchPrediction", "DataSource", "Evaluation" or "MLModel"` -- *Required*
The type of the ML object.




# Returns

`DescribeTagsOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/DescribeTags)
"""
@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "DescribeTags", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.get_batch_prediction
    get_batch_prediction([::AWSConfig], arguments::Dict)
    get_batch_prediction([::AWSConfig]; BatchPredictionId=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "GetBatchPrediction", arguments::Dict)
    machinelearning([::AWSConfig], "GetBatchPrediction", BatchPredictionId=)

# GetBatchPrediction Operation

Returns a `BatchPrediction` that includes detailed metadata, status, and data file information for a `Batch Prediction` request.

# Arguments

## `BatchPredictionId = ::String` -- *Required*
An ID assigned to the `BatchPrediction` at creation.




# Returns

`GetBatchPredictionOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/GetBatchPrediction)
"""
@inline get_batch_prediction(aws::AWSConfig=default_aws_config(); args...) = get_batch_prediction(aws, args)

@inline get_batch_prediction(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "GetBatchPrediction", args)

@inline get_batch_prediction(args) = get_batch_prediction(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.get_data_source
    get_data_source([::AWSConfig], arguments::Dict)
    get_data_source([::AWSConfig]; DataSourceId=, <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "GetDataSource", arguments::Dict)
    machinelearning([::AWSConfig], "GetDataSource", DataSourceId=, <keyword arguments>)

# GetDataSource Operation

Returns a `DataSource` that includes metadata and data file information, as well as the current status of the `DataSource`.

`GetDataSource` provides results in normal or verbose format. The verbose format adds the schema description and the list of files pointed to by the DataSource to the normal format.

# Arguments

## `DataSourceId = ::String` -- *Required*
The ID assigned to the `DataSource` at creation.


## `Verbose = ::Bool`
Specifies whether the `GetDataSource` operation should return `DataSourceSchema`.

If true, `DataSourceSchema` is returned.

If false, `DataSourceSchema` is not returned.




# Returns

`GetDataSourceOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/GetDataSource)
"""
@inline get_data_source(aws::AWSConfig=default_aws_config(); args...) = get_data_source(aws, args)

@inline get_data_source(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "GetDataSource", args)

@inline get_data_source(args) = get_data_source(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.get_evaluation
    get_evaluation([::AWSConfig], arguments::Dict)
    get_evaluation([::AWSConfig]; EvaluationId=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "GetEvaluation", arguments::Dict)
    machinelearning([::AWSConfig], "GetEvaluation", EvaluationId=)

# GetEvaluation Operation

Returns an `Evaluation` that includes metadata as well as the current status of the `Evaluation`.

# Arguments

## `EvaluationId = ::String` -- *Required*
The ID of the `Evaluation` to retrieve. The evaluation of each `MLModel` is recorded and cataloged. The ID provides the means to access the information.




# Returns

`GetEvaluationOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/GetEvaluation)
"""
@inline get_evaluation(aws::AWSConfig=default_aws_config(); args...) = get_evaluation(aws, args)

@inline get_evaluation(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "GetEvaluation", args)

@inline get_evaluation(args) = get_evaluation(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.get_mlmodel
    get_mlmodel([::AWSConfig], arguments::Dict)
    get_mlmodel([::AWSConfig]; MLModelId=, <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "GetMLModel", arguments::Dict)
    machinelearning([::AWSConfig], "GetMLModel", MLModelId=, <keyword arguments>)

# GetMLModel Operation

Returns an `MLModel` that includes detailed metadata, data source information, and the current status of the `MLModel`.

`GetMLModel` provides results in normal or verbose format.

# Arguments

## `MLModelId = ::String` -- *Required*
The ID assigned to the `MLModel` at creation.


## `Verbose = ::Bool`
Specifies whether the `GetMLModel` operation should return `Recipe`.

If true, `Recipe` is returned.

If false, `Recipe` is not returned.




# Returns

`GetMLModelOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/GetMLModel)
"""
@inline get_mlmodel(aws::AWSConfig=default_aws_config(); args...) = get_mlmodel(aws, args)

@inline get_mlmodel(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "GetMLModel", args)

@inline get_mlmodel(args) = get_mlmodel(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.predict
    predict([::AWSConfig], arguments::Dict)
    predict([::AWSConfig]; MLModelId=, Record=, PredictEndpoint=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "Predict", arguments::Dict)
    machinelearning([::AWSConfig], "Predict", MLModelId=, Record=, PredictEndpoint=)

# Predict Operation

Generates a prediction for the observation using the specified `ML Model`.

**Note**
> <title>Note</title>

Not all response parameters will be populated. Whether a response parameter is populated depends on the type of model requested.

# Arguments

## `MLModelId = ::String` -- *Required*
A unique identifier of the `MLModel`.


## `Record = ::Dict{String,String}` -- *Required*



## `PredictEndpoint = ::String` -- *Required*





# Returns

`PredictOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException`, `LimitExceededException`, `InternalServerException` or `PredictorNotMountedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/Predict)
"""
@inline predict(aws::AWSConfig=default_aws_config(); args...) = predict(aws, args)

@inline predict(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "Predict", args)

@inline predict(args) = predict(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.update_batch_prediction
    update_batch_prediction([::AWSConfig], arguments::Dict)
    update_batch_prediction([::AWSConfig]; BatchPredictionId=, BatchPredictionName=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "UpdateBatchPrediction", arguments::Dict)
    machinelearning([::AWSConfig], "UpdateBatchPrediction", BatchPredictionId=, BatchPredictionName=)

# UpdateBatchPrediction Operation

Updates the `BatchPredictionName` of a `BatchPrediction`.

You can use the `GetBatchPrediction` operation to view the contents of the updated data element.

# Arguments

## `BatchPredictionId = ::String` -- *Required*
The ID assigned to the `BatchPrediction` during creation.


## `BatchPredictionName = ::String` -- *Required*
A new user-supplied name or description of the `BatchPrediction`.




# Returns

`UpdateBatchPredictionOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/UpdateBatchPrediction)
"""
@inline update_batch_prediction(aws::AWSConfig=default_aws_config(); args...) = update_batch_prediction(aws, args)

@inline update_batch_prediction(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "UpdateBatchPrediction", args)

@inline update_batch_prediction(args) = update_batch_prediction(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.update_data_source
    update_data_source([::AWSConfig], arguments::Dict)
    update_data_source([::AWSConfig]; DataSourceId=, DataSourceName=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "UpdateDataSource", arguments::Dict)
    machinelearning([::AWSConfig], "UpdateDataSource", DataSourceId=, DataSourceName=)

# UpdateDataSource Operation

Updates the `DataSourceName` of a `DataSource`.

You can use the `GetDataSource` operation to view the contents of the updated data element.

# Arguments

## `DataSourceId = ::String` -- *Required*
The ID assigned to the `DataSource` during creation.


## `DataSourceName = ::String` -- *Required*
A new user-supplied name or description of the `DataSource` that will replace the current description.




# Returns

`UpdateDataSourceOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/UpdateDataSource)
"""
@inline update_data_source(aws::AWSConfig=default_aws_config(); args...) = update_data_source(aws, args)

@inline update_data_source(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "UpdateDataSource", args)

@inline update_data_source(args) = update_data_source(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.update_evaluation
    update_evaluation([::AWSConfig], arguments::Dict)
    update_evaluation([::AWSConfig]; EvaluationId=, EvaluationName=)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "UpdateEvaluation", arguments::Dict)
    machinelearning([::AWSConfig], "UpdateEvaluation", EvaluationId=, EvaluationName=)

# UpdateEvaluation Operation

Updates the `EvaluationName` of an `Evaluation`.

You can use the `GetEvaluation` operation to view the contents of the updated data element.

# Arguments

## `EvaluationId = ::String` -- *Required*
The ID assigned to the `Evaluation` during creation.


## `EvaluationName = ::String` -- *Required*
A new user-supplied name or description of the `Evaluation` that will replace the current content.




# Returns

`UpdateEvaluationOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/UpdateEvaluation)
"""
@inline update_evaluation(aws::AWSConfig=default_aws_config(); args...) = update_evaluation(aws, args)

@inline update_evaluation(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "UpdateEvaluation", args)

@inline update_evaluation(args) = update_evaluation(default_aws_config(), args)


"""
    using AWSSDK.MachineLearning.update_mlmodel
    update_mlmodel([::AWSConfig], arguments::Dict)
    update_mlmodel([::AWSConfig]; MLModelId=, <keyword arguments>)

    using AWSCore.Services.machinelearning
    machinelearning([::AWSConfig], "UpdateMLModel", arguments::Dict)
    machinelearning([::AWSConfig], "UpdateMLModel", MLModelId=, <keyword arguments>)

# UpdateMLModel Operation

Updates the `MLModelName` and the `ScoreThreshold` of an `MLModel`.

You can use the `GetMLModel` operation to view the contents of the updated data element.

# Arguments

## `MLModelId = ::String` -- *Required*
The ID assigned to the `MLModel` during creation.


## `MLModelName = ::String`
A user-supplied name or description of the `MLModel`.


## `ScoreThreshold = float`
The `ScoreThreshold` used in binary classification `MLModel` that marks the boundary between a positive prediction and a negative prediction.

Output values greater than or equal to the `ScoreThreshold` receive a positive result from the `MLModel`, such as `true`. Output values less than the `ScoreThreshold` receive a negative response from the `MLModel`, such as `false`.




# Returns

`UpdateMLModelOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12/UpdateMLModel)
"""
@inline update_mlmodel(aws::AWSConfig=default_aws_config(); args...) = update_mlmodel(aws, args)

@inline update_mlmodel(aws::AWSConfig, args) = AWSCore.Services.machinelearning(aws, "UpdateMLModel", args)

@inline update_mlmodel(args) = update_mlmodel(default_aws_config(), args)




end # module MachineLearning


#==============================================================================#
# End of file
#==============================================================================#
