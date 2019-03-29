pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Deploy') {
            steps {
                sh 'cp .env.example .env'
                sh 'pwd && ls'
                sh 'sudo docker-compose down'
                sh 'sudo docker-compose up -d'
                sh 'sleep 10'
            }
        }
    }
}
