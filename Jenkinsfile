pipeline {
  
  agent any
  stages {
      stage('Build and start containers') {
         steps {
            echo 'Build process..'
            sh 'ls'
            sh 'pwd'
            sh 'docker-compose.yml build'
            sh 'docker-compose.yml up -d'
               }
            }
        }
}
