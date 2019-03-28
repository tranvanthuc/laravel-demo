pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Deploy') {
            steps {
                sh 'pwd'
                sh 'cd src && /usr/local/bin/docker-compose down'
                sh 'cd src && /usr/local/bin/docker-compose up -d'
                sh 'pwd'
                sh 'sleep 10 && cd src && /usr/local/bin/docker-compose run web php artisan migrate'
            }
        }
    }
}
