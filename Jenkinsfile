pipeline {
    agent { label 'docker' }
    triggers {
        githubPush()
    }
    environment {
        // Specify your environment variables.
        APP_VERSION = '1'
    }
    stages {
        stage('Build') {
            steps {
                // Print all the environment variables.
                sh 'printenv'
                sh 'echo $GIT_BRANCH'
                sh 'echo $GIT_COMMIT'
                echo 'Install non-dev composer packages and test a symfony cache clear'
                sh 'docker-compose build'
                sh 'docker-compose up -d'
                echo 'Building the docker images with the current git commit'
            }
        }

        stage('Push') {
            when {
                branch 'master'
            }
            steps {
                echo 'Deploying docker images'

            }
        }
    }
    post {
        always {
            // Always cleanup after the build.
            sh 'docker-compose down'
            sh 'rm .env'
        }
    }
}
