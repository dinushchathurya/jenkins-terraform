pipeline {
    agent any
    tools {
       terraform 'terraform'
    }
    stages {
        stage('Git checkout') {
            steps{
                git 'https://github.com/dinushchathurya/jenkins-terraform.git'
            }
        }
        stage('terraform format check') {
            steps{
                sh 'terraform fmt'
            }
        }
        stage('terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps {
                withAWS(credentials: 'jenkins-test-user', region: 'ap-southeast-1') {
                   sh 'terraform apply --auto-approve'
                }
            }
        }
    }

    
}