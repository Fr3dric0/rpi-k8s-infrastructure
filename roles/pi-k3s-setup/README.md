pi-k3s-setup
=========

Installs and initialized the k3s cluster as an server (master) or agent.

Role Variables
--------------

If you are initializing an agent will you probably run it as a role inside a task,
to include values dynamically.

```
- name: Setup k3s
  include_role: 
    name: pi-k3s-setup
  vars:
    k3s_master_url: 'https://{{ master_node_ip }}:6443'
    k3s_master_token: '{{ master_node_token }}'
```

For master node is it sufficient to just include the role without any extra variables

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------


If you are initializing an agent will you probably run it as a role inside a task,
to include values dynamically.

```yml
- name: Setup k3s
  include_role: 
    name: pi-k3s-setup
  vars:
    k3s_master_url: 'https://{{ master_node_ip }}:6443'
    k3s_master_token: '{{ master_node_token }}'
```

For master node is it sufficient to just include the role without any extra variables

```yml
- hosts: servers
  roles:
  - { role: pi-k3s-setup }
```
