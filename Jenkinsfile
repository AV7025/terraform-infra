pipeline {
  agent any

  environment {
    ARM_CLIENT_ID       = credentials('AZURE_CLIENT_ID')
    ARM_CLIENT_SECRET   = credentials('AZURE_CLIENT_SECRET')
    ARM_SUBSCRIPTION_ID = credentials('AZURE_SUBSCRIPTION_ID')
    ARM_TENANT_ID       = credentials('AZURE_TENANT_ID')
  }

  stages {
    stage('Checkout Code') {
      steps {
        git branch: 'main', url: 'https://github.com/AV7025/terraform-infra.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -var="subscription_id=$ARM_SUBSCRIPTION_ID" -var="client_id=$ARM_CLIENT_ID" -var="client_secret=$ARM_CLIENT_SECRET" -var="tenant_id=$ARM_TENANT_ID"'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply -auto-approve -var="subscription_id=$ARM_SUBSCRIPTION_ID" -var="client_id=$ARM_CLIENT_ID" -var="client_secret=$ARM_CLIENT_SECRET" -var="tenant_id=$ARM_TENANT_ID"'
      }
    }
  }
}
