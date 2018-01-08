module "vpc" {
  source = "../../../modules/aws/vpc"
}


module "ami" {
  source = "../../../modules/aws/ami"
}


module "instanceprofile" {
  source = "../../../modules/aws/instanceprofile"
}


module "userdata" {
  source = "../../../modules/aws/userdata"
}


module "bastion" {
  source = "../../../modules/aws/bastion"
  vpc_id = "${module.vpc.vpc_id}"
  subnet_public_id = "${module.vpc.subnet_public_id}"
}


module "elbasg" {
  source = "../../../modules/aws/elbasg"
  vpc_id = "${module.vpc.vpc_id}"
  subnet_public_id = "${module.vpc.subnet_public_id}"
  subnet_private_id = "${module.vpc.subnet_private_id}"
}
