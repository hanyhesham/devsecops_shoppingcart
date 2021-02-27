pipeline {
    agent any

  stages {
    stage('Building image') {
      steps{
          script {
             docker.withRegistry('hheshamrepo/shoppingchart', 'dockerhub') {
                 def frappeimage = docker.build()
                 frappeimage.push()
                }
              }
           }
       }
  }
}

