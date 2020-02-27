if [[ $(echo ${docker_device}) != "" ]]; then
    tee /root/docker-machine-user-data <<EOL
#!/bin/bash -e
mkdir -p /var/lib/docker
mount -t nfs4 -o nfsver=4.1,rsize=1048576,wsize=1048576,soft,timeo=600,retrans=2 $efs_dns_name:/ $/var/lib/docker
echo "$efs_dns_name:/ /var/lib/docker nfs nfsvers=4.1,rsize=1048576,wsize=1048576,soft,timeo=600,retrans=2 0 2" | tee -a /etc/fstab
EOL
fi
