22-Oct-2026 - Practice

473  aws --version
  474  aws configure list
  475  terraform init
  476  terraform plan
  477  terraform apply
  478  helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
  479  helm repo add grafana https://grafana.github.io/helm-charts
  480  helm repo update
  481  kubectl create namespace monitoring
  482  aws sts get-caller-identity
  483  aws eks list-clusters --region us-east-1
  484  aws eks list-clusters --region ap-south-1
  485  kubectl config current-context
  486  aws eks describe-cluster   --name terraform-eks   --region ap-south-1   --query "cluster.endpoint"   --output text
  487  nslookup google.com
  488  aws sts get-caller-identity
  489  aws eks describe-cluster   --name production-eks   --region us-east-1   --query cluster.endpoint   --output text
  490  aws eks update-kubeconfig   --region us-east-1   --name production-eks
  491  kubectl get nodes
  492  kubectl create namespace monitoring
  493  kubectl get ns
  494  helm version
  495  helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
  496  helm repo add grafana https://grafana.github.io/helm-charts
  497  helm repo update
  498  helm install monitoring prometheus-community/kube-prometheus-stack   -n monitoring
  499  kubectl get pods -n monitoring -w
  500  kubectl --namespace monitoring get secrets monitoring-grafana -o jsonpath="{.data.admin-password}" | base64 -d
  501  kubectl port-forward svc/monitoring-grafana -n monitoring 3000:80
  502  http://127.0.0.1:3000
  503  hostname
  504  ip a
  505  kubectl get pods -n monitoring
  506  kubectl get svc -n monitoring
  507  kubectl port-forward svc/monitoring-grafana -n monitoring 3000:80
  508  kubectl port-forward -n monitoring svc/prometheus-operated 9090:9090
  509  kubectl port-forward svc/monitoring-grafana -n monitoring 3000:80
  510  kubectl get pod -n monitoring
  511  kubectl get svc -n monitoring
  512  count(kube_node_info)
  513  kubectl port-forward svc/monitoring-grafana -n monitoring 3000:80
  514  history
