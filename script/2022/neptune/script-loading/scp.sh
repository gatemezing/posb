#/bin/bash
scp -i AWS-EU-Paris-key.pem opoceGenData/output000???.gz ubuntu@ec2-35-180-234-110.eu-west-3.compute.amazonaws.com:/home/ubuntu/opoceGenData
