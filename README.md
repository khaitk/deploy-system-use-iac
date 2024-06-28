LEARN Infra
---

Introduction
---

- Language

| No      | Language           | Version   |
| ------- | ------------------ | --------- |
| 1       | Terraform          | v1.8.2    |

Infrastructure System 
---

| No      | Source Code                                          | Link      |
| ------- | ---------------------------------------------------- | --------- |
| 1       | ecs-fargate-vpclink-apigateway                       | [Link](https://github.com/maisheneka/deploy-system-use-iac/tree/develop/ecs-fargate-vpclink-apigateway)     |

Get start
---
```
aws configure
```
```
AWS Access Key ID [*******************]:
AWS Secret Access Key [****************]:
Default region name []:
Default output format [json]:
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
