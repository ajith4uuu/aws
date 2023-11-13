pipeline {
    agent any

    parameters {
        string(name: 'BUCKET_NAME', defaultValue: '', description: 'Name of the S3 Bucket to create')
    }

    environment {
        AWS_CREDENTIALS = credentials('AKIA4WXNY2OTTGJ67H4S')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh "terraform apply -auto-approve -var 'bucket_name=${params.BUCKET_NAME}'"
            }
        }
    }
}
