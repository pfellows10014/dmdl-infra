module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"

  name = "dmfl-backend-server"

  instance_type = var.ec2_instance_type
  ami = data.aws_ami.amazon-linux-2.id
  key_name = aws_key_pair.key_pair.key_name
  vpc_security_group_ids = [module.dmfl-security-group.security_group_id]
  subnet_id = module.dmfl_vpc.public_subnets[0]
  monitoring = true
  associate_public_ip_address = var.vm_associate_public_ip_address

  user_data = file("aws-user-data.sh")

  root_block_device = [
    {
      volume_size           = var.vm_root_volume_size
      volume_type           = var.vm_root_volume_type
      delete_on_termination = true
      encrypted             = true
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "aws_volume_attachment" "extra_disk" {
  device_name = "/dev/xvde"
  volume_id   = aws_ebs_volume.extra_disk.id
  instance_id = module.ec2-instance.id
}

resource "aws_ebs_volume" "extra_disk" {
  availability_zone = module.ec2-instance.availability_zone
  size = var.vm_data_volume_size
  type = var.vm_data_volume_type
  encrypted = true
}