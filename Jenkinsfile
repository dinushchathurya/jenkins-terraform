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
    stages {
        stage('test AWS credentials') {
            steps {
                withAWS(credentials: 'Terraform', region: 'ap-southeast-1') {
                    sh 'echo "hello Jenkins">hello.txt'
                    s3Upload acl: 'Private', bucket: 'devopslee', file: 'hello.txt'
                    s3Download bucket: 'devopslee', file: 'downloadedHello.txt', path: 'hello.txt'
                    sh 'cat downloadedHello.txt'
                }
            }
        }
    }
}