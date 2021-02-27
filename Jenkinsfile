pipeline {
    agent any

  stages {
    stage('Building image') {
        dockerImage = docker.build(hheshamrepo/shoppingchart:latest)
        dockerImage.push()
       }
  }
}

