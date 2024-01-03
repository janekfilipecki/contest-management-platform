pipeline {
  agent any
  triggers {
    githubPush()
  }
  stages {
    stage('install dependencies') {
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
    stage('build') {
      steps {
        script {
          dir('backend/') {
            sh 'python3 -m pipenv run python manage.py migrate'
          }
        }
      }
    }
    stage('deploy') {
      steps {
        script {
          dir('backend/') {
            sh './deploy_backend.sh'
          }
        }
      }
    }
  }
}
