# code
::some notes ::
For Windows:
notepad %UserProfile%\.aws\credentials
aws --version
terraform version
aws configure list
aws configure list-profiles
aws configure or aws configure --profile "profile-name-(dev/qa/prod)"
aws configure set region us-east-1 --profile "profile.name"
aws configure get region --profile "profile.name"
setx AWS_PROFILE "Dev-profile-name"  #Restart the console after this
aws iam get-user
aws sts get-caller-identity
aws ec2 describe-instances
