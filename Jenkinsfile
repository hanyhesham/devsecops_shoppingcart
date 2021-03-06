node {

  checkout scm
  def dockerImage

  stage('Build image') {
    dockerImage = docker.build("microopsdev/shoppingcart")
  }

  stage('Push image') {
    docker.withRegistry('https://registry-1.docker.io/v2/', 'dockerhub') {
      dockerImage.push()
    }
  }

  stage('Update Deployment') {
      script {
          sh '/snap/bin/kubectl patch deployment shoppingcart -n default -p \"{\\"spec\\": {\\"template\\": {\\"metadata\\": { \\"labels\\": { \\"redeploy\\": \\"$(date +%s)\\"}}}}}\"'
    }
  }

}
