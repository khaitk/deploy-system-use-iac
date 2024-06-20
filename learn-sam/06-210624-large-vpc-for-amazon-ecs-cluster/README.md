# API Gateway Fargate

1. Architecture 

![image](https://github.com/isynka/deploy-system-use-iac/assets/66162813/f59d6233-ba77-4d46-962d-6fb96dcbd796)


![image](https://github.com/isynka/deploy-system-use-iac/assets/66162813/d4eab256-f08e-46dd-b69f-c33547a5e4cf)


- An API Gateway receives inbound traffic from the public internet.
- The API Gateway uses AWS Cloud Map to look up the private IP addresses of tasks that are part of an AWS Fargate deployed service.
- API Gateway uses a VPC Link to open connections to the private IP addresses inside of the VPC.
- The AWS Fargate hosted tasks receive inbound traffic over a connection opened from the API Gateway VPC Link.
- The API Gateway proxies the container's response back to the client on the public internet.


2. Getting Start

```
sam deploy \ --template-file parent.yml \ --stack-name api-gateway-fargate \ --resolve-s3 \ --capabilities CAPABILITY_IAM
```

```
sam delete --stack-name api-gateway-fargate
```

3. Introduction

**TIP**

API Gateway pricing has no minimum fees or upfront commitments. Instead you pay per API call you receive, and for the amount of outgoing data. This makes API Gateway less expensive than Application Load Balancer for many low traffic applications.

On the other hand if your server side application receives a very large number of small API calls from a large number of connected clients, then you may find the Application Load Balancer pattern for AWS Fargate to be more cost efficient. Application Load Balancer has a constant hourly charge that gives it a higher baseline cost, but the ALB can handle a large number of requests at a lower per request added cost.

