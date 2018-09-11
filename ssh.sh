(
cat << EOF
Host $1
HostName $2
User root
PreferredAuthentications publickey
 IdentityFile ~/.ssh/id_rsa
EOF
) >> config
cat << EOF
ClientAliveInterval 30
ClientAliveCountMax 86400
EOF
) >> /etc/ssh/sshd_config

scp -p ~/.ssh/id_rsa.pub root@$2:/root/.ssh/authorized_keys
