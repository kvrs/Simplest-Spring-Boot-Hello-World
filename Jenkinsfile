pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                git 'https://github.com/kvrs/Simplest-Spring-Boot-Hello-World.git'
            }
        }
        stage('Maven build') { 
            steps {
               sh 'mvn package'
            }
        }
        stage('create Dockerimage') { 
            steps {
                sh 'docker build -t snspmr/jenkinesfirstbuild:latest . '
            }
        }
    }
}
