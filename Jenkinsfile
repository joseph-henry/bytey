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
                sh 'echo got here'
            }
        }
        stage('debug more') {
            steps {
                sh '/usr/bin/pwd ; /usr/bin/ls -la'
            }
        }
    }
}
