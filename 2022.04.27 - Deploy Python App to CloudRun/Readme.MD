<!--Category:Article,Azure--> 
 <p align="right">
    <a href="http://productivitytools.tech/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
    <a href="https://github.com/pwujczyk/ProductivityTools.Articles"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://productivitytools.tech/">
        <img src='Images/Header/LogoTitle_green_500px.png' />
    </a>
</p>

# Deploy python app app to cloud run

<!--og-image-->
![](Images/Deploy.jpg)

This tutorial shows how to publish web application to the azure devops.

<!--more-->

```yml
steps:
# Install dependencies
- name: python
  entrypoint: pip
  args: ["install", "-r", "requirements.txt", "--user"]
```

## Build step

In the build step we need to name application. Name should contain path to the **Artifact Registry** what is why we need perform couple steps before build even that right now we won't be using elements which we use.

### Enable Artificat Registry

![ArtifactRegistryApi.png](Images/ArtifactRegistryApi.png)

Create a new repository for our image:


![ArtifactRegistryApi.png](Images/CreateRepository.png)

Please remember the path of our container repository. We will need it **us-central1-docker.pkg.dev/pttechbricksapi-347809/apiimage** (we even have small copy button on the right).

![ArtifactRegistryApi.png](Images/ApiImageRepository.png)

### Build step

```yml
# Docker Build
- name: 'gcr.io/cloud-builders/docker'
  args: ['build', '-t',
         'us-central1-docker.pkg.dev/${PROJECT_ID}/apiimage/image:${SHORT_SHA}', '.']
```
- name - image from supported [cloud builders](https://github.com/GoogleCloudPlatform/cloud-builders) which will be used
- args
  - -t - [Name and optionally a tag in the 'name:tag' format](https://docs.docker.com/engine/reference/commandline/build/)
  - docker name part 
    - us-central1-docker.pkg.dev/${PROJECT_ID}/apiimage - part which we copied before, project name was replaced with the token (this is more pro)
    - image - name of the image, could be anything
    - ${SHORT_SHA} - part after : is a tag which will help us identify the image, here is commit sha


