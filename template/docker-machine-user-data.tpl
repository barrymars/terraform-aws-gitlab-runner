if [[ $(echo ${docker_device}) != "" ]]; then
    tee /root/docker-machine-user-data <<EOL
#!/bin/bash -e
mkdir -p /var/lib/docker
mkfs.ext4 ${docker_device}
mount ${docker_device} /var/lib/docker
EOL
fi
