provider "aws" {
  region = "us-west-2"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-0e1821cdf394c633f"
  instance_type      = "t2.small"
  key_name           = "yes"
  subnet_ids         = ["subnet-0b90a55c1cddec242", "subnet-001fe7bc9c65a00cb", "subnet-05c4982b5e2f5cffd"]
  instance_count     = 2
}
