# aw-docker-k8s
http://aw1.mafil.xyz Updated on October, 17th 2021.

Hello Anton. Unfourtunately my 7 years old laptop hangs out when running minikube, so I deployed the app on GCP / GKE. kubectl YAML export for both app & service deployments can be found here, too.

A tutorial I've managed to learn 'how to deploy with kubectl' is here:
https://priyankvex.wordpress.com/2017/11/19/deploying-a-nginx-application-using-kubernetes-for-self-healing-and-scaling/

The Docker image built from nginx:1.20-alpine, with bash, no root rights for nginx master and worker processes. No luck with building from absolutely pure Alpine, sorry.

A so called 'check-online' script has been updated featuring IP address input.
Have a nice commit! ;)


