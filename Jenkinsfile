pipeline {
    agent any

  stages {
    stage('Building image') {
      steps{
          script {
             docker.withRegistry('https://hheshamrepo/shoppingchart', 'dockerhub') {
                 def frappeimage = docker.build()
                 frappeimage.push()
                }
              }
           }
       }
  }
    }
}

