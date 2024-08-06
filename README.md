# Hello World Web Server

This repository contains a Helm chart for deploying a simple "Hello, World!" web server on Kubernetes. The web server uses an Nginx image that serves a static HTML page with the text "Hello, World!".

## Prerequisites

- Docker
- Minikube or a Kubernetes cluster
- Helm

## Getting Started

1. **Clone the repository**:
    ```sh
    git clone https://github.com/Virgiebebe/WebApp.git
    cd hello-world
    ```

2. **Build and push the Docker image**:
    ```sh
    docker build -t virgiebebe/hello-world:latest .
    docker push virgiebebe/hello-world:latest
    ```

3. **Install Traefik**:
    ```sh
    helm repo add traefik https://helm.traefik.io/traefik
    helm repo update
    helm install traefik traefik/traefik --set service.type=LoadBalancer
    ```

4. **Deploy the Helm chart**:
    ```sh
    helm install hello-world ./charts/hello-world
    ```

## Runbook

Refer to `runbook.md` for details on scaling, logging, monitoring, and troubleshooting.

## Bonus Points

- Prometheus Metrics
- Alerting
- Security Enhancements
