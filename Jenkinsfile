pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh './jenkins/scripts/build.sh'
            }
        }

        stage('Stop') {
            steps {
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
}
