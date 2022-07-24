#! /bin/sh
urbit_repo_path=$1
project_path=$(pwd)

cd $urbit_repo_path/pkg
./symbolic-merge.sh base-dev base
./symbolic-merge.sh garden-dev base

cd $project_path
mkdir base
cp -rL $urbit_repo_path/pkg/base .
