pipeline {
  agent {
    node {
      label 'dockervm'
    }

  }
  stages {
    stage('error') {
      steps {
        git(url: 'https://github.com/otlesz/r_repo.git', branch: 'ubuntu', poll: true, credentialsId: 'otlesz')
      }
    }

  }
}