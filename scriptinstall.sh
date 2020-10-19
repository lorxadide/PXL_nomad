yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
yum -y install nomad
yum -y install consul
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl enable nomad
systemctl enable consul
systemctl enable docker
systemctl start docker
systemctl start nomad
systemctl start consul