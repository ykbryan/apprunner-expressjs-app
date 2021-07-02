# apprunner-expressjs-app

This demo is to show easy deployment of container images to AWS using AWS AppRunner.

## Create your app

I will be using ExpressJS for this demo and for the default request, I will be returning "Hello World" as the first response.

```
const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
```

## Create your apprunner.yaml

I refer to this [AWS documentation](https://docs.aws.amazon.com/apprunner/latest/dg/service-source-code-nodejs.html) as reference and you can see the the build/configuration file is very familiar to any developers. 

```
version: 1.0
runtime: nodejs12
build:
  commands:    
    build:
      - npm install --production                                  
run:                              
  command: node app.js
```

## Go to your AWS Console

[...]