## Overview

This project implements a secure SaaS-style AWS platform designed to demonstrate how modern cloud infrastructure and security services work together in a real environment.

The platform was built with Terraform and includes a protected application entry layer, containerized backend services, a private database tier, and integrated monitoring and alerting.

The goal was to simulate how a real company might design a customer-facing platform that can scale, protect against common attacks, and provide visibility into suspicious activity.

## Architecture

```text
                 Internet
                    │
                    ▼
                 AWS WAF
                    │
                    ▼
         Application Load Balancer
                    │
                    ▼
            ECS Fargate Service
           (Private App Subnets)
                    │
                    ▼
               RDS Database
          (Private Data Subnets)

Security Monitoring
CloudTrail → GuardDuty → EventBridge → SNS
```

## Screenshots

### WAF Blocking Malicious Request
![WAF](screenshots/waf-blocked-request.png)

### GuardDuty Findings
![GuardDuty](screenshots/guardduty-findings.png)

### CloudTrail Logging Enabled
![CloudTrail](screenshots/cloudtrail-enabled.png)

### ECS Service Running
![ECS](screenshots/ecs-service-running.png)

### Healthy Target Group
![Target Group](screenshots/target-group-healthy.png)

### Application Running Through ALB
![App](screenshots/app-running-browser.png)

### Subnet Architecture
![Subnets](screenshots/subnet-architecture.png)
