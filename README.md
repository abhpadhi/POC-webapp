# POC-webapp

Simple Ruby web application

The web application is a basic 200OK App written in ruby sitting on top of minikube cluster hosted locally. 

## Authors

- [@abhinabpadhi](https://www.github.com/abhpadhi)

## Tech Stack

**Cluster:** Minikube

**Server:** Ruby

**K8S deployment**: Helm

**CICD Pipeline**: Jenkins 

  
## Features

- All paths /.* return "Well, hello there!"
- /healthcheck returns "OK"

  
## Explaination

- Install Jenkins locally
     >**brew install jenkins** 
- Install required plugins in Jenkins 
- Install minikube and initialize minikube 
    >**brew install minikube**
    
    >**minikube --memory 4096 --cpus 2 start --vm-driver=virtualbox**
- Create job to utilize the pipeline file
- Trigger the JOB to create the minikube cluster
- NOTE: Please create required github and docker credentials in Jenkins credential manager
- Once the deployment is completed, run below to fetch minikube IP address
  > **minikube ip**
- Use the above minikube IP to connect to the service in the browser
