# HOW to create a activ DEV SERVER with VOLUMES

### Create a Dockerfile

```markdown
FROM node:alpine
WORKDIR /home
COPY . .
RUN npm i
EXPOSE 9995
CMD ["node", "--watch", "app.js"]
```

### RUN the CONTAINER IN A VOLUME WITH YOUR WORK PATH

```
docker run -d -p CONTAINER_NEW_PORT:DOCKER_FILE_PORT -v ABSOLUTEPATH:YOUR:WORK_PATH --name GIVEANAVE IMAGEID/IMAGENAME

```

![](/readme_img/cmd_path.png)

Now when you make server-side changes to your code, they will be actively applied to your container. If you make a change in your project you can see it with

```
docker exec -it containerId/containerName sh

```

For example add "type":"module" in your package.json

and now after docker exec -it containerId/containerName sh

```
cat package.json

```

and you will see the changes
