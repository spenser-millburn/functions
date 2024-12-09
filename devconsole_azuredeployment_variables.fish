function devconsole_azuredeployment_variables
set NETWORK_PREFIX (math (math (random) \% 254) + 1)
set NETWORK_PREFIX (math (math (random) \% 254) + 1)
# set RANDOM_ID (openssl rand -hex 3)
set RANDOM_ID 149651
set -g MY_RESOURCE_GROUP_NAME "embd-tools"
set -g MY_KEY_VAULT "devConsoleKeyVault$RANDOM_ID"
set -g MY_CERT_NAME "nginxcert$RANDOM_ID"
set -g REGION "eastus"
set -g MY_VM_NAME "devConsoleVMName$RANDOM_ID"
set -g MY_VM_ID_NAME "devConsoleVMIDName$RANDOM_ID"
set -g MY_VM_IMAGE "Ubuntu2204"
set -g MY_VM_USERNAME "azureuser"
set -g MY_VM_SIZE "Standard_DS2_v2"
set -g MY_VNET_NAME "devConsoleNet$RANDOM_ID"
set -g MY_VM_NIC_NAME "devConsoleVMNicName$RANDOM_ID"
set -g MY_NSG_SSH_RULE "Allow-Access$RANDOM_ID"
set -g MY_VM_NIC_NAME "myVMNicName$RANDOM_ID"
set -g MY_VNET_PREFIX "10.$NETWORK_PREFIX.0.0/16"
set -g MY_SN_NAME "mySN$RANDOM_ID"
set -g MY_SN_PREFIX "10.$NETWORK_PREFIX.0.0/24"
set -g MY_PUBLIC_IP_NAME "devConsolePublicIP$RANDOM_ID"
set -g MY_DNS_LABEL "devconsole"
set -g MY_NSG_NAME "myNSGName$RANDOM_ID"
set -g FQDN "$MY_DNS_LABEL.$REGION.cloudapp.azure.com"

end
