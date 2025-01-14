# task-app

## Introduction

Welcome to the `task-app` repository! This project is designed to help you learn and practice various aspects of modern software development, including Kubernetes (K8s), Continuous Integration/Continuous Deployment (CI/CD), Terraform, and general software development practices. The goal of this project is to provide a hands-on learning experience by building a full-stack application with a frontend, backend, and database, all managed and deployed using industry-standard tools and practices.


## Project Structure

```txt
task-app/
|── .github/
|   |── workflows/
|       |── (CI/CD pipeline files) 
├── analytics-service
│   ├── app
│   │   ├── __init__.py
│   │   └── main.py
│   ├── Dockerfile
│   ├── requirements.txt
│   └── venv
├── api-gateway-service
│   ├── Dockerfile
│   ├── pom.xml
│   ├── src
├── auth-service
│   ├── Dockerfile
│   ├── package.json
│   ├── package-lock.json
│   ├── src
│   └── tsconfig.json
├── infrastructure
│   ├── k8s
│   │   ├── analytics-service-deployment.yaml
│   │   ├── api-gateway-service-deployment.yaml
│   │   ├── auth-service-deployment.yaml
│   │   ├── frontend-service-deployment.yaml
│   │   ├── namespace.yaml
│   │   ├── notification-service-deployment.yaml
│   │   └── task-service-deployment.yaml
│   └── terraform
├── minikube-linux-amd64
├── notification-service
│   ├── Dockerfile
│   ├── pom.xml
│   ├── src
├── script
│   ├── apply-deployment.sh
│   ├── build-all.sh
│   ├── create-secret-key.sh
│   └── delete-deployment.sh
└── task-service
    ├── Dockerfile
    ├── pom.xml
    ├── src
├── README.md
```

## Learning Objectives

This project aims to help you learn and practice the following:

- **Kubernetes (K8s):** Learn how to deploy, manage, and scale applications using Kubernetes.
- **Continuous Integration/Continuous Deployment (CI/CD):** Implement CI/CD pipelines to automate the build, test, and deployment processes.
- **Terraform:** Use Terraform to manage infrastructure as code (IaC) and automate the provisioning of cloud resources.
- **Software Development:** Gain experience in full-stack development, including frontend, backend, and database development with Spring, Flas and React.
- **Best Practices:** Follow industry best practices for coding, testing, and deployment.

## Getting Started

To get started with this project, follow the instructions in the respective directories for setting up the frontend, backend, and infrastructure components. Make sure to review the documentation in the docs directory for detailed guides and tutorials.

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.