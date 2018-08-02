#==============================================================================#
# SageMaker.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/sagemaker-2017-07-24.normal.json
#==============================================================================#

__precompile__()

module SageMaker

using AWSCore


"""
    using AWSSDK.SageMaker.add_tags
    add_tags([::AWSConfig], arguments::Dict)
    add_tags([::AWSConfig]; ResourceArn=, Tags=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "AddTags", arguments::Dict)
    sagemaker([::AWSConfig], "AddTags", ResourceArn=, Tags=)

# AddTags Operation

Adds or overwrites one or more tags for the specified Amazon SageMaker resource. You can add tags to notebook instances, training jobs, models, endpoint configurations, and endpoints.

Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource that you want to tag.


## `Tags = [[ ... ], ...]` -- *Required*
An array of `Tag` objects. Each tag is a key-value pair. Only the `key` parameter is required. If you don't specify a value, Amazon SageMaker sets the value to an empty string.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`AddTagsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AddTags)
"""
@inline add_tags(aws::AWSConfig=default_aws_config(); args...) = add_tags(aws, args)

@inline add_tags(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "AddTags", args)

@inline add_tags(args) = add_tags(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.create_endpoint
    create_endpoint([::AWSConfig], arguments::Dict)
    create_endpoint([::AWSConfig]; EndpointName=, EndpointConfigName=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "CreateEndpoint", arguments::Dict)
    sagemaker([::AWSConfig], "CreateEndpoint", EndpointName=, EndpointConfigName=, <keyword arguments>)

# CreateEndpoint Operation

Creates an endpoint using the endpoint configuration specified in the request. Amazon SageMaker uses the endpoint to provision resources and deploy models. You create the endpoint configuration with the [CreateEndpointConfig](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html) API.

**Note**
> Use this API only for hosting models using Amazon SageMaker hosting services.

The endpoint name must be unique within an AWS Region in your AWS account.

When it receives the request, Amazon SageMaker creates the endpoint, launches the resources (ML compute instances), and deploys the model(s) on them.

When Amazon SageMaker receives the request, it sets the endpoint status to `Creating`. After it creates the endpoint, it sets the status to `InService`. Amazon SageMaker can then process incoming requests for inferences. To check the status of an endpoint, use the [DescribeEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html) API.

For an example, see [Exercise 1: Using the K-Means Algorithm Provided by Amazon SageMaker](http://docs.aws.amazon.com/sagemaker/latest/dg/ex1.html).

If any of the models hosted at this endpoint get model data from an Amazon S3 location, Amazon SageMaker uses AWS Security Token Service to download model artifacts from the S3 path you provided. AWS STS is activated in your IAM user account by default. If you previously deactivated AWS STS for a region, you need to reactivate AWS STS for that region. For more information, see [Activating and Deactivating AWS STS i an AWS Region](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html) in the *AWS Identity and Access Management User Guide*.

# Arguments

## `EndpointName = ::String` -- *Required*
The name of the endpoint. The name must be unique within an AWS Region in your AWS account.


## `EndpointConfigName = ::String` -- *Required*
The name of an endpoint configuration. For more information, see [CreateEndpointConfig](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html).


## `Tags = [[ ... ], ...]`
An array of key-value pairs. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)in the *AWS Billing and Cost Management User Guide*.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`CreateEndpointOutput`

# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpoint)
"""
@inline create_endpoint(aws::AWSConfig=default_aws_config(); args...) = create_endpoint(aws, args)

@inline create_endpoint(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "CreateEndpoint", args)

@inline create_endpoint(args) = create_endpoint(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.create_endpoint_config
    create_endpoint_config([::AWSConfig], arguments::Dict)
    create_endpoint_config([::AWSConfig]; EndpointConfigName=, ProductionVariants=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "CreateEndpointConfig", arguments::Dict)
    sagemaker([::AWSConfig], "CreateEndpointConfig", EndpointConfigName=, ProductionVariants=, <keyword arguments>)

# CreateEndpointConfig Operation

Creates an endpoint configuration that Amazon SageMaker hosting services uses to deploy models. In the configuration, you identify one or more models, created using the `CreateModel` API, to deploy and the resources that you want Amazon SageMaker to provision. Then you call the [CreateEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html) API.

**Note**
> Use this API only if you want to use Amazon SageMaker hosting services to deploy models into production.

In the request, you define one or more `ProductionVariant`s, each of which identifies a model. Each `ProductionVariant` parameter also describes the resources that you want Amazon SageMaker to provision. This includes the number and type of ML compute instances to deploy.

If you are hosting multiple models, you also assign a `VariantWeight` to specify how much traffic you want to allocate to each model. For example, suppose that you want to host two models, A and B, and you assign traffic weight 2 for model A and 1 for model B. Amazon SageMaker distributes two-thirds of the traffic to Model A, and one-third to model B.

# Arguments

## `EndpointConfigName = ::String` -- *Required*
The name of the endpoint configuration. You specify this name in a [CreateEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html) request.


## `ProductionVariants = [[ ... ], ...]` -- *Required*
An array of `ProductionVariant` objects, one for each model that you want to host at this endpoint.
```
 ProductionVariants = [[
        "VariantName" => <required> ::String,
        "ModelName" => <required> ::String,
        "InitialInstanceCount" => <required> ::Int,
        "InstanceType" => <required> "ml.t2.medium", "ml.t2.large", "ml.t2.xlarge", "ml.t2.2xlarge", "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.large", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.large", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge" or "ml.c5.18xlarge",
        "InitialVariantWeight" =>  float
    ], ...]
```

## `Tags = [[ ... ], ...]`
An array of key-value pairs. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `KmsKeyId = ::String`
The Amazon Resource Name (ARN) of a AWS Key Management Service key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.




# Returns

`CreateEndpointConfigOutput`

# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpointConfig)
"""
@inline create_endpoint_config(aws::AWSConfig=default_aws_config(); args...) = create_endpoint_config(aws, args)

@inline create_endpoint_config(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "CreateEndpointConfig", args)

@inline create_endpoint_config(args) = create_endpoint_config(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.create_hyper_parameter_tuning_job
    create_hyper_parameter_tuning_job([::AWSConfig], arguments::Dict)
    create_hyper_parameter_tuning_job([::AWSConfig]; HyperParameterTuningJobName=, HyperParameterTuningJobConfig=, TrainingJobDefinition=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "CreateHyperParameterTuningJob", arguments::Dict)
    sagemaker([::AWSConfig], "CreateHyperParameterTuningJob", HyperParameterTuningJobName=, HyperParameterTuningJobConfig=, TrainingJobDefinition=, <keyword arguments>)

# CreateHyperParameterTuningJob Operation

Starts a hyperparameter tuning job.

# Arguments

## `HyperParameterTuningJobName = ::String` -- *Required*
The name of the tuning job. This name is the prefix for the names of all training jobs that this tuning job launches. The name must be unique within the same AWS account and AWS Region. Names are not case sensitive, and must be between 1-32 characters.


## `HyperParameterTuningJobConfig = [ ... ]` -- *Required*
The [HyperParameterTuningJobConfig](@ref) object that describes the tuning job, including the search strategy, metric used to evaluate training jobs, ranges of parameters to search, and resource limits for the tuning job.
```
 HyperParameterTuningJobConfig = [
        "Strategy" => <required> "Bayesian",
        "HyperParameterTuningJobObjective" => <required> [
            "Type" => <required> "Maximize" or "Minimize",
            "MetricName" => <required> ::String
        ],
        "ResourceLimits" => <required> [
            "MaxNumberOfTrainingJobs" => <required> ::Int,
            "MaxParallelTrainingJobs" => <required> ::Int
        ],
        "ParameterRanges" => <required> [
            "IntegerParameterRanges" =>  [[
                "Name" => <required> ::String,
                "MinValue" => <required> ::String,
                "MaxValue" => <required> ::String
            ], ...],
            "ContinuousParameterRanges" =>  [[
                "Name" => <required> ::String,
                "MinValue" => <required> ::String,
                "MaxValue" => <required> ::String
            ], ...],
            "CategoricalParameterRanges" =>  [[
                "Name" => <required> ::String,
                "Values" => <required> [::String, ...]
            ], ...]
        ]
    ]
```

## `TrainingJobDefinition = [ ... ]` -- *Required*
The [HyperParameterTrainingJobDefinition](@ref) object that describes the training jobs that this tuning job launches, including static hyperparameters, input data configuration, output data configuration, resource configuration, and stopping condition.
```
 TrainingJobDefinition = [
        "StaticHyperParameters" =>  ::Dict{String,String},
        "AlgorithmSpecification" => <required> [
            "TrainingImage" => <required> ::String,
            "TrainingInputMode" => <required> "Pipe" or "File",
            "MetricDefinitions" =>  [[
                "Name" => <required> ::String,
                "Regex" => <required> ::String
            ], ...]
        ],
        "RoleArn" => <required> ::String,
        "InputDataConfig" => <required> [[
            "ChannelName" => <required> ::String,
            "DataSource" => <required> ["S3DataSource" => <required> [
                    "S3DataType" => <required> "ManifestFile" or "S3Prefix",
                    "S3Uri" => <required> ::String,
                    "S3DataDistributionType" =>  "FullyReplicated" or "ShardedByS3Key"
                ]],
            "ContentType" =>  ::String,
            "CompressionType" =>  "None" or "Gzip",
            "RecordWrapperType" =>  "None" or "RecordIO"
        ], ...],
        "VpcConfig" =>  [
            "SecurityGroupIds" => <required> [::String, ...],
            "Subnets" => <required> [::String, ...]
        ],
        "OutputDataConfig" => <required> [
            "KmsKeyId" =>  ::String,
            "S3OutputPath" => <required> ::String
        ],
        "ResourceConfig" => <required> [
            "InstanceType" => <required> "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge" or "ml.c5.18xlarge",
            "InstanceCount" => <required> ::Int,
            "VolumeSizeInGB" => <required> ::Int,
            "VolumeKmsKeyId" =>  ::String
        ],
        "StoppingCondition" => <required> ["MaxRuntimeInSeconds" =>  ::Int]
    ]
```

## `Tags = [[ ... ], ...]`
An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com//awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`CreateHyperParameterTuningJobResponse`

# Exceptions

`ResourceInUse` or `ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateHyperParameterTuningJob)
"""
@inline create_hyper_parameter_tuning_job(aws::AWSConfig=default_aws_config(); args...) = create_hyper_parameter_tuning_job(aws, args)

@inline create_hyper_parameter_tuning_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "CreateHyperParameterTuningJob", args)

@inline create_hyper_parameter_tuning_job(args) = create_hyper_parameter_tuning_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.create_model
    create_model([::AWSConfig], arguments::Dict)
    create_model([::AWSConfig]; ModelName=, PrimaryContainer=, ExecutionRoleArn=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "CreateModel", arguments::Dict)
    sagemaker([::AWSConfig], "CreateModel", ModelName=, PrimaryContainer=, ExecutionRoleArn=, <keyword arguments>)

# CreateModel Operation

Creates a model in Amazon SageMaker. In the request, you name the model and describe one or more containers. For each container, you specify the docker image containing inference code, artifacts (from prior training), and custom environment map that the inference code uses when you deploy the model into production.

Use this API to create a model only if you want to use Amazon SageMaker hosting services. To host your model, you create an endpoint configuration with the `CreateEndpointConfig` API, and then create an endpoint with the `CreateEndpoint` API.

Amazon SageMaker then deploys all of the containers that you defined for the model in the hosting environment.

In the `CreateModel` request, you must define a container with the `PrimaryContainer` parameter.

In the request, you also provide an IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute hosting instances. In addition, you also use the IAM role to manage permissions the inference code needs. For example, if the inference code access any other AWS resources, you grant necessary permissions via this role.

# Arguments

## `ModelName = ::String` -- *Required*
The name of the new model.


## `PrimaryContainer = [ ... ]` -- *Required*
The location of the primary docker image containing inference code, associated artifacts, and custom environment map that the inference code uses when the model is deployed into production.
```
 PrimaryContainer = [
        "ContainerHostname" =>  ::String,
        "Image" => <required> ::String,
        "ModelDataUrl" =>  ::String,
        "Environment" =>  ::Dict{String,String}
    ]
```

## `ExecutionRoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute instances. Deploying on ML compute instances is part of model hosting. For more information, see [Amazon SageMaker Roles](http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

**Note**
> To be able to pass this role to Amazon SageMaker, the caller of this API must have the `iam:PassRole` permission.


## `Tags = [[ ... ], ...]`
An array of key-value pairs. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `VpcConfig = [ ... ]`
A [VpcConfig](@ref) object that specifies the VPC that you want your model to connect to. Control access to and from your model container by configuring the VPC. For more information, see [host-vpc](@ref).
```
 VpcConfig = [
        "SecurityGroupIds" => <required> [::String, ...],
        "Subnets" => <required> [::String, ...]
    ]
```



# Returns

`CreateModelOutput`

# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateModel)
"""
@inline create_model(aws::AWSConfig=default_aws_config(); args...) = create_model(aws, args)

@inline create_model(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "CreateModel", args)

@inline create_model(args) = create_model(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.create_notebook_instance
    create_notebook_instance([::AWSConfig], arguments::Dict)
    create_notebook_instance([::AWSConfig]; NotebookInstanceName=, InstanceType=, RoleArn=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "CreateNotebookInstance", arguments::Dict)
    sagemaker([::AWSConfig], "CreateNotebookInstance", NotebookInstanceName=, InstanceType=, RoleArn=, <keyword arguments>)

# CreateNotebookInstance Operation

Creates an Amazon SageMaker notebook instance. A notebook instance is a machine learning (ML) compute instance running on a Jupyter notebook.

In a `CreateNotebookInstance` request, specify the type of ML compute instance that you want to run. Amazon SageMaker launches the instance, installs common libraries that you can use to explore datasets for model training, and attaches an ML storage volume to the notebook instance.

Amazon SageMaker also provides a set of example notebooks. Each notebook demonstrates how to use Amazon SageMaker with a specific algorithm or with a machine learning framework.

After receiving the request, Amazon SageMaker does the following:

1.  Creates a network interface in the Amazon SageMaker VPC.

2.  (Option) If you specified `SubnetId`, Amazon SageMaker creates a network interface in your own VPC, which is inferred from the subnet ID that you provide in the input. When creating this network interface, Amazon SageMaker attaches the security group that you specified in the request to the network interface that it creates in your VPC.

3.  Launches an EC2 instance of the type specified in the request in the Amazon SageMaker VPC. If you specified `SubnetId` of your VPC, Amazon SageMaker specifies both network interfaces when launching this instance. This enables inbound traffic from your own VPC to the notebook instance, assuming that the security groups allow it.

After creating the notebook instance, Amazon SageMaker returns its Amazon Resource Name (ARN).

After Amazon SageMaker creates the notebook instance, you can connect to the Jupyter server and work in Jupyter notebooks. For example, you can write code to explore a dataset that you can use for model training, train a model, host models by creating Amazon SageMaker endpoints, and validate hosted models.

For more information, see [How It Works](http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).

# Arguments

## `NotebookInstanceName = ::String` -- *Required*
The name of the new notebook instance.


## `InstanceType = "ml.t2.medium", "ml.t2.large", "ml.t2.xlarge", "ml.t2.2xlarge", "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge" or "ml.p3.16xlarge"` -- *Required*
The type of ML compute instance to launch for the notebook instance.


## `SubnetId = ::String`
The ID of the subnet in a VPC to which you would like to have a connectivity from your ML compute instance.


## `SecurityGroupIds = [::String, ...]`
The VPC security group IDs, in the form sg-xxxxxxxx. The security groups must be for the same VPC as specified in the subnet.


## `RoleArn = ::String` -- *Required*
When you send any requests to AWS resources from the notebook instance, Amazon SageMaker assumes this role to perform tasks on your behalf. You must grant this role necessary permissions so Amazon SageMaker can perform these tasks. The policy must allow the Amazon SageMaker service principal (sagemaker.amazonaws.com) permissions to assume this role. For more information, see [Amazon SageMaker Roles](http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

**Note**
> To be able to pass this role to Amazon SageMaker, the caller of this API must have the `iam:PassRole` permission.


## `KmsKeyId = ::String`
If you provide a AWS KMS key ID, Amazon SageMaker uses it to encrypt data at rest on the ML storage volume that is attached to your notebook instance.


## `Tags = [[ ... ], ...]`
A list of tags to associate with the notebook instance. You can add tags later by using the `CreateTags` API.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `LifecycleConfigName = ::String`
The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see [notebook-lifecycle-config](@ref).


## `DirectInternetAccess = "Enabled" or "Disabled"`
Sets whether Amazon SageMaker provides internet access to the notebook instance. If you set this to `Disabled` this notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker training and endpoint services unless your configure a NAT Gateway in your VPC.

For more information, see [appendix-notebook-and-internet-access](@ref). You can set the value of this parameter to `Disabled` only if you set a value for the `SubnetId` parameter.




# Returns

`CreateNotebookInstanceOutput`

# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstance)
"""
@inline create_notebook_instance(aws::AWSConfig=default_aws_config(); args...) = create_notebook_instance(aws, args)

@inline create_notebook_instance(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "CreateNotebookInstance", args)

@inline create_notebook_instance(args) = create_notebook_instance(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.create_notebook_instance_lifecycle_config
    create_notebook_instance_lifecycle_config([::AWSConfig], arguments::Dict)
    create_notebook_instance_lifecycle_config([::AWSConfig]; NotebookInstanceLifecycleConfigName=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "CreateNotebookInstanceLifecycleConfig", arguments::Dict)
    sagemaker([::AWSConfig], "CreateNotebookInstanceLifecycleConfig", NotebookInstanceLifecycleConfigName=, <keyword arguments>)

# CreateNotebookInstanceLifecycleConfig Operation

Creates a lifecycle configuration that you can associate with a notebook instance. A *lifecycle configuration* is a collection of shell scripts that run when you create or start a notebook instance.

Each lifecycle configuration script has a limit of 16384 characters.

The value of the `\$PATH` environment variable that is available to both scripts is `/sbin:bin:/usr/sbin:/usr/bin`.

View CloudWatch Logs for notebook instance lifecycle configurations in log group `/aws/sagemaker/NotebookInstances` in log stream `[notebook-instance-name]/[LifecycleConfigHook]`.

Lifecycle configuration scripts cannot run for longer than 5 minutes. If a script runs for longer than 5 minutes, it fails and the notebook instance is not created or started.

For information about notebook instance lifestyle configurations, see [notebook-lifecycle-config](@ref).

# Arguments

## `NotebookInstanceLifecycleConfigName = ::String` -- *Required*
The name of the lifecycle configuration.


## `OnCreate = [["Content" =>  ::String], ...]`
A shell script that runs only once, when you create a notebook instance.


## `OnStart = [["Content" =>  ::String], ...]`
A shell script that runs every time you start a notebook instance, including when you create the notebook instance.




# Returns

`CreateNotebookInstanceLifecycleConfigOutput`

# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstanceLifecycleConfig)
"""
@inline create_notebook_instance_lifecycle_config(aws::AWSConfig=default_aws_config(); args...) = create_notebook_instance_lifecycle_config(aws, args)

@inline create_notebook_instance_lifecycle_config(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "CreateNotebookInstanceLifecycleConfig", args)

@inline create_notebook_instance_lifecycle_config(args) = create_notebook_instance_lifecycle_config(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.create_presigned_notebook_instance_url
    create_presigned_notebook_instance_url([::AWSConfig], arguments::Dict)
    create_presigned_notebook_instance_url([::AWSConfig]; NotebookInstanceName=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "CreatePresignedNotebookInstanceUrl", arguments::Dict)
    sagemaker([::AWSConfig], "CreatePresignedNotebookInstanceUrl", NotebookInstanceName=, <keyword arguments>)

# CreatePresignedNotebookInstanceUrl Operation

Returns a URL that you can use to connect to the Jupyter server from a notebook instance. In the Amazon SageMaker console, when you choose `Open` next to a notebook instance, Amazon SageMaker opens a new tab showing the Jupyter server home page from the notebook instance. The console uses this API to get the URL and show the page.

# Arguments

## `NotebookInstanceName = ::String` -- *Required*
The name of the notebook instance.


## `SessionExpirationDurationInSeconds = ::Int`
The duration of the session, in seconds. The default is 12 hours.




# Returns

`CreatePresignedNotebookInstanceUrlOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreatePresignedNotebookInstanceUrl)
"""
@inline create_presigned_notebook_instance_url(aws::AWSConfig=default_aws_config(); args...) = create_presigned_notebook_instance_url(aws, args)

@inline create_presigned_notebook_instance_url(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "CreatePresignedNotebookInstanceUrl", args)

@inline create_presigned_notebook_instance_url(args) = create_presigned_notebook_instance_url(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.create_training_job
    create_training_job([::AWSConfig], arguments::Dict)
    create_training_job([::AWSConfig]; TrainingJobName=, AlgorithmSpecification=, RoleArn=, InputDataConfig=, OutputDataConfig=, ResourceConfig=, StoppingCondition=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "CreateTrainingJob", arguments::Dict)
    sagemaker([::AWSConfig], "CreateTrainingJob", TrainingJobName=, AlgorithmSpecification=, RoleArn=, InputDataConfig=, OutputDataConfig=, ResourceConfig=, StoppingCondition=, <keyword arguments>)

# CreateTrainingJob Operation

Starts a model training job. After training completes, Amazon SageMaker saves the resulting model artifacts to an Amazon S3 location that you specify.

If you choose to host your model using Amazon SageMaker hosting services, you can use the resulting model artifacts as part of the model. You can also use the artifacts in a deep learning service other than Amazon SageMaker, provided that you know how to use them for inferences.

In the request body, you provide the following:

*   `AlgorithmSpecification` - Identifies the training algorithm to use.

*   `HyperParameters` - Specify these algorithm-specific parameters to influence the quality of the final model. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see [Algorithms](http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

*   `InputDataConfig` - Describes the training dataset and the Amazon S3 location where it is stored.

*   `OutputDataConfig` - Identifies the Amazon S3 location where you want Amazon SageMaker to save the results of model training.

*   `ResourceConfig` - Identifies the resources, ML compute instances, and ML storage volumes to deploy for model training. In distributed training, you specify more than one instance.

*   `RoleARN` - The Amazon Resource Number (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during model training. You must grant this role the necessary permissions so that Amazon SageMaker can successfully complete model training.

*   `StoppingCondition` - Sets a duration for training. Use this parameter to cap model training costs.

For more information about Amazon SageMaker, see [How It Works](http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).

# Arguments

## `TrainingJobName = ::String` -- *Required*
The name of the training job. The name must be unique within an AWS Region in an AWS account.


## `HyperParameters = ::Dict{String,String}`
Algorithm-specific parameters that influence the quality of the model. You set hyperparameters before you start the learning process. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see [Algorithms](http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

You can specify a maximum of 100 hyperparameters. Each hyperparameter is a key-value pair. Each key and value is limited to 256 characters, as specified by the `Length Constraint`.


## `AlgorithmSpecification = [ ... ]` -- *Required*
The registry path of the Docker image that contains the training algorithm and algorithm-specific metadata, including the input mode. For more information about algorithms provided by Amazon SageMaker, see [Algorithms](http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html). For information about providing your own algorithms, see [your-algorithms](@ref).
```
 AlgorithmSpecification = [
        "TrainingImage" => <required> ::String,
        "TrainingInputMode" => <required> "Pipe" or "File"
    ]
```

## `RoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.

During model training, Amazon SageMaker needs your permission to read input data from an S3 bucket, download a Docker image that contains training code, write model artifacts to an S3 bucket, write logs to Amazon CloudWatch Logs, and publish metrics to Amazon CloudWatch. You grant permissions for all of these tasks to an IAM role. For more information, see [Amazon SageMaker Roles](http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

**Note**
> To be able to pass this role to Amazon SageMaker, the caller of this API must have the `iam:PassRole` permission.


## `InputDataConfig = [[ ... ], ...]` -- *Required*
An array of `Channel` objects. Each channel is a named input source. `InputDataConfig` describes the input data and its location.

Algorithms can accept input data from one or more channels. For example, an algorithm might have two channels of input data, `training_data` and `validation_data`. The configuration for each channel provides the S3 location where the input data is stored. It also provides information about the stored data: the MIME type, compression method, and whether the data is wrapped in RecordIO format.

Depending on the input mode that the algorithm supports, Amazon SageMaker either copies input data files from an S3 bucket to a local directory in the Docker container, or makes it available as input streams.
```
 InputDataConfig = [[
        "ChannelName" => <required> ::String,
        "DataSource" => <required> ["S3DataSource" => <required> [
                "S3DataType" => <required> "ManifestFile" or "S3Prefix",
                "S3Uri" => <required> ::String,
                "S3DataDistributionType" =>  "FullyReplicated" or "ShardedByS3Key"
            ]],
        "ContentType" =>  ::String,
        "CompressionType" =>  "None" or "Gzip",
        "RecordWrapperType" =>  "None" or "RecordIO"
    ], ...]
```

## `OutputDataConfig = [ ... ]` -- *Required*
Specifies the path to the S3 bucket where you want to store model artifacts. Amazon SageMaker creates subfolders for the artifacts.
```
 OutputDataConfig = [
        "KmsKeyId" =>  ::String,
        "S3OutputPath" => <required> ::String
    ]
```

## `ResourceConfig = [ ... ]` -- *Required*
The resources, including the ML compute instances and ML storage volumes, to use for model training.

ML storage volumes store model artifacts and incremental states. Training algorithms might also use ML storage volumes for scratch space. If you want Amazon SageMaker to use the ML storage volume to store the training data, choose `File` as the `TrainingInputMode` in the algorithm specification. For distributed training algorithms, specify an instance count greater than 1.
```
 ResourceConfig = [
        "InstanceType" => <required> "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge" or "ml.c5.18xlarge",
        "InstanceCount" => <required> ::Int,
        "VolumeSizeInGB" => <required> ::Int,
        "VolumeKmsKeyId" =>  ::String
    ]
```

## `VpcConfig = [ ... ]`
A [VpcConfig](@ref) object that specifies the VPC that you want your training job to connect to. Control access to and from your training container by configuring the VPC. For more information, see [train-vpc](@ref)
```
 VpcConfig = [
        "SecurityGroupIds" => <required> [::String, ...],
        "Subnets" => <required> [::String, ...]
    ]
```

## `StoppingCondition = ["MaxRuntimeInSeconds" =>  ::Int]` -- *Required*
Sets a duration for training. Use this parameter to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM` signal, which delays job termination for 120 seconds. Algorithms might use this 120-second window to save the model artifacts.

When Amazon SageMaker terminates a job because the stopping condition has been met, training algorithms provided by Amazon SageMaker save the intermediate results of the job. This intermediate data is a valid model artifact. You can use it to create a model using the `CreateModel` API.


## `Tags = [[ ... ], ...]`
An array of key-value pairs. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`CreateTrainingJobResponse`

# Exceptions

`ResourceInUse` or `ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTrainingJob)
"""
@inline create_training_job(aws::AWSConfig=default_aws_config(); args...) = create_training_job(aws, args)

@inline create_training_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "CreateTrainingJob", args)

@inline create_training_job(args) = create_training_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.create_transform_job
    create_transform_job([::AWSConfig], arguments::Dict)
    create_transform_job([::AWSConfig]; TransformJobName=, ModelName=, TransformInput=, TransformOutput=, TransformResources=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "CreateTransformJob", arguments::Dict)
    sagemaker([::AWSConfig], "CreateTransformJob", TransformJobName=, ModelName=, TransformInput=, TransformOutput=, TransformResources=, <keyword arguments>)

# CreateTransformJob Operation

Starts a transform job. A transform job uses a trained model to get inferences on a dataset and saves these results to an Amazon S3 location that you specify.

To perform batch transformations, you create a transform job and use the data that you have readily available.

In the request body, you provide the following:

*   `TransformJobName` - Identifies the transform job. The name must be unique within an AWS Region in an AWS account.

*   `ModelName` - Identifies the model to use. `ModelName` must be the name of an existing Amazon SageMaker model within an AWS Region in an AWS account.

*   `TransformInput` - Describes the dataset to be transformed and the Amazon S3 location where it is stored.

*   `TransformOutput` - Identifies the Amazon S3 location where you want Amazon SageMaker to save the results from the transform job.

*   `TransformResources` - Identifies the ML compute instances for the transform job.

For more information about how batch transformation works Amazon SageMaker, see [How It Works](http://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html).

# Arguments

## `TransformJobName = ::String` -- *Required*
The name of the transform job. The name must be unique within an AWS Region in an AWS account.


## `ModelName = ::String` -- *Required*
The name of the model that you want to use for the transform job. `ModelName` must be the name of an existing Amazon SageMaker model within an AWS Region in an AWS account.


## `MaxConcurrentTransforms = ::Int`
The maximum number of parallel requests that can be sent to each instance in a transform job. This is good for algorithms that implement multiple workers on larger instances . The default value is `1`. To allow Amazon SageMaker to determine the appropriate number for `MaxConcurrentTransforms`, set the value to `0`.


## `MaxPayloadInMB = ::Int`
The maximum payload size allowed, in MB. A payload is the data portion of a record (without metadata). The value in `MaxPayloadInMB` must be greater or equal to the size of a single record. You can approximate the size of a record by dividing the size of your dataset by the number of records. Then multiply this value by the number of records you want in a mini-batch. It is recommended to enter a value slightly larger than this to ensure the records fit within the maximum payload size. The default value is `6` MB. For an unlimited payload size, set the value to `0`.


## `BatchStrategy = "MultiRecord" or "SingleRecord"`
Determines the number of records included in a single mini-batch. `SingleRecord` means only one record is used per mini-batch. `MultiRecord` means a mini-batch is set to contain as many records that can fit within the `MaxPayloadInMB` limit.

Batch transform will automatically split your input data into whatever payload size is specified if you set `SplitType` to `Line` and `BatchStrategy` to `MultiRecord`. There's no need to split the dataset into smaller files or to use larger payload sizes unless the records in your dataset are very large.


## `Environment = ::Dict{String,String}`
The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.


## `TransformInput = [ ... ]` -- *Required*
Describes the input source and the way the transform job consumes it.
```
 TransformInput = [
        "DataSource" => <required> ["S3DataSource" => <required> [
                "S3DataType" => <required> "ManifestFile" or "S3Prefix",
                "S3Uri" => <required> ::String
            ]],
        "ContentType" =>  ::String,
        "CompressionType" =>  "None" or "Gzip",
        "SplitType" =>  "None", "Line" or "RecordIO"
    ]
```

## `TransformOutput = [ ... ]` -- *Required*
Describes the results of the transform job.
```
 TransformOutput = [
        "S3OutputPath" => <required> ::String,
        "Accept" =>  ::String,
        "AssembleWith" =>  "None" or "Line",
        "KmsKeyId" =>  ::String
    ]
```

## `TransformResources = [ ... ]` -- *Required*
Describes the resources, including ML instance types and ML instance count, to use for the transform job.
```
 TransformResources = [
        "InstanceType" => <required> "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge" or "ml.m5.24xlarge",
        "InstanceCount" => <required> ::Int
    ]
```

## `Tags = [[ ... ], ...]`
An array of key-value pairs. Adding tags is optional. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`CreateTransformJobResponse`

# Exceptions

`ResourceInUse` or `ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTransformJob)
"""
@inline create_transform_job(aws::AWSConfig=default_aws_config(); args...) = create_transform_job(aws, args)

@inline create_transform_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "CreateTransformJob", args)

@inline create_transform_job(args) = create_transform_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.delete_endpoint
    delete_endpoint([::AWSConfig], arguments::Dict)
    delete_endpoint([::AWSConfig]; EndpointName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DeleteEndpoint", arguments::Dict)
    sagemaker([::AWSConfig], "DeleteEndpoint", EndpointName=)

# DeleteEndpoint Operation

Deletes an endpoint. Amazon SageMaker frees up all of the resources that were deployed when the endpoint was created.

Amazon SageMaker retires any custom KMS key grants associated with the endpoint, meaning you don't need to use the [RevokeGrant](http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html) API call.

# Arguments

## `EndpointName = ::String` -- *Required*
The name of the endpoint that you want to delete.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteEndpoint)
"""
@inline delete_endpoint(aws::AWSConfig=default_aws_config(); args...) = delete_endpoint(aws, args)

@inline delete_endpoint(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DeleteEndpoint", args)

@inline delete_endpoint(args) = delete_endpoint(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.delete_endpoint_config
    delete_endpoint_config([::AWSConfig], arguments::Dict)
    delete_endpoint_config([::AWSConfig]; EndpointConfigName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DeleteEndpointConfig", arguments::Dict)
    sagemaker([::AWSConfig], "DeleteEndpointConfig", EndpointConfigName=)

# DeleteEndpointConfig Operation

Deletes an endpoint configuration. The `DeleteEndpointConfig` API deletes only the specified configuration. It does not delete endpoints created using the configuration.

# Arguments

## `EndpointConfigName = ::String` -- *Required*
The name of the endpoint configuration that you want to delete.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteEndpointConfig)
"""
@inline delete_endpoint_config(aws::AWSConfig=default_aws_config(); args...) = delete_endpoint_config(aws, args)

@inline delete_endpoint_config(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DeleteEndpointConfig", args)

@inline delete_endpoint_config(args) = delete_endpoint_config(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.delete_model
    delete_model([::AWSConfig], arguments::Dict)
    delete_model([::AWSConfig]; ModelName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DeleteModel", arguments::Dict)
    sagemaker([::AWSConfig], "DeleteModel", ModelName=)

# DeleteModel Operation

Deletes a model. The `DeleteModel` API deletes only the model entry that was created in Amazon SageMaker when you called the [CreateModel](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html) API. It does not delete model artifacts, inference code, or the IAM role that you specified when creating the model.

# Arguments

## `ModelName = ::String` -- *Required*
The name of the model to delete.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteModel)
"""
@inline delete_model(aws::AWSConfig=default_aws_config(); args...) = delete_model(aws, args)

@inline delete_model(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DeleteModel", args)

@inline delete_model(args) = delete_model(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.delete_notebook_instance
    delete_notebook_instance([::AWSConfig], arguments::Dict)
    delete_notebook_instance([::AWSConfig]; NotebookInstanceName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DeleteNotebookInstance", arguments::Dict)
    sagemaker([::AWSConfig], "DeleteNotebookInstance", NotebookInstanceName=)

# DeleteNotebookInstance Operation

Deletes an Amazon SageMaker notebook instance. Before you can delete a notebook instance, you must call the `StopNotebookInstance` API.

**Important**
> When you delete a notebook instance, you lose all of your data. Amazon SageMaker removes the ML compute instance, and deletes the ML storage volume and the network interface associated with the notebook instance.

# Arguments

## `NotebookInstanceName = ::String` -- *Required*
The name of the Amazon SageMaker notebook instance to delete.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteNotebookInstance)
"""
@inline delete_notebook_instance(aws::AWSConfig=default_aws_config(); args...) = delete_notebook_instance(aws, args)

@inline delete_notebook_instance(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DeleteNotebookInstance", args)

@inline delete_notebook_instance(args) = delete_notebook_instance(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.delete_notebook_instance_lifecycle_config
    delete_notebook_instance_lifecycle_config([::AWSConfig], arguments::Dict)
    delete_notebook_instance_lifecycle_config([::AWSConfig]; NotebookInstanceLifecycleConfigName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DeleteNotebookInstanceLifecycleConfig", arguments::Dict)
    sagemaker([::AWSConfig], "DeleteNotebookInstanceLifecycleConfig", NotebookInstanceLifecycleConfigName=)

# DeleteNotebookInstanceLifecycleConfig Operation

Deletes a notebook instance lifecycle configuration.

# Arguments

## `NotebookInstanceLifecycleConfigName = ::String` -- *Required*
The name of the lifecycle configuration to delete.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteNotebookInstanceLifecycleConfig)
"""
@inline delete_notebook_instance_lifecycle_config(aws::AWSConfig=default_aws_config(); args...) = delete_notebook_instance_lifecycle_config(aws, args)

@inline delete_notebook_instance_lifecycle_config(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DeleteNotebookInstanceLifecycleConfig", args)

@inline delete_notebook_instance_lifecycle_config(args) = delete_notebook_instance_lifecycle_config(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.delete_tags
    delete_tags([::AWSConfig], arguments::Dict)
    delete_tags([::AWSConfig]; ResourceArn=, TagKeys=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DeleteTags", arguments::Dict)
    sagemaker([::AWSConfig], "DeleteTags", ResourceArn=, TagKeys=)

# DeleteTags Operation

Deletes the specified tags from an Amazon SageMaker resource.

To list a resource's tags, use the `ListTags` API.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource whose tags you want to delete.


## `TagKeys = [::String, ...]` -- *Required*
An array or one or more tag keys to delete.




# Returns

`DeleteTagsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTags)
"""
@inline delete_tags(aws::AWSConfig=default_aws_config(); args...) = delete_tags(aws, args)

@inline delete_tags(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DeleteTags", args)

@inline delete_tags(args) = delete_tags(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.describe_endpoint
    describe_endpoint([::AWSConfig], arguments::Dict)
    describe_endpoint([::AWSConfig]; EndpointName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DescribeEndpoint", arguments::Dict)
    sagemaker([::AWSConfig], "DescribeEndpoint", EndpointName=)

# DescribeEndpoint Operation

Returns the description of an endpoint.

# Arguments

## `EndpointName = ::String` -- *Required*
The name of the endpoint.




# Returns

`DescribeEndpointOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpoint)
"""
@inline describe_endpoint(aws::AWSConfig=default_aws_config(); args...) = describe_endpoint(aws, args)

@inline describe_endpoint(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DescribeEndpoint", args)

@inline describe_endpoint(args) = describe_endpoint(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.describe_endpoint_config
    describe_endpoint_config([::AWSConfig], arguments::Dict)
    describe_endpoint_config([::AWSConfig]; EndpointConfigName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DescribeEndpointConfig", arguments::Dict)
    sagemaker([::AWSConfig], "DescribeEndpointConfig", EndpointConfigName=)

# DescribeEndpointConfig Operation

Returns the description of an endpoint configuration created using the `CreateEndpointConfig` API.

# Arguments

## `EndpointConfigName = ::String` -- *Required*
The name of the endpoint configuration.




# Returns

`DescribeEndpointConfigOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpointConfig)
"""
@inline describe_endpoint_config(aws::AWSConfig=default_aws_config(); args...) = describe_endpoint_config(aws, args)

@inline describe_endpoint_config(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DescribeEndpointConfig", args)

@inline describe_endpoint_config(args) = describe_endpoint_config(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.describe_hyper_parameter_tuning_job
    describe_hyper_parameter_tuning_job([::AWSConfig], arguments::Dict)
    describe_hyper_parameter_tuning_job([::AWSConfig]; HyperParameterTuningJobName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DescribeHyperParameterTuningJob", arguments::Dict)
    sagemaker([::AWSConfig], "DescribeHyperParameterTuningJob", HyperParameterTuningJobName=)

# DescribeHyperParameterTuningJob Operation

Gets a description of a hyperparameter tuning job.

# Arguments

## `HyperParameterTuningJobName = ::String` -- *Required*
The name of the tuning job to describe.




# Returns

`DescribeHyperParameterTuningJobResponse`

# Exceptions

`ResourceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeHyperParameterTuningJob)
"""
@inline describe_hyper_parameter_tuning_job(aws::AWSConfig=default_aws_config(); args...) = describe_hyper_parameter_tuning_job(aws, args)

@inline describe_hyper_parameter_tuning_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DescribeHyperParameterTuningJob", args)

@inline describe_hyper_parameter_tuning_job(args) = describe_hyper_parameter_tuning_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.describe_model
    describe_model([::AWSConfig], arguments::Dict)
    describe_model([::AWSConfig]; ModelName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DescribeModel", arguments::Dict)
    sagemaker([::AWSConfig], "DescribeModel", ModelName=)

# DescribeModel Operation

Describes a model that you created using the `CreateModel` API.

# Arguments

## `ModelName = ::String` -- *Required*
The name of the model.




# Returns

`DescribeModelOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeModel)
"""
@inline describe_model(aws::AWSConfig=default_aws_config(); args...) = describe_model(aws, args)

@inline describe_model(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DescribeModel", args)

@inline describe_model(args) = describe_model(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.describe_notebook_instance
    describe_notebook_instance([::AWSConfig], arguments::Dict)
    describe_notebook_instance([::AWSConfig]; NotebookInstanceName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DescribeNotebookInstance", arguments::Dict)
    sagemaker([::AWSConfig], "DescribeNotebookInstance", NotebookInstanceName=)

# DescribeNotebookInstance Operation

Returns information about a notebook instance.

# Arguments

## `NotebookInstanceName = ::String` -- *Required*
The name of the notebook instance that you want information about.




# Returns

`DescribeNotebookInstanceOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstance)
"""
@inline describe_notebook_instance(aws::AWSConfig=default_aws_config(); args...) = describe_notebook_instance(aws, args)

@inline describe_notebook_instance(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DescribeNotebookInstance", args)

@inline describe_notebook_instance(args) = describe_notebook_instance(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.describe_notebook_instance_lifecycle_config
    describe_notebook_instance_lifecycle_config([::AWSConfig], arguments::Dict)
    describe_notebook_instance_lifecycle_config([::AWSConfig]; NotebookInstanceLifecycleConfigName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DescribeNotebookInstanceLifecycleConfig", arguments::Dict)
    sagemaker([::AWSConfig], "DescribeNotebookInstanceLifecycleConfig", NotebookInstanceLifecycleConfigName=)

# DescribeNotebookInstanceLifecycleConfig Operation

Returns a description of a notebook instance lifecycle configuration.

For information about notebook instance lifestyle configurations, see [notebook-lifecycle-config](@ref).

# Arguments

## `NotebookInstanceLifecycleConfigName = ::String` -- *Required*
The name of the lifecycle configuration to describe.




# Returns

`DescribeNotebookInstanceLifecycleConfigOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstanceLifecycleConfig)
"""
@inline describe_notebook_instance_lifecycle_config(aws::AWSConfig=default_aws_config(); args...) = describe_notebook_instance_lifecycle_config(aws, args)

@inline describe_notebook_instance_lifecycle_config(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DescribeNotebookInstanceLifecycleConfig", args)

@inline describe_notebook_instance_lifecycle_config(args) = describe_notebook_instance_lifecycle_config(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.describe_training_job
    describe_training_job([::AWSConfig], arguments::Dict)
    describe_training_job([::AWSConfig]; TrainingJobName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DescribeTrainingJob", arguments::Dict)
    sagemaker([::AWSConfig], "DescribeTrainingJob", TrainingJobName=)

# DescribeTrainingJob Operation

Returns information about a training job.

# Arguments

## `TrainingJobName = ::String` -- *Required*
The name of the training job.




# Returns

`DescribeTrainingJobResponse`

# Exceptions

`ResourceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrainingJob)
"""
@inline describe_training_job(aws::AWSConfig=default_aws_config(); args...) = describe_training_job(aws, args)

@inline describe_training_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DescribeTrainingJob", args)

@inline describe_training_job(args) = describe_training_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.describe_transform_job
    describe_transform_job([::AWSConfig], arguments::Dict)
    describe_transform_job([::AWSConfig]; TransformJobName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "DescribeTransformJob", arguments::Dict)
    sagemaker([::AWSConfig], "DescribeTransformJob", TransformJobName=)

# DescribeTransformJob Operation

Returns information about a transform job.

# Arguments

## `TransformJobName = ::String` -- *Required*
The name of the transform job that you want to view details of.




# Returns

`DescribeTransformJobResponse`

# Exceptions

`ResourceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTransformJob)
"""
@inline describe_transform_job(aws::AWSConfig=default_aws_config(); args...) = describe_transform_job(aws, args)

@inline describe_transform_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "DescribeTransformJob", args)

@inline describe_transform_job(args) = describe_transform_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_endpoint_configs
    list_endpoint_configs([::AWSConfig], arguments::Dict)
    list_endpoint_configs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListEndpointConfigs", arguments::Dict)
    sagemaker([::AWSConfig], "ListEndpointConfigs", <keyword arguments>)

# ListEndpointConfigs Operation

Lists endpoint configurations.

# Arguments

## `SortBy = "Name" or "CreationTime"`
The field to sort results by. The default is `CreationTime`.


## `SortOrder = "Ascending" or "Descending"`
The sort order for results. The default is `Ascending`.


## `NextToken = ::String`
If the result of the previous `ListEndpointConfig` request was truncated, the response includes a `NextToken`. To retrieve the next set of endpoint configurations, use the token in the next request.


## `MaxResults = ::Int`
The maximum number of training jobs to return in the response.


## `NameContains = ::String`
A string in the endpoint configuration name. This filter returns only endpoint configurations whose name contains the specified string.


## `CreationTimeBefore = timestamp`
A filter that returns only endpoint configurations created before the specified time (timestamp).


## `CreationTimeAfter = timestamp`
A filter that returns only endpoint configurations created after the specified time (timestamp).




# Returns

`ListEndpointConfigsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpointConfigs)
"""
@inline list_endpoint_configs(aws::AWSConfig=default_aws_config(); args...) = list_endpoint_configs(aws, args)

@inline list_endpoint_configs(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListEndpointConfigs", args)

@inline list_endpoint_configs(args) = list_endpoint_configs(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_endpoints
    list_endpoints([::AWSConfig], arguments::Dict)
    list_endpoints([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListEndpoints", arguments::Dict)
    sagemaker([::AWSConfig], "ListEndpoints", <keyword arguments>)

# ListEndpoints Operation

Lists endpoints.

# Arguments

## `SortBy = "Name", "CreationTime" or "Status"`
Sorts the list of results. The default is `CreationTime`.


## `SortOrder = "Ascending" or "Descending"`
The sort order for results. The default is `Ascending`.


## `NextToken = ::String`
If the result of a `ListEndpoints` request was truncated, the response includes a `NextToken`. To retrieve the next set of endpoints, use the token in the next request.


## `MaxResults = ::Int`
The maximum number of endpoints to return in the response.


## `NameContains = ::String`
A string in endpoint names. This filter returns only endpoints whose name contains the specified string.


## `CreationTimeBefore = timestamp`
A filter that returns only endpoints that were created before the specified time (timestamp).


## `CreationTimeAfter = timestamp`
A filter that returns only endpoints that were created after the specified time (timestamp).


## `LastModifiedTimeBefore = timestamp`
A filter that returns only endpoints that were modified before the specified timestamp.


## `LastModifiedTimeAfter = timestamp`
A filter that returns only endpoints that were modified after the specified timestamp.


## `StatusEquals = "OutOfService", "Creating", "Updating", "RollingBack", "InService", "Deleting" or "Failed"`
A filter that returns only endpoints with the specified status.




# Returns

`ListEndpointsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpoints)
"""
@inline list_endpoints(aws::AWSConfig=default_aws_config(); args...) = list_endpoints(aws, args)

@inline list_endpoints(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListEndpoints", args)

@inline list_endpoints(args) = list_endpoints(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_hyper_parameter_tuning_jobs
    list_hyper_parameter_tuning_jobs([::AWSConfig], arguments::Dict)
    list_hyper_parameter_tuning_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListHyperParameterTuningJobs", arguments::Dict)
    sagemaker([::AWSConfig], "ListHyperParameterTuningJobs", <keyword arguments>)

# ListHyperParameterTuningJobs Operation

Gets a list of [HyperParameterTuningJobSummary](@ref) objects that describe the hyperparameter tuning jobs launched in your account.

# Arguments

## `NextToken = ::String`
If the result of the previous `ListHyperParameterTuningJobs` request was truncated, the response includes a `NextToken`. To retrieve the next set of tuning jobs, use the token in the next request.


## `MaxResults = ::Int`
The maximum number of tuning jobs to return. The default value is 10.


## `SortBy = "Name", "Status" or "CreationTime"`
The field to sort results by. The default is `Name`.


## `SortOrder = "Ascending" or "Descending"`
The sort order for results. The default is `Ascending`.


## `NameContains = ::String`
A string in the tuning job name. This filter returns only tuning jobs whose name contains the specified string.


## `CreationTimeAfter = timestamp`
A filter that returns only tuning jobs that were created after the specified time.


## `CreationTimeBefore = timestamp`
A filter that returns only tuning jobs that were created before the specified time.


## `LastModifiedTimeAfter = timestamp`
A filter that returns only tuning jobs that were modified after the specified time.


## `LastModifiedTimeBefore = timestamp`
A filter that returns only tuning jobs that were modified before the specified time.


## `StatusEquals = "Completed", "InProgress", "Failed", "Stopped" or "Stopping"`
A filter that returns only tuning jobs with the specified status.




# Returns

`ListHyperParameterTuningJobsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListHyperParameterTuningJobs)
"""
@inline list_hyper_parameter_tuning_jobs(aws::AWSConfig=default_aws_config(); args...) = list_hyper_parameter_tuning_jobs(aws, args)

@inline list_hyper_parameter_tuning_jobs(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListHyperParameterTuningJobs", args)

@inline list_hyper_parameter_tuning_jobs(args) = list_hyper_parameter_tuning_jobs(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_models
    list_models([::AWSConfig], arguments::Dict)
    list_models([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListModels", arguments::Dict)
    sagemaker([::AWSConfig], "ListModels", <keyword arguments>)

# ListModels Operation

Lists models created with the [CreateModel](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html) API.

# Arguments

## `SortBy = "Name" or "CreationTime"`
Sorts the list of results. The default is `CreationTime`.


## `SortOrder = "Ascending" or "Descending"`
The sort order for results. The default is `Ascending`.


## `NextToken = ::String`
If the response to a previous `ListModels` request was truncated, the response includes a `NextToken`. To retrieve the next set of models, use the token in the next request.


## `MaxResults = ::Int`
The maximum number of models to return in the response.


## `NameContains = ::String`
A string in the training job name. This filter returns only models in the training job whose name contains the specified string.


## `CreationTimeBefore = timestamp`
A filter that returns only models created before the specified time (timestamp).


## `CreationTimeAfter = timestamp`
A filter that returns only models created after the specified time (timestamp).




# Returns

`ListModelsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListModels)
"""
@inline list_models(aws::AWSConfig=default_aws_config(); args...) = list_models(aws, args)

@inline list_models(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListModels", args)

@inline list_models(args) = list_models(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_notebook_instance_lifecycle_configs
    list_notebook_instance_lifecycle_configs([::AWSConfig], arguments::Dict)
    list_notebook_instance_lifecycle_configs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListNotebookInstanceLifecycleConfigs", arguments::Dict)
    sagemaker([::AWSConfig], "ListNotebookInstanceLifecycleConfigs", <keyword arguments>)

# ListNotebookInstanceLifecycleConfigs Operation

Lists notebook instance lifestyle configurations created with the [CreateNotebookInstanceLifecycleConfig](@ref) API.

# Arguments

## `NextToken = ::String`
If the result of a `ListNotebookInstanceLifecycleConfigs` request was truncated, the response includes a `NextToken`. To get the next set of lifecycle configurations, use the token in the next request.


## `MaxResults = ::Int`
The maximum number of lifecycle configurations to return in the response.


## `SortBy = "Name", "CreationTime" or "LastModifiedTime"`
Sorts the list of results. The default is `CreationTime`.


## `SortOrder = "Ascending" or "Descending"`
The sort order for results.


## `NameContains = ::String`
A string in the lifecycle configuration name. This filter returns only lifecycle configurations whose name contains the specified string.


## `CreationTimeBefore = timestamp`
A filter that returns only lifecycle configurations that were created before the specified time (timestamp).


## `CreationTimeAfter = timestamp`
A filter that returns only lifecycle configurations that were created after the specified time (timestamp).


## `LastModifiedTimeBefore = timestamp`
A filter that returns only lifecycle configurations that were modified before the specified time (timestamp).


## `LastModifiedTimeAfter = timestamp`
A filter that returns only lifecycle configurations that were modified after the specified time (timestamp).




# Returns

`ListNotebookInstanceLifecycleConfigsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstanceLifecycleConfigs)
"""
@inline list_notebook_instance_lifecycle_configs(aws::AWSConfig=default_aws_config(); args...) = list_notebook_instance_lifecycle_configs(aws, args)

@inline list_notebook_instance_lifecycle_configs(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListNotebookInstanceLifecycleConfigs", args)

@inline list_notebook_instance_lifecycle_configs(args) = list_notebook_instance_lifecycle_configs(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_notebook_instances
    list_notebook_instances([::AWSConfig], arguments::Dict)
    list_notebook_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListNotebookInstances", arguments::Dict)
    sagemaker([::AWSConfig], "ListNotebookInstances", <keyword arguments>)

# ListNotebookInstances Operation

Returns a list of the Amazon SageMaker notebook instances in the requester's account in an AWS Region.

# Arguments

## `NextToken = ::String`
If the previous call to the `ListNotebookInstances` is truncated, the response includes a `NextToken`. You can use this token in your subsequent `ListNotebookInstances` request to fetch the next set of notebook instances.

**Note**
> You might specify a filter or a sort order in your request. When response is truncated, you must use the same values for the filer and sort order in the next request.


## `MaxResults = ::Int`
The maximum number of notebook instances to return.


## `SortBy = "Name", "CreationTime" or "Status"`
The field to sort results by. The default is `Name`.


## `SortOrder = "Ascending" or "Descending"`
The sort order for results.


## `NameContains = ::String`
A string in the notebook instances' name. This filter returns only notebook instances whose name contains the specified string.


## `CreationTimeBefore = timestamp`
A filter that returns only notebook instances that were created before the specified time (timestamp).


## `CreationTimeAfter = timestamp`
A filter that returns only notebook instances that were created after the specified time (timestamp).


## `LastModifiedTimeBefore = timestamp`
A filter that returns only notebook instances that were modified before the specified time (timestamp).


## `LastModifiedTimeAfter = timestamp`
A filter that returns only notebook instances that were modified after the specified time (timestamp).


## `StatusEquals = "Pending", "InService", "Stopping", "Stopped", "Failed", "Deleting" or "Updating"`
A filter that returns only notebook instances with the specified status.


## `NotebookInstanceLifecycleConfigNameContains = ::String`
A string in the name of a notebook instances lifecycle configuration associated with this notebook instance. This filter returns only notebook instances associated with a lifecycle configuration with a name that contains the specified string.




# Returns

`ListNotebookInstancesOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstances)
"""
@inline list_notebook_instances(aws::AWSConfig=default_aws_config(); args...) = list_notebook_instances(aws, args)

@inline list_notebook_instances(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListNotebookInstances", args)

@inline list_notebook_instances(args) = list_notebook_instances(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_tags
    list_tags([::AWSConfig], arguments::Dict)
    list_tags([::AWSConfig]; ResourceArn=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListTags", arguments::Dict)
    sagemaker([::AWSConfig], "ListTags", ResourceArn=, <keyword arguments>)

# ListTags Operation

Returns the tags for the specified Amazon SageMaker resource.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.


## `NextToken = ::String`
If the response to the previous `ListTags` request is truncated, Amazon SageMaker returns this token. To retrieve the next set of tags, use it in the subsequent request.


## `MaxResults = ::Int`
Maximum number of tags to return.




# Returns

`ListTagsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTags)
"""
@inline list_tags(aws::AWSConfig=default_aws_config(); args...) = list_tags(aws, args)

@inline list_tags(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListTags", args)

@inline list_tags(args) = list_tags(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_training_jobs
    list_training_jobs([::AWSConfig], arguments::Dict)
    list_training_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListTrainingJobs", arguments::Dict)
    sagemaker([::AWSConfig], "ListTrainingJobs", <keyword arguments>)

# ListTrainingJobs Operation

Lists training jobs.

# Arguments

## `NextToken = ::String`
If the result of the previous `ListTrainingJobs` request was truncated, the response includes a `NextToken`. To retrieve the next set of training jobs, use the token in the next request.


## `MaxResults = ::Int`
The maximum number of training jobs to return in the response.


## `CreationTimeAfter = timestamp`
A filter that returns only training jobs created after the specified time (timestamp).


## `CreationTimeBefore = timestamp`
A filter that returns only training jobs created before the specified time (timestamp).


## `LastModifiedTimeAfter = timestamp`
A filter that returns only training jobs modified after the specified time (timestamp).


## `LastModifiedTimeBefore = timestamp`
A filter that returns only training jobs modified before the specified time (timestamp).


## `NameContains = ::String`
A string in the training job name. This filter returns only training jobs whose name contains the specified string.


## `StatusEquals = "InProgress", "Completed", "Failed", "Stopping" or "Stopped"`
A filter that retrieves only training jobs with a specific status.


## `SortBy = "Name", "CreationTime" or "Status"`
The field to sort results by. The default is `CreationTime`.


## `SortOrder = "Ascending" or "Descending"`
The sort order for results. The default is `Ascending`.




# Returns

`ListTrainingJobsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrainingJobs)
"""
@inline list_training_jobs(aws::AWSConfig=default_aws_config(); args...) = list_training_jobs(aws, args)

@inline list_training_jobs(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListTrainingJobs", args)

@inline list_training_jobs(args) = list_training_jobs(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_training_jobs_for_hyper_parameter_tuning_job
    list_training_jobs_for_hyper_parameter_tuning_job([::AWSConfig], arguments::Dict)
    list_training_jobs_for_hyper_parameter_tuning_job([::AWSConfig]; HyperParameterTuningJobName=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListTrainingJobsForHyperParameterTuningJob", arguments::Dict)
    sagemaker([::AWSConfig], "ListTrainingJobsForHyperParameterTuningJob", HyperParameterTuningJobName=, <keyword arguments>)

# ListTrainingJobsForHyperParameterTuningJob Operation

Gets a list of [TrainingJobSummary](@ref) objects that describe the training jobs that a hyperparameter tuning job launched.

# Arguments

## `HyperParameterTuningJobName = ::String` -- *Required*
The name of the tuning job whose training jobs you want to list.


## `NextToken = ::String`
If the result of the previous `ListTrainingJobsForHyperParameterTuningJob` request was truncated, the response includes a `NextToken`. To retrieve the next set of training jobs, use the token in the next request.


## `MaxResults = ::Int`
The maximum number of training jobs to return. The default value is 10.


## `StatusEquals = "InProgress", "Completed", "Failed", "Stopping" or "Stopped"`
A filter that returns only training jobs with the specified status.


## `SortBy = "Name", "CreationTime", "Status" or "FinalObjectiveMetricValue"`
The field to sort results by. The default is `Name`.

If the value of this field is `FinalObjectiveMetricValue`, any training jobs that did not return an objective metric are not listed.


## `SortOrder = "Ascending" or "Descending"`
The sort order for results. The default is `Ascending`.




# Returns

`ListTrainingJobsForHyperParameterTuningJobResponse`

# Exceptions

`ResourceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrainingJobsForHyperParameterTuningJob)
"""
@inline list_training_jobs_for_hyper_parameter_tuning_job(aws::AWSConfig=default_aws_config(); args...) = list_training_jobs_for_hyper_parameter_tuning_job(aws, args)

@inline list_training_jobs_for_hyper_parameter_tuning_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListTrainingJobsForHyperParameterTuningJob", args)

@inline list_training_jobs_for_hyper_parameter_tuning_job(args) = list_training_jobs_for_hyper_parameter_tuning_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.list_transform_jobs
    list_transform_jobs([::AWSConfig], arguments::Dict)
    list_transform_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "ListTransformJobs", arguments::Dict)
    sagemaker([::AWSConfig], "ListTransformJobs", <keyword arguments>)

# ListTransformJobs Operation

Lists transform jobs.

# Arguments

## `CreationTimeAfter = timestamp`
A filter that returns only transform jobs created after the specified time.


## `CreationTimeBefore = timestamp`
A filter that returns only transform jobs created before the specified time.


## `LastModifiedTimeAfter = timestamp`
A filter that returns only transform jobs modified after the specified time.


## `LastModifiedTimeBefore = timestamp`
A filter that returns only transform jobs modified before the specified time.


## `NameContains = ::String`
A string in the transform job name. This filter returns only transform jobs whose name contains the specified string.


## `StatusEquals = "InProgress", "Completed", "Failed", "Stopping" or "Stopped"`
A filter that retrieves only transform jobs with a specific status.


## `SortBy = "Name", "CreationTime" or "Status"`
The field to sort results by. The default is `CreationTime`.


## `SortOrder = "Ascending" or "Descending"`
The sort order for results. The default is `Descending`.


## `NextToken = ::String`
If the result of the previous `ListTransformJobs` request was truncated, the response includes a `NextToken`. To retrieve the next set of transform jobs, use the token in the next request.


## `MaxResults = ::Int`
The maximum number of transform jobs to return in the response. The default value is `10`.




# Returns

`ListTransformJobsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTransformJobs)
"""
@inline list_transform_jobs(aws::AWSConfig=default_aws_config(); args...) = list_transform_jobs(aws, args)

@inline list_transform_jobs(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "ListTransformJobs", args)

@inline list_transform_jobs(args) = list_transform_jobs(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.start_notebook_instance
    start_notebook_instance([::AWSConfig], arguments::Dict)
    start_notebook_instance([::AWSConfig]; NotebookInstanceName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "StartNotebookInstance", arguments::Dict)
    sagemaker([::AWSConfig], "StartNotebookInstance", NotebookInstanceName=)

# StartNotebookInstance Operation

Launches an ML compute instance with the latest version of the libraries and attaches your ML storage volume. After configuring the notebook instance, Amazon SageMaker sets the notebook instance status to `InService`. A notebook instance's status must be `InService` before you can connect to your Jupyter notebook.

# Arguments

## `NotebookInstanceName = ::String` -- *Required*
The name of the notebook instance to start.




# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StartNotebookInstance)
"""
@inline start_notebook_instance(aws::AWSConfig=default_aws_config(); args...) = start_notebook_instance(aws, args)

@inline start_notebook_instance(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "StartNotebookInstance", args)

@inline start_notebook_instance(args) = start_notebook_instance(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.stop_hyper_parameter_tuning_job
    stop_hyper_parameter_tuning_job([::AWSConfig], arguments::Dict)
    stop_hyper_parameter_tuning_job([::AWSConfig]; HyperParameterTuningJobName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "StopHyperParameterTuningJob", arguments::Dict)
    sagemaker([::AWSConfig], "StopHyperParameterTuningJob", HyperParameterTuningJobName=)

# StopHyperParameterTuningJob Operation

Stops a running hyperparameter tuning job and all running training jobs that the tuning job launched.

All model artifacts output from the training jobs are stored in Amazon Simple Storage Service (Amazon S3). All data that the training jobs write to Amazon CloudWatch Logs are still available in CloudWatch. After the tuning job moves to the `Stopped` state, it releases all reserved resources for the tuning job.

# Arguments

## `HyperParameterTuningJobName = ::String` -- *Required*
The name of the tuning job to stop.




# Exceptions

`ResourceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopHyperParameterTuningJob)
"""
@inline stop_hyper_parameter_tuning_job(aws::AWSConfig=default_aws_config(); args...) = stop_hyper_parameter_tuning_job(aws, args)

@inline stop_hyper_parameter_tuning_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "StopHyperParameterTuningJob", args)

@inline stop_hyper_parameter_tuning_job(args) = stop_hyper_parameter_tuning_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.stop_notebook_instance
    stop_notebook_instance([::AWSConfig], arguments::Dict)
    stop_notebook_instance([::AWSConfig]; NotebookInstanceName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "StopNotebookInstance", arguments::Dict)
    sagemaker([::AWSConfig], "StopNotebookInstance", NotebookInstanceName=)

# StopNotebookInstance Operation

Terminates the ML compute instance. Before terminating the instance, Amazon SageMaker disconnects the ML storage volume from it. Amazon SageMaker preserves the ML storage volume.

To access data on the ML storage volume for a notebook instance that has been terminated, call the `StartNotebookInstance` API. `StartNotebookInstance` launches another ML compute instance, configures it, and attaches the preserved ML storage volume so you can continue your work.

# Arguments

## `NotebookInstanceName = ::String` -- *Required*
The name of the notebook instance to terminate.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopNotebookInstance)
"""
@inline stop_notebook_instance(aws::AWSConfig=default_aws_config(); args...) = stop_notebook_instance(aws, args)

@inline stop_notebook_instance(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "StopNotebookInstance", args)

@inline stop_notebook_instance(args) = stop_notebook_instance(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.stop_training_job
    stop_training_job([::AWSConfig], arguments::Dict)
    stop_training_job([::AWSConfig]; TrainingJobName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "StopTrainingJob", arguments::Dict)
    sagemaker([::AWSConfig], "StopTrainingJob", TrainingJobName=)

# StopTrainingJob Operation

Stops a training job. To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM` signal, which delays job termination for 120 seconds. Algorithms might use this 120-second window to save the model artifacts, so the results of the training is not lost.

Training algorithms provided by Amazon SageMaker save the intermediate results of a model training job. This intermediate data is a valid model artifact. You can use the model artifacts that are saved when Amazon SageMaker stops a training job to create a model.

When it receives a `StopTrainingJob` request, Amazon SageMaker changes the status of the job to `Stopping`. After Amazon SageMaker stops the job, it sets the status to `Stopped`.

# Arguments

## `TrainingJobName = ::String` -- *Required*
The name of the training job to stop.




# Exceptions

`ResourceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopTrainingJob)
"""
@inline stop_training_job(aws::AWSConfig=default_aws_config(); args...) = stop_training_job(aws, args)

@inline stop_training_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "StopTrainingJob", args)

@inline stop_training_job(args) = stop_training_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.stop_transform_job
    stop_transform_job([::AWSConfig], arguments::Dict)
    stop_transform_job([::AWSConfig]; TransformJobName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "StopTransformJob", arguments::Dict)
    sagemaker([::AWSConfig], "StopTransformJob", TransformJobName=)

# StopTransformJob Operation

Stops a transform job.

When Amazon SageMaker receives a `StopTransformJob` request, the status of the job changes to `Stopping`. After Amazon SageMaker stops the job, the status is set to `Stopped`. When you stop a transform job before it is completed, Amazon SageMaker doesn't store the job's output in Amazon S3.

# Arguments

## `TransformJobName = ::String` -- *Required*
The name of the transform job to stop.




# Exceptions

`ResourceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopTransformJob)
"""
@inline stop_transform_job(aws::AWSConfig=default_aws_config(); args...) = stop_transform_job(aws, args)

@inline stop_transform_job(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "StopTransformJob", args)

@inline stop_transform_job(args) = stop_transform_job(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.update_endpoint
    update_endpoint([::AWSConfig], arguments::Dict)
    update_endpoint([::AWSConfig]; EndpointName=, EndpointConfigName=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "UpdateEndpoint", arguments::Dict)
    sagemaker([::AWSConfig], "UpdateEndpoint", EndpointName=, EndpointConfigName=)

# UpdateEndpoint Operation

Deploys the new `EndpointConfig` specified in the request, switches to using newly created endpoint, and then deletes resources provisioned for the endpoint using the previous `EndpointConfig` (there is no availability loss).

When Amazon SageMaker receives the request, it sets the endpoint status to `Updating`. After updating the endpoint, it sets the status to `InService`. To check the status of an endpoint, use the [DescribeEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html) API.

**Note**
> You cannot update an endpoint with the current `EndpointConfig`. To update an endpoint, you must create a new `EndpointConfig`.

# Arguments

## `EndpointName = ::String` -- *Required*
The name of the endpoint whose configuration you want to update.


## `EndpointConfigName = ::String` -- *Required*
The name of the new endpoint configuration.




# Returns

`UpdateEndpointOutput`

# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpoint)
"""
@inline update_endpoint(aws::AWSConfig=default_aws_config(); args...) = update_endpoint(aws, args)

@inline update_endpoint(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "UpdateEndpoint", args)

@inline update_endpoint(args) = update_endpoint(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.update_endpoint_weights_and_capacities
    update_endpoint_weights_and_capacities([::AWSConfig], arguments::Dict)
    update_endpoint_weights_and_capacities([::AWSConfig]; EndpointName=, DesiredWeightsAndCapacities=)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "UpdateEndpointWeightsAndCapacities", arguments::Dict)
    sagemaker([::AWSConfig], "UpdateEndpointWeightsAndCapacities", EndpointName=, DesiredWeightsAndCapacities=)

# UpdateEndpointWeightsAndCapacities Operation

Updates variant weight of one or more variants associated with an existing endpoint, or capacity of one variant associated with an existing endpoint. When it receives the request, Amazon SageMaker sets the endpoint status to `Updating`. After updating the endpoint, it sets the status to `InService`. To check the status of an endpoint, use the [DescribeEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html) API.

# Arguments

## `EndpointName = ::String` -- *Required*
The name of an existing Amazon SageMaker endpoint.


## `DesiredWeightsAndCapacities = [[ ... ], ...]` -- *Required*
An object that provides new capacity and weight values for a variant.
```
 DesiredWeightsAndCapacities = [[
        "VariantName" => <required> ::String,
        "DesiredWeight" =>  float,
        "DesiredInstanceCount" =>  ::Int
    ], ...]
```



# Returns

`UpdateEndpointWeightsAndCapacitiesOutput`

# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpointWeightsAndCapacities)
"""
@inline update_endpoint_weights_and_capacities(aws::AWSConfig=default_aws_config(); args...) = update_endpoint_weights_and_capacities(aws, args)

@inline update_endpoint_weights_and_capacities(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "UpdateEndpointWeightsAndCapacities", args)

@inline update_endpoint_weights_and_capacities(args) = update_endpoint_weights_and_capacities(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.update_notebook_instance
    update_notebook_instance([::AWSConfig], arguments::Dict)
    update_notebook_instance([::AWSConfig]; NotebookInstanceName=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "UpdateNotebookInstance", arguments::Dict)
    sagemaker([::AWSConfig], "UpdateNotebookInstance", NotebookInstanceName=, <keyword arguments>)

# UpdateNotebookInstance Operation

Updates a notebook instance. NotebookInstance updates include upgrading or downgrading the ML compute instance used for your notebook instance to accommodate changes in your workload requirements. You can also update the VPC security groups.

# Arguments

## `NotebookInstanceName = ::String` -- *Required*
The name of the notebook instance to update.


## `InstanceType = "ml.t2.medium", "ml.t2.large", "ml.t2.xlarge", "ml.t2.2xlarge", "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge" or "ml.p3.16xlarge"`
The Amazon ML compute instance type.


## `RoleArn = ::String`
The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access the notebook instance. For more information, see [Amazon SageMaker Roles](http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

**Note**
> To be able to pass this role to Amazon SageMaker, the caller of this API must have the `iam:PassRole` permission.




# Returns

`UpdateNotebookInstanceOutput`

# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstance)
"""
@inline update_notebook_instance(aws::AWSConfig=default_aws_config(); args...) = update_notebook_instance(aws, args)

@inline update_notebook_instance(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "UpdateNotebookInstance", args)

@inline update_notebook_instance(args) = update_notebook_instance(default_aws_config(), args)


"""
    using AWSSDK.SageMaker.update_notebook_instance_lifecycle_config
    update_notebook_instance_lifecycle_config([::AWSConfig], arguments::Dict)
    update_notebook_instance_lifecycle_config([::AWSConfig]; NotebookInstanceLifecycleConfigName=, <keyword arguments>)

    using AWSCore.Services.sagemaker
    sagemaker([::AWSConfig], "UpdateNotebookInstanceLifecycleConfig", arguments::Dict)
    sagemaker([::AWSConfig], "UpdateNotebookInstanceLifecycleConfig", NotebookInstanceLifecycleConfigName=, <keyword arguments>)

# UpdateNotebookInstanceLifecycleConfig Operation

Updates a notebook instance lifecycle configuration created with the [CreateNotebookInstanceLifecycleConfig](@ref) API.

# Arguments

## `NotebookInstanceLifecycleConfigName = ::String` -- *Required*
The name of the lifecycle configuration.


## `OnCreate = [["Content" =>  ::String], ...]`
The shell script that runs only once, when you create a notebook instance


## `OnStart = [["Content" =>  ::String], ...]`
The shell script that runs every time you start a notebook instance, including when you create the notebook instance.




# Returns

`UpdateNotebookInstanceLifecycleConfigOutput`

# Exceptions

`ResourceLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceLifecycleConfig)
"""
@inline update_notebook_instance_lifecycle_config(aws::AWSConfig=default_aws_config(); args...) = update_notebook_instance_lifecycle_config(aws, args)

@inline update_notebook_instance_lifecycle_config(aws::AWSConfig, args) = AWSCore.Services.sagemaker(aws, "UpdateNotebookInstanceLifecycleConfig", args)

@inline update_notebook_instance_lifecycle_config(args) = update_notebook_instance_lifecycle_config(default_aws_config(), args)




end # module SageMaker


#==============================================================================#
# End of file
#==============================================================================#
