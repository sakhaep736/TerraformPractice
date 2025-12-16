module "ec2" {                              # we can give s3 details as well if needed
  source = "../Day8-Module-main"
  ami_id = "ami-00ca570c1b6d79f36"
  instance_type = "t2.nano"
  keypair = "keypair"
}