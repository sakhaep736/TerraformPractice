module "ec2_instance" {
  source = "../Day8-Module-main"
  ami_id = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"
  keypair = "keypair"
}