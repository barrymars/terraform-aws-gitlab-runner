if [[ $(echo ${docker_device}) != "" ]]; then
    tee /etc/gitlab-runner/docker-machine-user-data <<EOL
#!/bin/bash -e
mkdir -p /var/lib/docker
mkfs.ext4 ${docker_device}
mount ${docker_device} /var/lib/docker
EOL
fi
