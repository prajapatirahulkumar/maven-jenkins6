pipeline {
    agent any
    stages {
        stage('download from git code') {
            steps {
                git branch: 'main', url: 'https://github.com/prajapatirahulkumar/maven-jenkins6.git'
            }
        }
        stage('mvn clean package') {
            steps {
                sh '''
                docker build -t prajapatirahul/javawebapp: ${BUILD_NUMBER} .
                dcoker tag prajapatirahul/javawebapp:v1 ${BUILD_NUMBER} prajapatirahul/javawebapp:latest 
                docker push prajapatirahul/javawebapp:${BUILD_NUMBER}
                docker push prajapatirahul/javawebapp:latest
                '''
            }
        }
        
    }
}
