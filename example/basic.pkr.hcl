
source "jdcloud" "example" {
  access_key       = "<your access key>"
  az               = "cn-north-1c"
  communicator     = "ssh"
  image_id         = "img-h8ly274zg9"
  image_name       = "packerImage"
  instance_name    = "created_by_packer"
  instance_type    = "g.n2.medium"
  region_id        = "cn-north-1"
  secret_key       = "<your secret key>"
  ssh_keypair_name = "created_by_xiaohan"
  ssh_password     = "/Users/mac/.ssh/id_rsa"
  ssh_username     = "root"
  subnet_id        = "subnet-jo6e38sdli"
}

build {
  sources = ["source.jdcloud.example"]

  provisioner "shell" {
    inline = ["sleep 3", "echo 123", "pwd"]
  }

}
