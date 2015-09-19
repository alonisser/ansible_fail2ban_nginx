#!/usr/bin/env bash
ansible-playbook --syntax-check --list-tasks -i tests/hosts tests/playbook.yml
