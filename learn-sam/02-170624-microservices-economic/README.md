Deploy Microservices Economic
---

Installing
---

- Step 1 : Change directory
```
cd bff-ecomo
```

- Step 2 : Deploy source code
```
sam deploy --guided --capabilities CAPABILITY_NAMED_IAM
```

- Step 3 : Configuring SAM deploy
```
Setting default arguments for 'sam deploy'
=========================================
Stack Name [sam-app]: Enter
AWS Region [ap-northeast-1]: Enter
Parameter STAGE [prod]: prod
#Shows you resources changes to be deployed and require a 'Y' to initiate deploy
Confirm changes before deploy [Y/n]: y
#SAM needs permission to be able to create roles to connect to the resources in your template
Allow SAM CLI IAM role creation [Y/n]: Enter
#Preserves the state of previously provisioned resources when an operation fails
Disable rollback [y/N]: Enter
productsFunction has no authentication. Is this okay? [y/N]: y
productsFunction has no authentication. Is this okay? [y/N]: y
OrdersFunction has no authentication. Is this okay? [y/N]: y
OrdersFunction has no authentication. Is this okay? [y/N]: y
OrdersFunction has no authentication. Is this okay? [y/N]: y
OrdersFunction has no authentication. Is this okay? [y/N]: y
shipmentsFunction has no authentication. Is this okay? [y/N]: y
shipmentsFunction has no authentication. Is this okay? [y/N]: y
shipmentsFunction has no authentication. Is this okay? [y/N]: y
inventoryProductsFunction has no authentication. Is this okay? [y/N]: y
inventoryProductsFunction has no authentication. Is this okay? [y/N]: y
inventoryProductsFunction has no authentication. Is this okay? [y/N]: y
inventoryProductsFunction has no authentication. Is this okay? [y/N]: y
inventoryOrdersFunction has no authentication. Is this okay? [y/N]: y
inventoryOrdersFunction has no authentication. Is this okay? [y/N]: y
inventoryOrdersFunction has no authentication. Is this okay? [y/N]: y
Save arguments to configuration file [Y/n]: Enter
SAM configuration file [samconfig.toml]: Enter
SAM configuration environment [default]: Enter

...

Previewing CloudFormation changeset before deployment
======================================================
Deploy this changeset? [y/N]: y
```

- Step 4 : Output
```
Outputs
---------------------------------------------------------------------------------------------------------------------------------------------
Key                 BucketName
Description         Name of S3 bucket holding Front End Content. For aws s3 sync
Value               sam-app-staticbucket-xrelzuyw1qhb

Key                 S3BucketSecureURL
Description         Domain Name of S3 bucket to holding Front End Content
Value               https://sam-app-staticbucket-xrelzuyw1qhb.s3.amazonaws.com

Key                 SiteURL
Description         URL of the Application
Value               https://d2qccrwq3x2fmd.cloudfront.net

Key                 WebEndpoint
Description         API Gateway endpoint URL for Prod stage
Value               https://fi0gip7r30.execute-api.ap-northeast-1.amazonaws.com/Prod/
---------------------------------------------------------------------------------------------------------------------------------------------

Successfully created/updated stack - sam-app in ap-northeast-1
```

- Step 5 : Copy source code FE to S3
```
cd ..
cd .\front-ecomo\
npm run build
aws s3 sync .\dist\ s3://sam-app-staticbucket-xrelzuyw1qhb
```
```
upload: dist\css\app.6e0c26b5.css to s3://sam-app-staticbucket-xrelzuyw1qhb/css/app.6e0c26b5.css
upload: dist\favicon.ico to s3://sam-app-staticbucket-xrelzuyw1qhb/favicon.ico
upload: dist\index.html to s3://sam-app-staticbucket-xrelzuyw1qhb/index.html
upload: dist\js\app.5d7e1f64.js to s3://sam-app-staticbucket-xrelzuyw1qhb/js/app.5d7e1f64.js
upload: dist\js\app.5d7e1f64.js.map to s3://sam-app-staticbucket-xrelzuyw1qhb/js/app.5d7e1f64.js.map
upload: dist\css\chunk-vendors.de510de6.css to s3://sam-app-staticbucket-xrelzuyw1qhb/css/chunk-vendors.de510de6.css
upload: dist\js\chunk-vendors.6d4dcab8.js to s3://sam-app-staticbucket-xrelzuyw1qhb/js/chunk-vendors.6d4dcab8.js
upload: dist\js\chunk-vendors.6d4dcab8.js.map to s3://sam-app-staticbucket-xrelzuyw1qhb/js/chunk-vendors.6d4dcab8.js.map
```

- Step 6 : Check services

- Step 7 : Delete source code
```
sam delete
```

```
Are you sure you want to delete the stack sam-app in the region ap-northeast-1 ? [y/N]: y
Are you sure you want to delete the folder sam-app in S3 which contains the artifacts? [y/N]: y 
...
Deleted successfully
```

