pipeline {
  agent any
  triggers {
    githubPush()
  }
  stages {
    stage('hello') {
      steps {
        sh 'echo "Hello World"'
      }
    }
    stage('build') {
      steps {
        script {
          dir('backend/') {
            echo 'Install dependencies'
            sh 'python3 --version'
            sh 'pip3 install pipenv'
            sh 'python3 -m pipenv install'
          }
        }
      }
    }
    stage('tests') {
      steps {
        script {
          dir('backend/') {
            sh 'python3 -m pipenv run python manage.py test'
          }
        }
      }
    }
  }
}
