pipeline {
    agent any
    tools {
       terraform 'terraform'
    }
    stages {
        stage('Git Checkout') {
            steps{
                git 'https://github.com/dinushchathurya/jenkins-terraform.git'
            }
        }
        stage('Terraform Format') {
            steps{
                sh 'terraform fmt'
            }
        }
        stage('Terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                withAWS(credentials: 'terraform', region: 'ap-southeast-1') {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
        stage('Terraform Destroy') {
            steps {
                withAWS(credentials: 'terraform', region: 'ap-southeast-1') {
                    sh 'terraform destroy --auto-approve'
                }
            }
        }
    }
}