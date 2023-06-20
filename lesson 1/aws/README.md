# Create VPC on AWS using Terraform

```
cd k8s-get-started
```

**Optionally:** if you're using CloudCLI, you'll ssh into the cloudcli container shell,

```
cloudcli ssh
# Run all the commands from inside the cloudcli shell
```

```
cd aws/vpc
source ../tfvars.env

terraform init
terraform plan

terraform apply -auto-approve
```
