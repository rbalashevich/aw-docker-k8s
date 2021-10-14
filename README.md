# aw-docker-k8s

Hello Anton. Unfourtunately my 7 years old laptop hangs out when running minikube, so I deployed the app on GKE. I've used such commands for YAML export:

gcloud container clusters get-credentials my-nginx-webserver-cluster --zone us-central1-a --project aw-k8s \ 
&& kubectl get service my-nginx-webserver-service -o yaml

A tutorial I've manaed to learn:
https://priyankvex.wordpress.com/2017/11/19/deploying-a-nginx-application-using-kubernetes-for-self-healing-and-scaling/

The Docker image built from https://github.com/yobasystems/alpine-nginx (I know maintainer's name is funny for Russian speaking people :) )

No luck with building from pure Alpine, sorry.
