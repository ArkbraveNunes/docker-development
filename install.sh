#! /bin/bash

npm i

if [ ! -f .env ]
then
    cp .env.example .env
    code .env

    read -p "Now, you need edit .env file, when you finish, come back and press Enter with you want continue" edited
fi

DOCKER_DIR=$PWD/.docker
PROJECTS=$(ls $DOCKER_DIR)
for PROJECT in $PROJECTS
do
    if [ -f $DOCKER_DIR/$PROJECT/.giturl ]
    then
        echo "Clonning $PROJECT ..."
        GIT_URL=$(cat $DOCKER_DIR/$PROJECT/.giturl)

        git clone $GIT_URL $PWD/projects/$PROJECT

        echo "Installing the packages of $PROJECT ..."

        echo "$PROJECT ready to run"
    fi
done

echo "All projects are installed"
