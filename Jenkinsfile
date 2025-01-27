pipeline {
    agent any
    stages {
        stage('git-code-download') {
            steps {
                echo "gownload code from git"
                git branch: 'main', url: 'https://github.com/prajapatirahulkumar/maven-jenkins6.git'

            }
        }
        stage('creare-docker-images') {
            steps {
                sh '''
                docker build -t prajapatirahul/mavawebapp:${BUILD_NUMBER} .
                docker tag -t prajapatirahul/mavawebapp:${BUILD_NUMBER} prajapatirahul/mavawebapp:latest
                docker push prajapatirahul/mavawebapp:${BUILD_NUMBER}
                docker push prajapatirahul/mavawebapp:latest
                '''
                
            }
        }
    }
}
