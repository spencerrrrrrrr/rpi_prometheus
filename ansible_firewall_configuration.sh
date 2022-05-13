#!/bin/bash
ansible db -b -m dnf -a "name=firewalld state=present"
ansible db -b -m service -a "name=firewalld state=started enabled=yes"
ansible db -b -m firewalld -a "zone=database state=present permanent=yes"
ansible db -b -m firewalld -a "source=192.168.60.0/24 zone=database state=enabled permanent=yes"
ansible db -b -m firewalld -a "port=3306/tcp zone=database state=enabled permanent=yes"
