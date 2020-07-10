# flux-helm-poc
Managing Helm releases with Flux and Helm Operator

# Get started:
1. ``` cd charts/flux/ ; ./start.sh```
2. ``` cd ../helm-operator/ ; ./start.sh```
3. ``` fluxctl identity --k8s-fwd-ns=flux```
4. ``` Add ssh pub key to git repo: Settings -> Deploy keys (Mark write access)```

# Useful commands:
```
kubectl -n flux get pods
kubectl -n flux logs flux-bla-bla
kubectl -n flux logs helm-bla-bla
kubectl -n demo get HelmRelease

fluxctl identity --k8s-fwd-ns=flux
fluxctl sync --k8s-fwd-ns=flux

helm ls -n demo
helm history podinfo -n demo
```
