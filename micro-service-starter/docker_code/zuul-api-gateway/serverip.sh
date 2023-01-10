#!/bin/bash
home=/var/lib/jenkins/workspace/zuul-api-gateway/micro-service-starter/docker_code/zuul-api-gateway/src/main/resources
chmod +x $home/application.yml

# Get the public IP address
PUBLIC_IP=$(curl -s https://api.ipify.org)

# Print the public IP address
echo "Your public IP address is: $PUBLIC_IP"
sed -i 's/34.125.160.118/$PUBLIC_IP/g' $home/application.yml
