packer {
  required_version = ">= 1.7.0"
  required_plugins {
    amazon = {
      version = "<= 1.0.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

build {

  name = "${var.ami_prefix}"
  sources = [
    "source.amazon-ebs.ami_build"
  ]

  provisioner "shell" {
    scripts = [
      "${path.root}/install-packages.sh",
      "${path.root}/install-miniconda.sh"
    ]
  }
}
