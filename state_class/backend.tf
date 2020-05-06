terraform {
  required_version = "0.11.14"
  backend "s3" {
    bucket = "state-class-yasir" 
    key    = "pat/to/my/key"
    region = "us-west-2"
  
  }
}