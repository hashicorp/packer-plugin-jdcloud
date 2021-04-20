
source "jdcloud" "newkey" {
  access_key              = "<your-access-key>"
  az                      = "cn-north-1c"
  communicator            = "ssh"
  image_id                = "<your-image-id>"
  image_name              = "packerImage"
  instance_name           = "created_by_packer"
  instance_type           = "g.n2.medium"
  region_id               = "cn-north-1"
  secret_key              = "<your-secret-key>"
  ssh_timeout             = "60s"
  ssh_username            = "root"
  subnet_id               = "<your-subnet>"
  temporary_key_pair_name = "whatever_new_key_name"
}

build {
  sources = ["source.jdcloud.newkey"]

  provisioner "shell" {
    inline = ["sleep 3", "echo 123", "pwd"]
  }

}
