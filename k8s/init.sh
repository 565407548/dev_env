#!/bin/sh

rm -rf ~/.bashrc_k8s
touch ~/.bashrc_k8s

cat >> ~/.bashrc_k8s << EOF 

# k8s for microk8s
alias k='microk8s.kubectl'
alias kg='microk8s.kubectl get'
alias kd='microk8s.kubectl describe'
alias kgd='microk8s.kubectl get deploy'
alias kgp='microk8s.kubectl get pods'
alias kgc='microk8s.kubectl get cm'
alias kgs='microk8s.kubectl get svc'

# k8s for vs test
alias tk='microk8s.kubectl --kubeconfig ~/.kube/config_test'
alias tkg='microk8s.kubectl get --kubeconfig ~/.kube/config_test'
alias tkd='microk8s.kubectl describe --kubeconfig ~/.kube/config_test'
alias tkgd='microk8s.kubectl get deploy --kubeconfig ~/.kube/config_test'
alias tkgp='microk8s.kubectl get pods --kubeconfig ~/.kube/config_test'
alias tkgc='microk8s.kubectl get cm --kubeconfig ~/.kube/config_test'
alias tkgs='microk8s.kubectl get svc --kubeconfig ~/.kube/config_test'

# k8s for vs prod
alias pk='microk8s.kubectl --kubeconfig ~/.kube/config_prod'
alias pkg='microk8s.kubectl get --kubeconfig ~/.kube/config_prod'
alias pkd='microk8s.kubectl describe --kubeconfig ~/.kube/config_prod'
alias pkgd='microk8s.kubectl get deploy --kubeconfig ~/.kube/config_prod'
alias pkgp='microk8s.kubectl get pods --kubeconfig ~/.kube/config_prod'
alias pkgc='microk8s.kubectl get cm --kubeconfig ~/.kube/config_prod'
alias pkgs='microk8s.kubectl get svc --kubeconfig ~/.kube/config_prod'

# k8s completion
source <(microk8s.kubectl completion bash | sed 's/kubectl/k/g')

EOF

cat >> ~/.bashrc << EOF

. ~/.bashrc_k8s
EOF
