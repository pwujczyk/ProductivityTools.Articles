I was trying to setup simple CI CD configuration. I though that my case is pretty common. Unfortunatelly whole Internet doesn't describe whole case at once. So here is the tutorial.

Use case:
- Pushing code to GitHub should invoke build and publish process on my home server
- Continiuous delivery needs to be placed in the git repository
- Build server is jenkins as it free

![UseCase](Images/Flow.png)

## Jenkins

### Plugins
I am not sure exactly which plugins are needed, but I have following installed
- GitHub API Plugin
- GitHub Branch Source Plugin
- GitHub plugin
- Pipeline

### Definition in code repository
Jenkins allow to build CI definition in different ways. The most trendy way of writing scripts is to use **Pipeline script** and the best way is to keep this pipeline in repository. For sure it project repository is the obvious choice.

#### Jenkins file
It contains build definition. Three example steps below. This is pretty simple. One of my full jenkins file is [here](https://github.com/pwujczyk/ProductivityTools.IdentityServer/blob/master/Jenkinsfile). Put file in the main directory of your project repository.

```
pipeline {
    agent any

    stages {
        stage('hello') {
            steps {
                // Get some code from a GitHub repository
                echo 'hello'
            }
        }
        stage('clone') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'master',
                url: 'https://github.com/pwujczyk/ProductivityTools.IdentityServer.git'
            }
        }
        stage('byebye') {
            steps {
                // Get some code from a GitHub repository
                echo 'byebye'
            }
        }
    }
}

```
#### Jenkins pipeline configuration

In the Pipeline chose **Pipeline script from SCM** and fill couple fields as showed on the picture below. From this point you can invoke job on jenkins and job should download jenkins file, and perform actions in the pipeline file.

![Pipeline script from SCM](Images/PipelineFromSCM.png)

#### Github push

In your project configuration you should add webhook. The address should be your jenkins address followed by */github-webhook/*. Of course you need to have server available from Internet. On the example below I forwarded 8080 port from my router to internal network. 

![Webhook](Images/webhook.png).

#### Receive the push by project

Last step is to add information about push to Jenkins file. Modify the definition and add **properties([pipelineTriggers([githubPush()])])**. 

```
properties([pipelineTriggers([githubPush()])])

pipeline {
    agent any

    stages {
        stage('hello') {
            steps {
                // Get some code from a GitHub repository
                echo 'hello'
            }
        }
        stage('clone') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'master',
                url: 'https://github.com/pwujczyk/ProductivityTools.IdentityServer.git'
            }
        }
        stage('byebye') {
            steps {
                // Get some code from a GitHub repository
                echo 'byebye'
            }
        }
    }
}

```