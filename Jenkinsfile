pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                git 'https://github.com/kvrs/Simplest-Spring-Boot-Hello-World.git'
            }
        }
        stage('maven test') { 
            steps {
               sh 'mvn test'
            }
        }
        stage('create Dockerimage') { 
            steps {
                sh 'docker build -t snspmr/jenkinesfirstbuild:latest . '
            }
        }
    }
}
