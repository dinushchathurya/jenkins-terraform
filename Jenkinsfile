// pipeline {
//     agent any
//     tools {
//        terraform 'terraform'
//     }
//     stages {
//         stage('Git checkout') {
//             steps{
//                 git 'https://github.com/dinushchathurya/jenkins-terraform.git'
//             }
//         }
//         stage('terraform format check') {
//             steps{
//                 sh 'terraform fmt'
//             }
//         }
//         stage('terraform Init') {
//             steps{
//                 sh 'terraform init'
//             }
//         }
//         stage('terraform apply') {
//             steps {
//                 withAWS(credentials: 'Terraform', region: 'ap-southeast-1') {
//                    sh 'terraform apply --auto-approve'
//                 }
//             }
//         }
//     }

    
// }

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
        stage('Terraform Plan') {
            steps{
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                withAWS(credentials: 'Terraform', region: 'ap-southeast-1') {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}