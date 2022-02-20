desk_name=$1
urbit_repo_path=$2
pier_path=$3
project_path=$(pwd)

cd $urbit_repo_path/pkg
./symbolic-merge.sh base-dev $desk_name
./symbolic-merge.sh garden-dev $desk_name

cd $project_path
cp -rL $urbit_repo_path/pkg/$desk_name $pier_path
