pipeline {
    agent any

    stages {
        stage('debug') {
            steps {
                sh 'env'            
                sh 'whoami'
                sh 'pwd'
            }
        }
        stage('byte') {
            steps {
               sh 'echo byte byte byte'
               sh 'echo byte byte byte'
               sh 'echo byte byte byte'
               sh 'echo byte byte byte'
               sh 'echo byte byte byte'
            }
        }
    }
}
