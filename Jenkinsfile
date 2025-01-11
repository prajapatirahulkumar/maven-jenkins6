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
        stage('build java project') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('archive artifact') {
            steps {
                archiveArtifacts artifacts: '**/*.war', followSymlinks: false
            }
        }
        stage('trigger deploy') {
            steps {
               build wait: false, job: 'deplot-pipeline'
            }
        }
    }
}
