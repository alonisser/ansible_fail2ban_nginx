#!/usr/bin/env bash
ansible-playbook --syntax-check --list-tasks -i tests/hosts tests/playbook.yml
ansible-playbook -i tests/hosts tests/playbook.yml | grep -q 'changed=1.*failed=0' &&
 (echo 'first change: pass' && exit 0) || (echo 'first change: fail' && exit 1)

stat /etc/fail2ban/filter.d/nginx-badbots.conf
stat /etc/fail2ban/jail.d/nginx-jails.conf
sudo fail2ban-client status | grep "Number of jail" | cut -d ":" -f 2 | grep 5 &&
 (echo 'jail number test 5: pass' && exit 0) || (echo 'jail number test 5: fail' && exit 1)

ansible-playbook -i tests/hosts tests/playbook.yml   | grep -q 'changed=0.*failed=0' &&
 (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)