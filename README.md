# aw-docker-k8s
Updated on October, 18th 2021.

Hello Anton. Unfourtunately my 7 years old laptop hangs out when running minikube, so [I deployed the app on GCP / GKE](http://aw1.mafil.xyz). kubectl YAML export for both app & service deployments can be found here, too.

A tutorial I've managed to learn ['how to deploy with kubectl'](https://priyankvex.wordpress.com/2017/11/19/deploying-a-nginx-application-using-kubernetes-for-self-healing-and-scaling/). The first [Docker image](https://hub.docker.com/repository/docker/rbalashevich/aw-nginx) built from nginx:1.20-alpine, with bash, with no root rights for nginx master and worker processes. The second, 'pure Alpine' image uploaded to Docker Hub, too.

```$ docker events &```

```$ docker build -t rbalashevich/aw-nginx . ```

```$ docker run -p 80:8080 rbalashevich/aw-nginx ```

A so called 'check-online' script has been updated: featuring IP address input now.
Have a nice commit! ;)


