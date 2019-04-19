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
        
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
       
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                echo 'Deploy'
            }
        }

        stage("Gather Deployment Parameters") {
            steps {
                timeout(time: 30, unit: 'SECONDS') {
                    script {
                        // Show the select input modal
                       def INPUT_PARAMS = input message: 'Please Provide Parameters', ok: 'Next',
                                        parameters: [
                                        choice(name: 'ENVIRONMENT', choices: ['dev','qa'].join('\n'), description: 'Please select the Environment'),
                                        choice(name: 'IMAGE_TAG', choices: getDockerImages(), description: 'Available Docker Images')]
                        env.ENVIRONMENT = INPUT_PARAMS.ENVIRONMENT
                        env.IMAGE_TAG = INPUT_PARAMS.IMAGE_TAG
                    }
                }
            }
        }
    }
    
    post {
        always {
            sh './jenkins/scripts/kill.sh'
        }
    }
}
