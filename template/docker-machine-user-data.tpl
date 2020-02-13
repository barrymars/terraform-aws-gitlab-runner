if [[ $(echo ${mount_nvme}) == true ]]; then
    tee /tmp/docker-machine-user-data <<EOL
#!/bin/bash -e
mkdir -p /var/lib/docker
mkfs.ext4 /dev/nvme0n1
mount /dev/nvme0n1 /var/lib/docker
EOL
fi
