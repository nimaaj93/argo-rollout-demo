helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm upgrade nginx-ingress ingress-nginx/ingress-nginx \
        --install \
        --version "3.33.0" \
        --set controller.replicaCount=3 \
        --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
        --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux \
        --set controller.admissionWebhooks.patch.nodeSelector."beta\.kubernetes\.io/os"=linux \
        --set controller.service.loadBalancerIP="20.71.6.137"