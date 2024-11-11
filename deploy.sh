#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u sonaligupta20 -p dckr_pat_AfqWvmPw0Hay2q0R5COByySHACM
    docker tag test sonaligupta20/dev
    docker push sonaligupta20/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u sonaligupta20 -p dckr_pat_AfqWvmPw0Hay2q0R5COByySHACM    
    docker tag test sonaligupta20/prod 
    docker push sonaligupta20/prod
fi
