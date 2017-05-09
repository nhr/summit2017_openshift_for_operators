# Setup Files
These files are essential to the configuration of our lab environment, which ran as qcow2-based VM images running in libvirt within a libvirt-managed virtual subnet.

`openshift.xml`  
This file is the libvirt virtual network definition that was used for the lab environment. It describes a subnet in which DHCP is used to assign IP addresses to VMs. However, it also contains several MAC address to IP address mappings that ensure that our named hosts always get the same IP addresses from the DHCP server.

`ansible_hosts_file`  
This file was used as the `/etc/ansible/hosts` file on the machine where the OpenShift installation was run for this lab.

**Putting it all together**
If you use the `openshift.xml` file as a guide for naming and setting up machines with a minimal OS installation, you can then use the OpenShift Ansible 'BYO' playbook with the provided `ansible_hosts_file` to run a deployment. Note that this deployment will _not_ include the LDAP server that was part of the lab. In the absence of LDAP, you can use the simpler [htpasswd-based authentication](https://docs.openshift.com/container-platform/latest/install_config/configuring_authentication.html#HTPasswdPasswordIdentityProvider).
