#!/usr/bin/env python3
import os

print(os.system('pwd'))

URL = os.environ['TEST_LIQUIBASE_URL']
PORT = os.environ['TEST_LIQUIBASE_PORT']
DATABASE = os.environ['TEST_LIQUIBASE_DATABASE']
USER_NAME = os.environ['TEST_LIQUIBASE_USER']
PASSWORD = os.environ['TEST_LIQUIBASE_PASS']

command = "liquibase status --url=jdbc:mysql://" + URL + ":" + PORT + "/" + DATABASE + " --changeLogFile=changelog.xml --username=" + USER_NAME + " --password=" + PASSWORD
print(command)
os.system(command)

