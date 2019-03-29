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
                sh 'sudo docker-compose up -d'
                sh 'sleep 10 && sudo docker-compose run web php artisan migrate'
            }
        }
    }
}
