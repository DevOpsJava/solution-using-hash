# Simple project

Recreate problem, using an IaC tool and templates. 

I will try pulumi an use it for both, that is to get a project up and running and deploy to cloud. I prefer to create a walking skelleton and focus on getting the feedback loop as quick as possible. And work from there.

# Template
A go project build with docker that deploys with pulumi to azure 

Selected:
* [azure-go-appservice-docker](https://github.com/pulumi/examples/tree/master/azure-go-appservice-docker)


## Requirements:
*  Access to azure and az tool installed
*  Access to pulumi and pulumi tool installed
*  Access to github and git installed
*  Golang tool installed

Pull template by running script
```
./get-template.sh
```

Try it out
```
pulumi stack init dev
az login
pulumi config set azure-native:location northeurope
docker login
pulumi up
```

clean up 
```
pulumi destroy
pulumi stack rm dev
```
