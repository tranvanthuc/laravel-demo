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
       
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                script {
                    def CHECK_DEPLOY = input message: 'Finished using the web site? (Click "Proceed" to continue)'
                    env.CHECK_DEPLOY = CHECK_DEPLOY
                }
                echo "Finish Delivery ${env.CHECK_DEPLOY}"
            }
        }

        stage('Kill') {
            steps {
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
}
