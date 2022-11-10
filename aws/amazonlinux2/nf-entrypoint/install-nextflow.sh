cd /tmp; curl -s https://get.nextflow.io | bash
mkdir -p /home/ec2-user/bin; mv /tmp/nextflow /home/ec2-user/bin/
chmod +rx /home/ec2-user/bin/nextflow
