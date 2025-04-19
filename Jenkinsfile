pipeline {
    agent any
    tools {
        maven 'maven3'
        jdk 'java17'
    }
    stages {
        stage('download code from git') {
            steps {
                git branch: 'main', url: 'https://github.com/prajapatirahulkumar/maven-jenkins6.git'
            }
        }
        stage('make to build code') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('archive to artifact') {
            steps {
                archiveArtifacts artifacts: '**/*.war', followSymlinks: false
            }
        }
        stage('trigger to build job') {
            steps {
                build wait: false, job: 'deploy-pipeline'
            }
        }
    }
}
