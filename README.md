# AWS Cloud Deployment & CI/CD

A cloud engineering project demonstrating how a containerized Python application can be automatically tested, built, stored, and deployed to AWS using Docker, GitHub Actions, Amazon ECR, and AWS Lambda.

## Project Overview

This project demonstrates a complete CI/CD workflow for deploying a containerized Flask application to AWS.

The application includes a main API endpoint and a health-check endpoint. It is packaged as a Docker image, stored in Amazon Elastic Container Registry (ECR), and deployed as an ARM64 container to AWS Lambda.

GitHub Actions automatically tests, builds, pushes, and deploys the application whenever changes are pushed to the `main` branch.

## Architecture

```text
Developer
   |
   | git push
   v
GitHub Repository
   |
   v
GitHub Actions CI/CD
   |
   |-- Run automated tests
   |-- Build ARM64 Docker image
   |
   v
Amazon ECR
   |
   | Container image
   v
AWS Lambda
   |
   v
Lambda Function URL
   |
   v
Public HTTPS Application
