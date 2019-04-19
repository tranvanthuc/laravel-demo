pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        // stage('Build') {
        //     steps {
        //         sh './jenkins/scripts/build.sh'
        //     }
        // }
        
        // stage('Test') {
        //     steps {
        //         sh './jenkins/scripts/test.sh'
        //     }
        // }
       
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                echo 'Prepare to deploy'
            }
        }

        stage("Deploy") {
            steps {
                sh "./jenkins/scripts/deploy.sh ${env.BRANCH_NAME}"
            }
        }
    }
    
    post {
        always {
            sh './jenkins/scripts/kill.sh'
        }
    }
}
