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

URL: https://355449129696.signin.aws.amazon.com/console 2048

b58-mike P@ssw0rd12789

**How can we access AWS ?**
1) UI  : with userName and password
2) CLI : accessKey & secretKey  ( This quite harmful if used incorrectly : 99.999% of the times, usage of keys is strictly prohibited )
