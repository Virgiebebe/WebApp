# Runbook for "Hello, World!" Web Server

## Scaling
1. **Scaling the deployment**:
    ```sh
    kubectl scale deployment hello-world --replicas=3
    ```

## Logging
1. **Viewing logs**:
    ```sh
    kubectl logs deployment/hello-world
    ```

## Monitoring
1. **Install Prometheus using Helm**:
    ```sh
    helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
    helm repo update
    helm install prometheus prometheus-community/prometheus
    ```

2. **Access Prometheus**:
    ```sh
    kubectl port-forward deploy/prometheus-server 8080:9090
    ```

## Troubleshooting
1. **Common issues**:
    - **Pod not starting**: Check pod status.
        ```sh
        kubectl get pods
        ```
    - **Logs**: Check application logs.
        ```sh
        kubectl logs <pod-name>
        ```

## Security Enhancements
1. **Install cert-manager**:
    ```sh
    kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.4.0/cert-manager.yaml
    ```

2. **Create certificates**:
    ```sh
    kubectl create -f certificate.yaml
    ```
