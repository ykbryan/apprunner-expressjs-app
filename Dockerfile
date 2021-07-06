# specify the node base image with your desired version node:<version>
FROM public.ecr.aws/bitnami/node:12
# replace this with your application's default port
EXPOSE 8080

WORKDIR /app
COPY . .
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production

CMD [ "node", "app.js" ]
