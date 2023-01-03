# Ingress 
    - Allow to configure Layer 7 i.e HTTP Load Balancer , Hence revers proxy and SSL termination
    - Feature 
        # Context Path Based Routing
        # Host Based Routing 
        # TLS/SSL Termination
            -
# Ingress Contoller 
    -   Its an application that runs as POD in cluster and configures HTTP LB according to Ingress resource 
    -   LB can be Cloud LB , External LB or Software or Hardware 
    -   In case of Inginx Ingress is deployed in POD Along with LB 

# Ingress Resource 
    - Equivalent to K8s service with lots of other feature 
    - We can define routing rules based on URI , Hostname in ingress menifests
    - We can define SSL/TLS related info         



    image.png

    