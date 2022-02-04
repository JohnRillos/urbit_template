DESK_NAME="exampledesk"
urbit_repo_path=$1
pier_path=$2
project_path=$(pwd)

cd $urbit_repo_path/pkg
./symbolic-merge.sh base-dev $DESK_NAME
./symbolic-merge.sh garden-dev $DESK_NAME

cd $project_path
cp -rL $urbit_repo_path/pkg/$DESK_NAME $pier_path
