provider "aws" {
  region = "us-west-2"
}

module "lb-asg" {
  source        = "../modules/lb-asg"
  subnets       = ["subnet-0b90a55c1cddec242", "subnet-001fe7bc9c65a00cb", "subnet-05c4982b5e2f5cffd"]
  ami_id        = "ami-0e516d5b566ae34b2"
  instance_type = "t2.small"
  key_name      = "yes"
  environment   = "dev"
  vpc_id        = "vpc-0079853be3f8f30dc"
}
