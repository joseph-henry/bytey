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
            parallel {
                stage('one') {
                    steps {
                        sh "echo byte"
                    }
                }
                stage('two') {
                    steps {
                        sh "echo byte"
                    }
                }
                stage('three') {
                    steps {
                        sh "echo byte"
                    }
                }
                stage('four') {
                    steps {
                        sh "make"
                    }
                }                
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
