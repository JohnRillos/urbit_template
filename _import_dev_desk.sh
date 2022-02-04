desk_name=$1
urbit_repo_path=$2
pier_path=$3
project_path=$(pwd)

cd $urbit_repo_path/pkg
./symbolic-merge.sh base-dev $DESK_NAME
./symbolic-merge.sh garden-dev $DESK_NAME

cd $project_path
cp -rL $urbit_repo_path/pkg/$DESK_NAME $pier_path
