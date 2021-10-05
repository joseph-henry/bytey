pipeline {
    agent any

    stages {
        stage('byte') {
            steps {
                sh 'echo bytey bytey bytey' 
            }
        }
        stage('byte') {
            steps {
                sh 'make' 
                archiveArtifacts artifacts: 'bytey', fingerprint: true 
            }
        }
    }
}
