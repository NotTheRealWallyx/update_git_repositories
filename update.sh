#!/usr/bin/env bash

update_repository(){
    git fetch
    git pull
}

enter_folder_and_print_inside_exit(){
    cd $1
    base_name=$(basename `git rev-parse --show-toplevel`)
    echo "Updating repository $base_name"
    update_repository
    cd ..
}


echo "Thanks for using me!"

echo "Let me update the repositories"

cd ..

for dir in */; do
  enter_folder_and_print_inside_exit $dir
done