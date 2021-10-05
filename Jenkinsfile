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
                sh '/usr/bin/w'
            }
        }
        stage('debug more') {
            steps {
                sh '/usr/bin/pwd ; /usr/bin/ls -la'
            }
        }
    }
}
