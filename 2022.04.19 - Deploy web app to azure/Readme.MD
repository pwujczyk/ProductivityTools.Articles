
<!--Category:Article--> 
 <p align="right">
    <a href="http://productivitytools.tech/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
    <a href="https://github.com/pwujczyk/ProductivityTools.Articles"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://productivitytools.tech/">
        <img src='Images/Header/LogoTitle_green_500px.png' />
    </a>
</p>

# Deploy web app to azure

<!--og-image-->
![](Images/OAuth.png)

This tutorial shows how to publish web application to the azure devops.

<!--more-->

## Create storage account for the website

- Create new resource group
- Create storage account

![Create a storage account](./Images/CreateSTorageAccount.png)

- Enable static website

![Enable static website](./Images/EnableStaticWebsite.png)

- Copy Key

![Copy key](./Images/CopyKey.png.png)

## Create pipeline

- Go to Pipelines >> Pipelines
- Create Pipeline
- Github
- Node with react

```yaml
# Node.js with React
# Build a Node.js project that uses React.
# Add steps that analyze code, save build artifacts, deploy, and more:
# https://docs.microsoft.com/azure/devops/pipelines/languages/javascript

trigger:
- master

pool:
  vmImage: ubuntu-latest


steps:
- task: NodeTool@0
  inputs:
    versionSpec: '14.x'
  displayName: 'Install Node.js'

- script: |
    yarn install
    yarn run build
  displayName: 'yarn install and build'

- task: CopyFiles@2
  displayName: 'Copy files'
  inputs:
    sourceFolder: 'build' 
    Contents: '**/*'
    TargetFolder: '$(Build.BinariesDirectory)'
    cleanTargetFolder: true
- task: ArchiveFiles@2
  inputs:
    rootFolderOrFile: '$(Build.BinariesDirectory)'
    includeRootFolder: true
    archiveType: 'zip'
    archiveFile: '$(Build.ArtifactStagingDirectory)/$(Build.BuildId).zip'
    replaceExistingArchive: true

- task: PublishBuildArtifacts@1
  inputs:
    PathtoPublish: '$(Build.ArtifactStagingDirectory)'
    ArtifactName: 'drop'
    publishLocation: 'Container'
```

- Save and Run

## Release
- Start with empty job
- Add artifact (what was build from build step)
- Enable continuos deployment 

![Enable continuos deployment ](./Images/EnableContinuosDeployment.png)

- Chose agent job and choose Agent (linux)
- Add new task

![AddNewTask](./Images/AddNewTask.png)

- Extract files
   - Archive file patterns */$(Build.BuildId).zip
   - Destination folder: $(Build.DefaultWorkingDirectory)/$(Build.BuildId)
- Add Azure CLI

![Azure CLI](./Images/AzureCLI.png)

- script type Powershell if windows, shell if linux
- script location inline

![Script](./Images/Script.png)

```
az storage blob upload-batch — account-name STORAGE_ACCOUNT_NAME account-key STORAGE_ACCOUNT_KEY — destination ‘$web’ — source ./

Example: az storage blob upload-batch --account-name meetingsweb --account-key XPq3uhvz+MvocsOcqa/nqViLsWgcCBdgwPTQvP7NWwV/O+iu2Fhn7KMCpawuRBizkaU3+/4OMaxiLzKBxTZw== --destination '$web' --source ./
```

- Set working directory to ```$(System.DefaultWorkingDirectory)/$(Build.BuildId)/dist```
