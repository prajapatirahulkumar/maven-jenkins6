pipeline {
    agent any
    stages {
        stage('download from git code') {
            steps {
                git branch: 'main', url: 'https://github.com/prajapatirahulkumar/maven-jenkins6.git'
            }
        }
        stage('build') {
            steps {
                sh '''
                docker build -t prajapatirahulkumar/javawebapp:${BUILD_NUMBER} .
                docker tag prajapatirahulkumar/javawebapp:${BUILD_NUMBER} prajapatirahulkumar/javawebapp:latest 
                docker push prajapatirahul/javawebapp:${BUILD_NUMBER}
                docker push prajapatirahul/javawebapp:latest
                '''
            }
        }
        
    }
}
