# PROJECT

## Core-features

1. Task Management 
   - Create, update and delete tasks
   - Add tags, deadlines and priorities task
2. User Authentication
   - Implement authentication with OAuth2 
3. Notifications
   - Email or push notifications due task
4. Analytics Dashboard
   - Show user productivity trends using data visualization

## Tech stack

1. Frontend
   - React: For a responsive and interactive UI
2. Backend
   - Java Spring: Business logic
   - Python Flask or FastAPI: Analytics services
3. Database
   - Relational data
   - NoSQL and caching
4. Infrastructure
   - Terraform: Infrastructure as code: manage cloud resources
   - AWS/GCP: Cloud provider
   - K8s: Orchestrate and manage microservices
5. CI/CD pipeline
   - Github Actions: Automate testing, building and deploying services
   - Docker: Containerize applications for consistent environments
6. Monitoring and Logging
   - Prometheus and Grafana: Performance monitoring
   - ELK Stack: Centralized logging
7. Configuration Management
    - Ansible: Automate deployment of services and configurations
8. Load Balancers
   - Nginx or HAProxy: Distribute traffic among services

## Application flow

1. Frontend UI
   - Allow user to login, create tasks and view their progress
2. API Gateway
   - Route requests to the appropiate backend service using a tool like **Kong gateway** or **Spring Cloud Gateway**
3. Backend Services
   - Auth Service: Manage user authentication
   - Task Service: Handle CRUD operations for tasks
   - Notification Service: Send email/push notifications
   - Analytics Service: Aggregate task data and provide trends 
4. Database layer
   - Use separate databases for each service or a shared DB for smaller projects
5. Infrastructure Automation
   - Define VPCs, subnets, EC2 instances and RDS using Terraform
6. Container Orchestration
   - Deploy each microservice in K8s pods
   - Configure horizontal pod autoscalling to manage load automatically

## Recommended Implementation Path

1. Define the Scope:
   - Prioritize features based on complexity and value.
2. Start Small:
  - Build a monolith version first for the Task Service, then split it into microservices.
3. Incrementally Add Technologies:
  - Start with Docker and Kubernetes for containerization.
  - Introduce Terraform to manage infrastructure.
  - Implement CI/CD with GitHub Actions.
4. Document the Process:
  - Maintain comprehensive documentation for each stage of development.

## Architecture Overview 

1. Auth Service: Manages user authentication. Exposes endpoints for login, registration and token validation
2. Task Service: Handles CRUD operations for tasks. Exposes for creating, updating, deleting and retrieving
3. Notification Service: Sends emails/push notifications. Exposes endpoint for managing notifications
4. Analytics Service: Aggregates task data and provide trends. Exposes endpoints for retrieving analytics data
5. Frontend: React app for UI. Communicates with backend services via API Gateway
6. API Gateway: Routes requests to the appopiate backend service. Can be implemented using Kong Gateway or Spring Cloud Gateway
H
  