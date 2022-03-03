* This document specifies the process of push and pull images from AWS ECR 

1. Docker installation required on any machine to push and pull image test 
2. Create a ECR private repository 
3. ECR authentication with docker using authorization token 
    * Authorization of ECR based on IAM policy of the user or private registry settings 
      refer here : https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions-create.html

    * Get ECR authenticate tocken and pass it to docker login 
    -----------------------------------------------------------------------------------------

    aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com
    
    -----------------------------------------------------------------------------------------

    note: token valid for 12hrs 

4. Tag image with repository name 

    * need to tag image with matching repository name 
    -----------------------------------------------------------------------------------------

    docker tag e9ae3c220b23 aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag

    -----------------------------------------------------------------------------------------

5.  Push docker image 
    -----------------------------------------------------------------------------------------

    docker image push aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag 

    -----------------------------------------------------------------------------------------

    note : if tag not specified then it consider to be latest 

6. Pull docker image 
    -----------------------------------------------------------------------------------------

    docker image pull aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag 

    -----------------------------------------------------------------------------------------