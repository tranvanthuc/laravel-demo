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
                sh 'export DOCKER_HOST=127.0.0.1'
                sh '/usr/local/bin/docker-compose up -d'
                sh 'pwd && service docker restart'
                sh 'sleep 10 && /usr/local/bin/docker-compose run web php artisan migrate'
            }
        }
    }
}
