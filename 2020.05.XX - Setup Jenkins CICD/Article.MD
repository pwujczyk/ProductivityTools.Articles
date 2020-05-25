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