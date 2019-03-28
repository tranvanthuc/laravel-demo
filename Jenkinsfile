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
                sh '/usr/local/bin/docker-compose down'
                sh '/usr/local/bin/docker-compose up -d'
                sh 'pwd'
                sh 'sleep 10 && /usr/local/bin/docker-compose run web php artisan migrate'
            }
        }
    }
}
