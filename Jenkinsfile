pipeline {
    agent any
    stages {
        stage('git-code-download') {
            steps {
                echo "Download code from Git"
                git branch: 'main', url: 'https://github.com/devopstechlab/maven-jenkins6.git'
            }
        }
        stage('create-docker-image') {
            steps {
                sh '''
                docker build -t devopstechlab/mytomcat:${BUILD_NUMBER} .
                docker tag devopstechlab/mytomcat:${BUILD_NUMBER} devopstechlab/mytomcat:latest
                docker push devopstechlab/mytomcat:${BUILD_NUMBER}
                docker push devopstechlab/mytomcat:latest
                '''
            }
        }
    }
}
