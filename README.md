# Installation guide
This is a guide for setting up keycloak using docker compose and DockerFile

<br/>
<br/>

# bre-install

## make sure system is updated and docker is installed.
```
sudo apt update && sudo upt upgrade
```
### follow this guid to install docker on ubuntu

https://docs.docker.com/engine/install/ubuntu/


## install docker-compose on ubuntu.
```
sudo apt-get install docker-compose
```

<br />

## switch to root user
```
sudo su
```

<br />
<br />

## run docker service
```
service docker start
```

<br />
<br />

## git clone the keycloak_docker repository
```
 git clone <url here> 
```

<br />
<br />

## navigate to the repository directory

```
cd keycloak_docker
```

<br />
<br />

## run docker-compose to create and start keycloak's docker container and server

```
docker-compose -f keycloak.yml up -d
```

<br />
<br />



**That's it, Create Amazing Things!**
