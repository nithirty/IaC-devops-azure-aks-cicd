# Deployment
    - Create Deployment to rollout ReplicaSet
    - Updating the Deployment
    - Rolling back Deployment
    - Scalling Deployment
    - Pausing and Resuming Deployment
    - Deployment Status
    - Clean up policy 
    - Canary Deployments 

# Create Deployment
    kubectl create deployment mydeploymentname --image=myimagepath
    kubectl get deployment
    kubectl describe deployment mydeploymentname
    kubectl get rs
    kubectl get po

# Scaling a Deployment
    kuberctl scale --replicas=10 deployment/mydeploymentname

# Scale Down the Deployment
    kubectl scale --replicas=2 deployment/mydeploymentname

# Expose Deployment to service
    kubectl expose deployment mydeploymentname --type=LoadBalancer --port=80 --targer-port=80 --name=myservicename        

# Update Deployment
    kubectl set image deployment/mydeploymentname <Container-Name>=<Container-Image> --record=true  


# kubectl rollout status deployment/mydeploymentname    
    kubectl rollout history deployment/mydeploymentname

# RollBack Deployment

    # Previous Version 
    kubectl rollout history deployment/mydeploymentname
    or
    kubectl rollout history deployment/mydeploymentname --revision1

    kuberctl rollout undo deployment/mydeploymentname

    # Specific Version 
    kuberctl rollout undo deployment/mydeploymentname to-revision=3

    @Restart application in rollout way 
    kubectl rollout restart deployment/mydeploymentname

# Pause and resume deployment
    kubectl rollout pause deployment/mydeploymentname

    # change the Image or anything you want to change in the deployment

    kubectl rollout resume deployment/mydeploymentname    
    

######
### 
######

    Service 

######
###
######
        Serivce 
            - ClusterIP 
                - Communication within Cluster 
            - NodePort
                - Accessing application outside the K8s Cluster using Nodeport
            - LoadBalancer
                - Accessing application outside the K8s Cluster using Cloud provided LB
            - Ingress 
                - Context Path base routing  
            - eternalName
                - Acess to outside hosted apps in K8s cluster 