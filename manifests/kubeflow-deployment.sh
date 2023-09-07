#!/bin/sh

echo `date`

while ! /home/azureuser/kubeflow/v1.7/kustomize build example | awk '!/well-defined/' | kubectl apply -f -; do echo "Retrying to apply resources"; sleep 10; done  | tee KF-Deployment-Status.out

echo `date`

end
