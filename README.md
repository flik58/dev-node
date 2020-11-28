# dev-node

https://auth0.com/blog/jp-use-docker-to-create-a-node-development-environment/#dockerfile

<pre>
$ docker run --rm -it --name node-docker -v $PWD:/home/app -p 8080:3000 -p 9005:9005 node-docker

$ npm start

$ docker exec -it $(docker ps -qf "name=node-docker") /bin/bash
</pre>
