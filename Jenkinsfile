pipeline {
  
  agent any
  stages {
      stage('Build and start containers') {
         steps {
            echo 'Build process..'
            sh 'ls'
            sh 'pwd'
            sh 'docker compose build'
            sh 'docker compose up -d'
               }
            }
        }
}
