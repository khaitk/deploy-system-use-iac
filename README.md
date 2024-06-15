LEARN IaC
---

Introduction
---

1. Language
```
+---------+--------------------+--------------------+
| No      | Language           | Version            |
+---------+--------------------+--------------------+
| 1       | Terraform          | v1.8.2             |
+---------+--------------------+--------------------+
```

Installing
---

- Step 1 : Clone source code
```
git clone https://github.com/maisheneka/deploy-system-use-iac.git
```
```
cd deploy-system-use-iac
```

- Step 2 : Change directory
```
cd path-folder
```

- Step 3 : Initialize a Terraform Project
```
terraform init
```

- Step 4 : Execution plan
```
terraform plan
```

- Step 5 : Create source created by Terraform   
```
terraform apply -auto-approve
```

- Step 6 : Delete source created by Terraform 
```
terraform destroy -auto-approve
```