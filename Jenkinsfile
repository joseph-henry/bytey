pipeline {
    agent any

    stages {
        stage('byte') {
            steps {
                sh 'echo bytey bytey bytey' 
            }
        }
        stage('Build') {
            steps {
                sh 'make' 
                archiveArtifacts artifacts: 'bytey', fingerprint: true 
            }
        }
    }
}
