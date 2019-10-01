#!/bin/sh

set -ex

output_dir=workspace

mvn -Dmaven.repo.local=$(pwd)/spring-petclinic/cache -DskipTests -f $(pwd)/spring-petclinic/pom.xml package

mv $(pwd)/spring-petclinic/target/*.jar "${output_dir}/"

cp $(pwd)/spring-petclinic-concourse/docker/Dockerfile "${output_dir}/"

ls -alR "${output_dir}"