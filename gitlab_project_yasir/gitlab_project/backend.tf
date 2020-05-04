terraform {
  backend "s3" {
    bucket = "gitlab-project-yasir1" #the name of the bucket I created in aws. this is where the state file will go
    key    = "terraform-iaac-yasir2/gitlab_project_yasir/gitlab_project" # this will be the path inside the s3 where the state file will be stored
    region = "eu-west-1"
    #dynamodb_table = "state_class"
  }
}
# terraform import aws_instance.wordpress id_instance >˘> this will import the instance to terraform so that that resource can be managed by terraform. 
# we use terraform import when theres an old resource that terraform has not yet been manage before and planning to be manage by terraform. 

#enable versioning in s3 so when you do terraform apply every single time, it will save the other version
#enable encryption in s3 to make it secure

#   HOW TO STOP OTHER PEOPLE FROM DOING TERRAFORM APPLY IF SOMEBODY ELSE IS DOING TERRAFROM APPLY
#1. create dynamoDB table and then call the primary partition key "LockID"
#2. add an attribute "dynamodb_table" inside the backend s3 terraform and add the name of the dynomodb_table >> this will stop other people performing terraform apply if somebody else is already doing terraform apply