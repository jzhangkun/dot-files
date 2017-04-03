# key generation
## generate git ssh rsa key
ssh-keygen -t rsa -C “jzhangkun@gmail.com”

# ssh agent
## add launch_ssh_agent.sh
[[ -x launch_ssh_agent.sh ]] && ./launch_ssh_agent.sh
