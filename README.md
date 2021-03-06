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
    
    >**minikube start**
- Create job to utilize the pipeline file
- Trigger the JOB to create the minikube cluster
- Run below to enable minikube ingress feature
  > **minikube addons enable ingress**
- NOTE: Please create required github and docker credentials in Jenkins credential manager
- Once the deployment is completed, Please pickup the ingress IP and enter in brower i.e.
>**Http://{IP}:80**
- Althernatively, you can add below host entry to /etc/hosts and hit **ruby-web.info**
 > **{ingress IP} ruby-web.info**
<img width="1780" alt="Screenshot 2021-10-27 at 6 29 13 PM" src="https://user-images.githubusercontent.com/47022510/139070972-f8ed8e5e-6959-4a48-bf13-16a98ccfe6f1.png">
