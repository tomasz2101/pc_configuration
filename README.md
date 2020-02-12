# pc_configuration

### SUBMODULE INIT
git submodule add git@github.com:tomasz2101/tools.git tools

git submodule update --recursive --remote





ansible-playbook -i envs/home.yaml playbook.yml -K\
ansible-playbook -i envs/work playbook.yml --extra-vars "ansible_sudo_pass=$ansible_sudo_pass"
