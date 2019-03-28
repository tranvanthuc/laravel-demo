pipeline {
    agent { node { label 'swarm-ci' } }
    stages {
        stage('Build') {
            steps {
                sh 'docker-compose build'
                sh 'docker-compose up -d'
                sh './jenkins/scripts/build.sh'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
                sh 'vendor/bin/phpunit'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
}
