sudo yum update -y
sudo amazon-linux-extras install epel

sudo yum install s3fs-fuse git wget tree docker -y
sudo usermod -aG docker ec2-user

sudo yum install -y libseccomp-devel squashfs-tools cryptsetup
sudo yum install -y https://github.com/apptainer/singularity/releases/download/v3.8.7/singularity-3.8.7-1.x86_64.rpm

sudo amazon-linux-extras install java-openjdk11

sudo yum install amazon-cloudwatch-agent -y

sudo systemctl enable docker
sudo systemctl enable amazon-cloudwatch-agent.service

echo "$(id -un):100000:65536" | sudo tee -a /etc/subuid
echo "$(id -un):100000:65536" | sudo tee -a /etc/subgid
