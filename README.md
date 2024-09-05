# terraform-by-example
How to install terraform ? 
**terraform installation instructions**
Linux command

```
    $ sudo yum install -y yum-utils
    $ sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
    $ sudo yum -y install terraform

```

**Current version of terraform is v1.9.5**

```
$ terraform -v

```

**Provider vs Terraform version.**

Terraform version : This is the tool version Provider version : This is the software version of the cloud provider and based on the selected provider version we might see different options. We typically go with latest.

**When you make a place, you can see these symbols and here are the meanings of it :**

```
    +   : creates resource
    -   : deletes resource
    -/+ : delete and recreate the resources
    ~   : something is changing in the existing resources

```

**terraform installation instructions**
**What terraform init is going to do ?**

```
1)Terraform is going download all the needed plugins that are needed in the code 
2)?
3)?

```

**What plan does ?**

Plan is going to show what code is going to do wrt what is already there in the AWS Account, based on this you're going to either apply or deny or tune it as per your need.

**AWS IAM ( Identity & Access Management )**

```
1) This service in AWS helps humans to authenticate to aws
2) helps machines / bots authenticate to AWS
3) This defines authorization using something called ROLES

```

Save both URL, id and password 

**How can we access AWS ?**
1) UI  : with userName and password
2) CLI : accessKey & secretKey  ( This quite harmful if used incorrectly : 99.999% of the times, usage of keys is strictly prohibited )
How can we use the keys and authenticate to cloud ?

1) Download the keys 
2) And export them on your linux server 
3) That's it, you're authenticated to AWS Cloud and from that time, you can access your account on AWS Cloud. 
4) !!!! Keep in mind, these are server where a bunch of people in your org has access to and anyone can see your ACCESS & SECRET KEY ( which no one wants )
It awalys goes with Least Privilege Principle to achieve Zero Trust Policy !!!!!

Keep in mind, one service in AWS cannot authenticate & authorize to other AWS service by default.

That means, AWS EC2 instance by default cannot create other aws ec2 instance or route53 record.
How to create IAM Role and attach it for an EC2 instance ?

1) IAM Roles are to enable authentication and authorization between services in AWS and services outside the AWS as well.
2) Create an IAM Roles saying that EC2 would like to do some actions 
3) Assign Admin access to teh Role 
4) Now attch this IAM Role to the EC2 instance and from them this EC2 instance is having admin access on the IAM account of AWS.
5) This way, we don't have to download/export/rotate the plain-text keys. 
Arguments vs Attributes in terraform

Arguments: These are the inputs that helps in creating the infrastructure with the properties of your choice 

            ex: instance_type, ami, security_group to use 

Attributes: These are the properties of the infra that comes up post the creation of infrastructure.

            ex: instance_id, private_ip, volume_id 
Rule Of Thumb when dealing terraform :

1) When you're creating infrastructure, make sure you deal end-to-end with terraform only 
2) Manual changes on the console is 100% not encouraged 
3) If you do some changes on the infra provisioned or managed by terraform, terraform is going to wipe those manual changes when the next run of terraform apply happens.
When you run terraform apply, is terraform going to create or update or destroy & create my infrastructure ?

1) It depends on the changes that you made on the code or on the infrastructure. 
2) If you just update the tags , it just replaces without any downtime or interruption
3) If you change the instance type, system goes down , updates the instance_type and starts the instance 
4) If you change the AMI, then it's like destrying and creating the instance.
How to scale any instance vertically ?

Veritcal means adding resources to the same resource 1) If you want to change the instance type, we need to turn off the instance 2) Select the instance ----> Actions ----> Instance Type ----> Change the isntance the type 3) Now start the isntance. 4) In none of the clouds, vertical scaling is not possible without downtime. Because when you change instance type from t3micro to t2 micro it is ging to stop the instance and then boot the t2micro instance. 
Terraform commands

```
    $ terraform init                    ( This will intialize the plugins needed for the code ) 
    $ terraform plan                    ( This will show what it's going to create/update/delete the infra based on the code vs what we have on the cloud )
    $ terraform apply -auto-approve     ( This is going to apply the changes shown on the plan, if applied immediately )

```
OR

Saving the terraform plan locally and applying it, this guarantees the same apply of the plan

```
    $ terraform init 
    $ terraform plan -out=plan.out 
    $ terraform apply plan.out 
```
Terraform init and what all it can do ?

1) It can initialize the backend 
2) Initializes the modules  ( if you mention modules in the code )
3) Initializing provider plugins.
How to correct the style or format automatically in terraform

        $ terraform fmt --recursive 
