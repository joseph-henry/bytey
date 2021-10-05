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
        # stage('make') {
        #     steps {
        #         sh 'make' 
        #         archiveArtifacts artifacts: 'bytey', fingerprint: true 
        #     }
        # }        
    }
}
