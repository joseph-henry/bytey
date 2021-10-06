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
        stage('build') {
            parallel(
            a: {
                sh 'whoami'
            },
            b: {
                sh 'whoami'
            }
            c: {
                sh 'whoami'
            }
            )
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
