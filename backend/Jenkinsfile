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
            sh 'python3 -m pipenv install psycopg2-binary'
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
    stage('migrations') {
      steps {
        script {
          dir('backend/') {
            sh './backend_migrations.sh'
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
