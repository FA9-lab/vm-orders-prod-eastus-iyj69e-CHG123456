module "vm" {
  source = "git::https://github.com/FA9-lab/platform-infrastructure.git//azure/compute/vm/terraform?ref=v2.0.0"

  application   = "orders"
  environment   = "prod"
  region        = "eastus"
  request_id    = "CHG123456"
  deployment_id = "iyj69e"

  resource_group = "rg-platform-lab"
  subnet_id      = "/subscriptions/6735f0ee-e5a2-421c-93bd-fe709175f66a/resourceGroups/rg-platform-lab/providers/Microsoft.Network/virtualNetworks/vnet-platform-lab/subnets/snet-vm-lab"

  vm_size              = "Standard_B2s"
  admin_username       = "azureadmin"
  admin_ssh_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGvCf8sSROU37vthfcM/gut2mCYyqv92480ycS3xtvUn PELab VM admin"
}
