pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Subhashbgowda/docker-jenkins-demo'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-demo .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 flask-demo'
            }
        }
    }
}
