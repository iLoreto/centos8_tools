#$1=name of the container, blob must have read permissions set
#$2=name of the local file to upload
#$3=name of the target file on blob container
#uncomment these export commands after adding names and keys
#export AZURE_STORAGE_KEY=[Long String in Dashboards -  Storage Accounts - Access Keys section]
#export AZURE_STORAGE_ACCOUNT=[Storage Account name from Dashboards - Strorage Accounts - Access keys section]
az login
az storage blob upload --container-name $1 --file $2 --name $3

