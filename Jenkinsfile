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
            sh 'pipenv install'
          }
        }
      }
    }
    stage('tests') {
      steps {
        script {
          dir('backend/') {
            sh 'pipenv run python manage.py test'
          }
        }
      }
    }
  }
}
