pipeline {
    agent any

    tools {
        maven "MAVEN_HOME"
    }

    stages {
        stage('Build') {
            steps {
                git 'https://github.com/kvrs/Simplest-Spring-Boot-Hello-World.git'

                sh "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }
        stage('create Dockerimage') { 
            steps {
                sh 'docker build -t snspmr/jenkinesfirstbuild:latest . '
            }
        }    
    }
}
