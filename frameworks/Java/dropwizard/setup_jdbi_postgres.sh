#!/bin/bash

fw_depends postgresql java maven

mvn -P postgres,jdbi clean package

java -jar target/hello-world-0.0.1-SNAPSHOT.jar server hello-world-jdbi-postgres.yml &
