node {
    checkout scm
    stage('Build') {
        sh 'printenv'
        sh 'echo $GIT_BRANCH'
        sh 'echo $GIT_COMMIT'
        sh 'chmod 755 -R .'
        sh 'cp .env.example .env'
        sh 'ls'
        echo 'Install non-dev composer packages and test a symfony cache clear'
        sh 'docker-compose -f docker-compose.yml build'
        sh 'docker-compose -f docker-compose.yml up -d'
        echo 'Building the docker images with the current git commit'
    }
}
