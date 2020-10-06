# Create Linode instance using Terraform


## Description

Create a "g6-nanode-1" (1 CPU - 1GB RAM - 25GB SSD) Linode instance (Virtual Machine VM) running Debian 10 using Terraform provisioning tool.



## Requisites

a) Linode account<br />
b) A Linode API token<br />
c) An SSH key pair on your laptop<br />
d) Terraform installed<br />



## Instructions

a) On your laptop create a working directory


b) In your working directory open a console window


c) Clone github repository

```
git clone https://github.com/jobetinfosec/terraform-linode-instance.git
```


d) Switch to script directory

```
cd terraform-linode-instance
```


e) Open terraform.tfvars file

```
nano terraform.tfvars
```


f) Replace <TEMPORARY_ITEMS> with your own data:

`<API_TOKEN>`		replace <API_TOKEN> with your Linode API token<br />
`<ROOT_USER_PASSWORD>`	replace it with root user's password<br />
`<RAW_PUBLIC_KEY>`	replace it with your raw public key (i.e. ssh-rsa AAAbptX.....=)<br />
`<LABEL>`		replace it with the label you want to assign to the instance<br />
`<TAG>`			replace it with the tag you want to use to group the instance into a specific group<br />
`<IMAGE>`		replace it with the operating system you want to install in your instance<br />
`<REGION>`		replace it with the geographical region where you want to create the instance<br />


g) Initialize Terraform

```
terraform init
```


h) Check for errors

```
terraform plan
```


i) Create instance

```
terraform apply
```


j) SSH into the newly created Linode instance

```
ssh `terraform output instance_public_ip`
```


k) If you want to delete the instance, use:

```
terraform destroy
```

