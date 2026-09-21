pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t prt-app:${BUILD_NUMBER} .'
            }
        }

        stage('Verify') {
            steps {
                sh 'docker images'
            }
        }
    }
}
