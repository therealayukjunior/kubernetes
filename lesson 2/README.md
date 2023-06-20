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
cd aws/eks
source ../tfvars.env

terraform init
terraform plan

terraform apply -auto-approve

aws eks update-kubeconfig --name $TF_VAR_cluster_name --region $TF_VAR_region
# Note: Writes to .kube/config; Cleanup or delete .kube/config before updating, if it doesn't properly update the kube config

kubectl get po
kubectl get nodes
```
