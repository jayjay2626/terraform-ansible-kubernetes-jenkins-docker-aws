pipeline{

    agent any

    tools {
        terraform 'terraform'
    }

    environment {
        DOCKER_HUB_REPO = "rangeley826/flaskapp"
        CONTAINER_NAME = "flaskapp"
        REGISTRY_CREDENTIAL = "dockerhub"
    }

    stages {
        stage('SCM Checkout'){
            steps {
                // remove folder if already exist
                sh 'rm -rf terraform-ansible-jenkins-docker'

                // clone the repository from github
                sh 'git clone https://github.com/jayjay2626/terraform-ansible-jenkins-aws-docker.git'
            }
        }
        

        stage (Building New Docker Image) {
            steps {
                script {
                    dir('./docker') {
                        //  Building new image
                        sh 'docker image build -t $DOCKER_HUB_REPO:latest .'
                        sh 'docker image tag $DOCKER_HUB_REPO:latest $DOCKER_HUB_REPO:$BUILD_NUMBER'
                        echo "Image successfully built"
                    }
                }
            }
        }


       
        stage('Updating Image On Dockerhub'){
            steps {
                script {
                    //  Pushing Image to Repository
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER1', passwordVariable: 'PASS1')]) {
                    sh 'docker login -u "$USER1" -p "$PASS1"'
                    }
                    sh 'docker push $DOCKER_HUB_REPO:$BUILD_NUMBER'
                    sh 'docker push $DOCKER_HUB_REPO:latest'
                
                    echo "Image has been updated on dockerhub"
                }
            }
        }
        

    }
}