#!/bin/sh

set -ex

output_dir=workspace

mvn -Dmaven.repo.local=$(pwd)/code/cache -DskipTests -f $(pwd)/code/pom.xml package

mv $(pwd)/code/target/*.jar "${output_dir}/"

cp $(pwd)/task-code/docker/Dockerfile "${output_dir}/"

ls -alR "${output_dir}"