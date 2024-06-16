Learn Serverless
---

Introduction
---

| No      | Software          | Download   |
| ------- | ------------- | --------- |
| 1       | AWS SAM CLI          |  [Link](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html)   |

Getting Start
---

#### Step 1: 
```
cd sam-app
```
```
$ tree

├── README.md
├── __init__.py
├── events
│   └── event.json
├── hello_world
│   ├── __init__.py
│   ├── app.py
│   └── requirements.txt
├── samconfig.toml
├── template.yaml
└── tests
    ├── __init__.py
    ├── integration
    │   ├── __init__.py
    │   └── test_api_gateway.py
    ├── requirements.txt
    └── unit
        ├── __init__.py
        └── test_handler.py
        
6 directories, 14 files
```

#### Step 2 :
```
 sam build
```

#### Step 3 :
```
sam deploy --guided
```
```
Looking for config file [samconfig.toml] :  Found
Reading default arguments  :  Success

Setting default arguments for 'sam deploy'
=========================================
Stack Name [sam-app]: ENTER
AWS Region [us-west-2]: ENTER
#Shows you resources changes to be deployed and require a 'Y' to initiate deploy
Confirm changes before deploy [Y/n]: n
#SAM needs permission to be able to create roles to connect to the resources in your template
Allow SAM CLI IAM role creation [Y/n]: ENTER
#Preserves the state of previously provisioned resources when an operation fails
Disable rollback [y/N]: ENTER
HelloWorldFunction may not have authorization defined, Is this okay? [y/N]: y
Save arguments to configuration file [Y/n]: ENTER
SAM configuration file [samconfig.toml]: ENTER
SAM configuration environment [default]: ENTER
```
#### Step 4 :
```
----------------------------------------------------------------------------------------------------------------------------------------------
Outputs
----------------------------------------------------------------------------------------------------------------------------------------------
...
Key                 HelloWorldApi
Description         API Gateway endpoint URL for Prod stage for Hello World function
Value               https://ets1gv8lxi.execute-api.us-west-2.amazonaws.com/Prod/hello/
...
----------------------------------------------------------------------------------------------------------------------------------------------
```









