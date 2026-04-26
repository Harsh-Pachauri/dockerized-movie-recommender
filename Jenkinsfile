pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "harshpachauri/movie-recommender"
        CONTAINER_NAME = "movie-recommender-container"
    }

    stages {

        stage('Clone Repository') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Harsh-Pachauri/dockerized-movie-recommender.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_IMAGE .'
                }
            }
        }

        stage('Run Container (Test)') {
            steps {
                script {
                    sh '''
                    docker rm -f $CONTAINER_NAME || true
                    docker run -d -p 5000:5000 --name $CONTAINER_NAME $DOCKER_IMAGE
                    '''
                }
            }
        }

        stage('Health Check') {
            steps {
                script {
                    sleep 10
                    sh '''
                    curl -f http://localhost:5000 || exit 1
                    '''
                }
            }
        }

        stage('Cleanup') {
            steps {
                script {
                    sh '''
                    docker stop $CONTAINER_NAME
                    docker rm $CONTAINER_NAME
                    '''
                }
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline executed successfully!'
        }
        failure {
            echo '❌ Pipeline failed!'
        }
    }
}