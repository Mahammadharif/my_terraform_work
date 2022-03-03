
* encryption_configuration {} block is optional in ECR repository creation 
* default encryption type is AES256 
* If  encryption_type is KMS and kms_key null then AWS create AWS managed KMS key and use it for encryption 