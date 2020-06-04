(
cat << EOF

Host $2
HostName $1
User root
PreferredAuthentications publickey
 IdentityFile ~/.ssh/id_rsa
EOF
) >> config

scp -P $3 -p ~/.ssh/id_rsa.pub root@$1:/root/.ssh/authorized_keys
ssh $2
