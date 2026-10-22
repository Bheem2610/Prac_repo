21-oct-2026 Practice

  334  terraform apply -auto-approve
  335  kubectl config current-context
  336  kubectl get nodes
  337  kubectl get pods -A
  338  aws eks update-kubeconfig   --region us-east-1   --name production-eks
  339  kubectl config current-context
  340  kubectl get nodes
  341  kubectl get pods -A
  342  kubectl create deployment nginx --image=nginx
  343  kubectl get deployments
  344  kubectl get pods
  345  kubectl get pods -A
  346  kubectl describe deployment nginx
  347  kubectl expose deployment nginx   --type=LoadBalancer   --port=80
  348  kubectl describe deployment nginx
  349  kubectl get svc
  350  kubectl get pods
  351  kubectl get endpoints nginx
  352  kubectl get pods -o wide
  353  curl http://a4e443e6555db42a5b26c31b07dcef61-1327375555.us-east-1.elb.amazonaws.com
  354  kubectl scale deployment nginx --replicas=3
  355  kubectl get pods
  356  kubectl describe deployment nginx
  357  kubectl get pods
  358  kubectl delete pod nginx-676b6c5bbc-24kmj
  359  kubectl get pods
  360  kubectl delete pod nginx-676b6c5bbc-jt2dm
  361  kubectl get pods
  362  kubectl create namespace dev
  363  kubectl get ns
  364  kubectl create deployment nginx-dev --image=nginx -n dev
  365  kubectl create configmap app-config --from-literal=env=dev
  366  kubectl get configmap
  367  kubectl describe configmap app-config
  368  curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
  369  helm version
  370  helm repo add bitnami https://charts.bitnami.com/bitnami
  371  helm install my-nginx bitnami/nginx
  372  kubectl create namespace argocd
  373  kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
  374  history

==============================================================
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
