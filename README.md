# centos7-ansible26
CentOS7, python2.7, ansible2.6

---

### Use Container

```
git clone https://github.com/yasu0519/centos7-ansible26.git
cd centos7-ansible26
docker-compose up --build -d
```

---

### ansible error "Control socket connect"
* /etc/ansible/ansible.cfg add
```
docker exec -it centos7_ansible26 /bin/bash
vi  /etc/ansible/ansible.cfg
# add
[ssh_connection]
control_path_dir = /dev/shm/ansible_control_path
```
