# 🛠️ Infrastructure as Code with Terraform and Docker on AWS ECS

This repository contains the configuration files and resources created during the **Infrastructure as Code: Docker and Elastic Container Service (ECS) with Terraform on AWS** course from [Alura](https://cursos.alura.com.br/course/infraestrutura-codigo-terraform-docker-elastic-container-service-aws).

## 📚 What I learned in the course

✅ Understanding IAM permissions and access control  
🐳 Deploying Dockerized applications on AWS ECS  
🧠 Introduction to Elastic Container Service (ECS)  
📦 Setting up a Docker image repository on AWS (ECR)  
☁️ Running containers in the cloud  
🔐 Exploring Virtual Private Cloud (VPC) and its benefits  
⚖️ Understanding and using different types of Load Balancers in AWS  

## 🧰 Technologies & Tools

- Terraform  
- Docker  
- AWS ECS  
- AWS ECR  
- AWS VPC  
- Load Balancers  
- Ubuntu / WSL2  

## 🚀 How to run

1. Build and push the Docker image:

    docker build -t <image-name> .

    aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin <your-account-id>.dkr.ecr.us-west-2.amazonaws.com

    docker tag <your-image-name> <your-repo-url>
    
    docker push <your-repo-url>

2. Provision the infrastructure using Terraform:

    cd env/prod

    terraform init

    terraform apply