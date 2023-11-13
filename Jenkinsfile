pipeline {
    agent any

    parameters {
        string(name: 'BUCKET_NAME', defaultValue: '', description: 'The name of the S3 bucket to create')
    }

    stages {
        stage('Terraform Apply') {
            steps {
                sh 'terraform init'
                sh 'terraform apply -auto-approve -var "bucket_name=${params.BUCKET_NAME}"'
            }
        }
    }
}
