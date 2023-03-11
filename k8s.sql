$ kubectl set image deployment/my-deployment my-container=my-new-image:v2
deployment.apps/my-deployment image updated

$ kubectl rollout status deployment/my-deployment
Waiting for rollout to finish: 1 out of 3 new replicas have been updated...
Waiting for rollout to finish: 2 out of 3 new replicas have been updated...
deployment "my-deployment" successfully rolled out

$ kubectl get pods
NAME                            READY   STATUS    RESTARTS   AGE
my-deployment-576d7cf6f9-68ttj  1/1     Running   0          2m
my-deployment-576d7cf6f9-g9ljj  1/1     Running   0          1m
my-deployment-576d7cf6f9-t6twz  1/1     Running   0          2m

