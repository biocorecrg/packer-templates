cd /tmp; wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo -u ec2-user /bin/bash /tmp/Miniconda3-latest-Linux-x86_64.sh -b -f -p /home/ec2-user/miniconda
sudo -u ec2-user /home/ec2-user/miniconda/bin/conda install -c conda-forge -y awscli
rm -f /tmp/Miniconda3-latest-Linux-x86_64.sh
sudo -u ec2-user /home/ec2-user/miniconda/bin/conda init bash