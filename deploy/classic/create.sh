kubectl apply -f deploy/common/csi-attacher-rbac.yaml
kubectl apply -f deploy/common/csi-nodeplugin-rbac.yaml
kubectl apply -f deploy/common/csi-provisioner-rbac.yaml

kubectl apply -f deploy/classic/spectrum-scale-secret.json
kubectl create configmap spectrum-scale-config --from-file=spectrum-scale-config.json=deploy/classic/spectrum-scale-config.json

kubectl apply -f deploy/common/csi-plugin-attacher.yaml
kubectl apply -f deploy/common/csi-plugin-provisioner.yaml
kubectl apply -f deploy/common/csi-plugin.yaml
