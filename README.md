# mepp-docker

`mepp-docker` is used to run a copy of the [`MEPP web application`](https://github.com/mirror-effect-plus-protocol/mepp-web).

It relies on [`Docker`](https://docs.docker.com/get-docker/) and [`Docker Compose`](https://docs.docker.com/compose/install/) 
to run services on a host machine of your choosing.

It contains three containers: 

- Nginx
- PostgreSQL
- Django

NGINX container exposes the port 8080 by default because `mepp-docker` does not handle SSL certificates.  
It should run behind a reverse proxy which would be in charge of this task.

Please have a look at the [wiki](https://github.com/mirror-effect-plus-protocol/mepp-docker/wiki) for more details.


## Requirements

- Docker 19+
- Docker Compose 1.x (not tested with version 2.0)
- [`MEPP web application`](https://github.com/mirror-effect-plus-protocol/mepp-web) repository. It has be cloned at the same level as this repository.
  ```
     parent/  
     ├── mepp-docker  
     ├── mepp-web  
     │   ├── .env
  ``` 

It has been tested in macOS (10.15+) and Ubuntu 20.04 (`arm` and `x86_64/amd64`). It may work on Windows but it has not been tested yet.
 

