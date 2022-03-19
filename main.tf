


module "vpcmodule" {
  source = "git::git@github.com:NGUMNFOR/30172022march.git//vpcmodule"

  vpccidr = "200.0.0.0/16"
  websubnetnames  = ["web1"] 
  Appsubnames     = ["app1"]
  websubnet_cidr  = [for each in range(1,225,2) : cidrsubnet("200.0.0.0/16", 8, each)]
  appsubnet_cidr  = [for each in range(0,225,2) : cidrsubnet("200.0.0.0/16", 8, each)]
}
