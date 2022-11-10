source "amazon-ebs" "ami_build" {
  ami_description             = "NF entrypoint course AMI"
  ami_name                    = "${var.ami_prefix}-v${var.BUILD_NUMBER}-{{timestamp}}"
  ami_users                   = var.ami_users
  ami_virtualization_type     = "hvm"
  associate_public_ip_address = var.associate_public_ip_address
  instance_type               = var.instance_type
  region                      = var.region
  spot_price                  = "auto"
  ssh_username                = var.ssh_username
  ssh_interface               = var.ssh_interface

  subnet_id = var.subnet_id

  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      name                = "amzn2-ami-hvm-*-x86_64-ebs"
      root-device-type    = "ebs"
    }
    most_recent = true
    owners      = ["amazon"]
  }

  run_tags = {
    OS_Version = "Amazon Linux 2"
    Release    = "Latest"
    Name       = "${var.ami_prefix}"
    Extra      = "${var.ami_prefix}-v${var.BUILD_NUMBER}-{{timestamp}}"
  }

  tags = {
    OS_Version = "Amazon Linux 2"
    Release    = "Latest"
    Name       = "${var.ami_prefix}"
    Extra      = "${var.ami_prefix}-v${var.BUILD_NUMBER}-{{timestamp}}"
  }

}
