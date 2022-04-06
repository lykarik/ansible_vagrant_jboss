hazelcast-client-module install
###############
:date: 2015-10-12
:category: RedHat, Centos, A-MQ

Overview
--------
Ansible-роль для установки и настройки JBoss A-MQ
Параметры который используется в установке:
	* amq_version
	* amq_dir
	* data_dir
	* user
	* password
	* amq_connections
Все переменные определяются для каждого хоста, или в рамках выполнения роли.
Пример для стенда ПСИ (файл pmq01.yml):

	amq_version: 6.1
	amq_dir: /opt/AMQ
	data_dir: /u01/kahadb
	amq_connections: [{name: "pmq01 -> pmq02", host: pmq02}]
	
Defaults
----------
Содержит ряд переменных, которые отвечают за конфигурацию AMQ по-умолчанию:

	amq_version: 6.1
	amq_dir: /u01/AMQ
	data_dir: /u01/kahadb
	user: admin
	password: admin123!@#

Вызов роли
----------
Пример (установка с нуля):

ansible-playbook -i inventories/voshod/hosts playbooks/amq.yml -l ssp-mq01 -bK --vault-password-file vault.file

Пример (установка с очисткой директорий):

ansible-playbook -i inventories/voshod/hosts playbooks/amq.yml -l ssp-mq01 -bK --vault-password-file vault.file --extra-vars="cleanup=True"

Templates | Files
------------------
В папках templates|files лежат дистрибутивы и конфигурации соответствующих версий (6.1 или 6.2) A-MQ
