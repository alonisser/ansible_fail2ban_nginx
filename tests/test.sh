#!/usr/bin/env bash
set -e

ansible-playbook --syntax-check --list-tasks -i tests/hosts tests/playbook.yml &&
 (echo 'syntax check: pass' && exit 0) || (echo 'syntax check: fail' && exit 1)

ansible-playbook -i tests/hosts tests/playbook.yml

stat /etc/fail2ban/filter.d/nginx-badbots.conf
stat /etc/fail2ban/jail.d/nginx-jails.conf

sudo fail2ban-client status #| grep "Number of jail" | cut -d ":" -f 2 | grep 5 &&
 #(echo 'jail number test 5: pass' && exit 0) || (echo 'jail number test 5: fail' && exit 1)

ansible-playbook -i tests/hosts tests/playbook.yml   | grep -q 'changed=0.*failed=0' &&
 (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)