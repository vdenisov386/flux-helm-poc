# flux-helm-poc
Try GitOps approach with Flux and Helm Operator

# Get started:
1. ``` cd charts/flux/ ; ./start.sh```
2. ``` cd ../helm-operator/ ; ./start.sh```
3. ``` fluxctl identity --k8s-fwd-ns=flux```
4. ``` Add ssh pub key to git repo: Settings -> Deploy keys (Mark write access)```
5. ``` kubectl -n demo port-forward deployment/podinfo 9898:9898```
6. ``` curl localhost:9898```

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
# Resources
- https://docs.fluxcd.io/en/latest/introduction/
- https://github.com/fluxcd/flux-get-started
- https://docs.fluxcd.io/projects/helm-operator/en/stable/
- https://github.com/fluxcd/helm-operator
- https://github.com/fluxcd/helm-operator-get-started
- https://helm.workshop.flagger.dev/intro/

