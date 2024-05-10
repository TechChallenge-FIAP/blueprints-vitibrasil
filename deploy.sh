#!/bin/bash
sudo yum update -y 
sudo yum install make -y
sudo amazon-linux-extras install python3.8 -y
aws s3 sync s3://vitibrasil-integrations/project/ /home/ec2-user/
unzip /home/ec2-user/vitibrasil_api.zip -d /home/ec2-user/
cd /home/ec2-user/
make install
make run-prod
