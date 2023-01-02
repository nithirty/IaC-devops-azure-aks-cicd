K8's Core Components in Azure (AKS)
    Master:
        Continer Runtime(Docker)
            etcd    
                - Key Value Store , Act as backing store for Cluster Data
            kube-schedular
                - Distributing container across node
                - Watch newly create pod with no node , assign node for them
            Kube-apiserver
                - Act as frontend for Control plane , 
                - All Request from kubectl,user,schedular,contoller manager etcd talk to API server        
            kube-controller Manager
                - Responsible for noticing and responding(Bring up new) for when Node,Pod or endpoints goes down
                - Node Controller 
                    - Responsible for noticing and responding when nodes goes down
                - Replication Controller
                    - Responsible for maintaining the correct number of POD 
                - EndPoint Controller
                    - Populates the endpoints object i.e. Join Services and Pods
                - Service Account and Token Controller
                    - Creates default account access to new name spaces
            Cloud Controller Manager
                - embeds clouds specific control logic 
                - Node controller, route controller , service controller
    Worker Nodes
            kubelet 
                - Agent that run on every worker nodes
                - Make Sure containers are running
            kube-proxy 
                - Its a network proxy 
                - maintain network load and rules on node 
                - Allow network communication to pods
    
