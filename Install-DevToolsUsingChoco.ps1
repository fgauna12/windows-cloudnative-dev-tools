function Install-DevToolsUsingChoco {
    # Essentials
    choco install git -y
    choco install azure-cli -y
    choco install nodejs.install -y
    choco install az.powershell -y
    choco install awscli - y

    # Cloud-Native
    choco install docker-desktop -y
    choco install kubernetes-cli -y 
    choco install kubernetes-helm -y
    choco install openshift-cli -y
    choco install docker-kitematic -y

    # DevOps
    choco install terraform -y

    # IDEs
    choco install sql-server-management-studio -y
    choco install vscode -y
    choco install vscode-yaml -y
    choco install vscode-vsliveshare -y
    choco install vscode-kubernetes-tools -y 
    choco install vscode-azurerm-tools -y
    choco install vscode-azure-deploy -y
    choco install vscode-powershell -y
    choco install vscode-beautify -y   
    choco install vscode-docker -y
    choco install visualstudio2019professional -y   

    # Miscellanous
    choco install googlechrome -y
    choco install microsoft-edge -y
    choco install 1password -y -f -not-silent #known issue in installer
    choco install snagit -y --version 2020.1.2

    # add slack
    choco install slack -y
    # add zoom
    choco install zoom -y
    # google file stream
    choco install google-drive-file-stream -y

    # Framework
    choco install netfx-4.8-devpack -y
    choco install dotnetcore-sdk -y 
    choco install pwsh -y

    
}