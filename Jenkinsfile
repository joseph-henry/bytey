pipeline {
    agent any

    stages {
        stage('byte') {
            steps {
                sh 'echo byte byte byte'
                sh 'echo byte byte byte'
                sh 'echo byte byte byte'
            }
        }
        stage('debug') {
            steps {
                sh 'echo got here'
                sh 'echo got here'
                sh 'echo got here'
            }
        }
        stage('debug more') {
            steps {
                sh '''
                   env
                   w
                   pwd
                   ls -la
                '''
            }
        }
    }
}
