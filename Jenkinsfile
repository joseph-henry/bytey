pipeline {
    agent any

    stages {
        stage('byte') {
            steps {
                sh 'echo bytey bytey bytey' 
            }
        }
        stage('debug') {
            steps {
                sh 'w'
            }
        }
        stage('debug more') {
            steps {
                sh 'pwd ; ls -la'
            }
        }
    }
}
