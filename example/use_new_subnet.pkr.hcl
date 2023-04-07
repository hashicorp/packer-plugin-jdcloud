# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


source "jdcloud" "new_subnet" {
  access_key       = "<Your access_key>"
  az               = "cn-north-1c"
  communicator     = "ssh"
  image_id         = "img-h8ly274zg9"
  image_name       = "packerImage"
  instance_name    = "created_by_packer"
  instance_type    = "g.n2.medium"
  region_id        = "cn-north-1"
  secret_key       = "<Your secret_key>"
  ssh_keypair_name = "created_by_xiaohan"
  ssh_password     = "/Users/mac/.ssh/id_rsa"
  ssh_timeout      = "60s"
  ssh_username     = "root"
}

build {
  sources = ["source.jdcloud.new_subnet"]

  provisioner "shell" {
    inline = ["sleep 3", "echo 123", "pwd"]
  }

}
