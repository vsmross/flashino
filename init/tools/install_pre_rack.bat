choco install terraform -y

choco install git.install -y

choco install dotnet-runtime --version=10.0.1

##choco install vscode -y

##choco install tflint -y

##choco install tfsec -y

##choco command to install aws CLI
choco install awscli -y

## PS commands to set AWS

$Env:AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY_ID"
$Env:AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
$Env:AWS_DEFAULT_REGION="us-east-1"

git config --global user.email "developer.netcore88@gmail.com"
git config --global user.name "Vaibhav"