aws_region     = "us-east-1"

# Network
vpc_cidr           = "10.92.0.0/16"
public_subnet_cidr_list = ["10.92.1.0/24", "10.92.2.0/24"]
private_subnet_cidr_list = ["10.92.101.0/24", "10.92.102.0/24"]

# Virtual Machine Settings
vm_instance_name               = "dmflsrv01"
vm_instance_type               = "t3.micro"
vm_associate_public_ip_address = true
vm_root_volume_size            = 20
vm_root_volume_type            = "gp3"
vm_data_volume_size            = 10
vm_data_volume_type            = "gp3"