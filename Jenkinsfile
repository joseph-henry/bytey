pipeline {
    agent any

    def platforms = ["linux", "mac", "windows"]

    stages {
        stage('debug') {
            def builds = [:]
            platforms.each { p ->
                builds[p] = {
                     stage(p) {
                         steps {
                             sh 'env'
                             sh 'whoami'
                             sh 'pwd'
                         }
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