# Keycloak Installation guide
This is a guide for setting up keycloak using docker compose and DockerFile

<div align="center">
<img src="https://www.keycloak.org/resources/images/keycloak_logo_200px.svg" alt="Keycloak Logo" width="160"/>
<br/><br/>
<img src="https://www.docker.com/wp-content/uploads/2022/03/horizontal-logo-monochromatic-white.png" alt="Docker Logo" width="120"/>
</div>

## bre-install

### if you are using wsl make sure you are running wsl version 2.

### make sure system is updated and docker is installed.
```
sudo apt update && sudo upt upgrade
```
### follow this guid to install docker on ubuntu

https://docs.docker.com/engine/install/ubuntu/


### install docker-compose on ubuntu.
```
sudo apt-get install docker-compose
```

<br />

### switch to root user
```
sudo su
```

<br />
<br />

### run docker service
```
service docker start
```

<br />
<br />

### git clone the keycloak_docker repository
```
 git clone https://github.com/AbdoMoh96/keycloak_docker.git
```

<br />
<br />

### navigate to the repository directory

```
cd keycloak_docker
```

<br />
<br />

### run docker-compose to create and start keycloak's docker container and server

```
docker-compose -f keycloak.yml up -d
```

### run this command to see if containers are running
```
docker ps
```

<br />

### server url
```
http://localhost:8080
```
<br />

**That's it, Create Amazing Things!**
