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

    stage('pwd') {
      steps {
        echo ' ${env.WORKSPACE}'
      }
    }

    stage('sh') {
      steps {
        sh '  mkdir -p output'
      }
    }

    stage('run_report') {
      steps {
        sh ' ant -f build_linux.xml report'
      }
    }

  }
}