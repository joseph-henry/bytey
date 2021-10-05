pipeline {
    agent any

    stages {
        stage('byte') {
            steps {
               sh 'echo byte byte byte'
               sh 'echo byte byte byte'            
            }
        }
        stage('debug') {
            steps {
                sh 'env'            
                sh 'whoami'
                sh 'pwd'
            }
        }
    }
}
