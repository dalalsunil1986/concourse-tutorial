#!/bin/sh

set -e

cd spring-petclinic

mvnw -Dmaven.repo.local=$(pwd)/cache -DskipTests package
