provider "aws" {
  region = "us-west-2"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-0079853be3f8f30dc"
  subnet_ids = ["subnet-0b90a55c1cddec242", "subnet-001fe7bc9c65a00cb", "subnet-0b96bdfb517b9773c"]
}
