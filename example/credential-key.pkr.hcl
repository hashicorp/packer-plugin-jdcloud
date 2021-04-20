
source "jdcloud" "privatekey" {
  access_key           = "<your-access-key>"
  az                   = "cn-north-1c"
  communicator         = "ssh"
  image_id             = "<your-base-image-id>"
  image_name           = "created_by_packer"
  instance_name        = "created_by_packer"
  instance_type        = "g.n2.medium"
  region_id            = "cn-north-1"
  secret_key           = "<your-secret-key>"
  ssh_keypair_name     = "packer_keys"
  ssh_private_key_file = "/Path/to/your/.ssh/id_rsa"
  ssh_timeout          = "60s"
  ssh_username         = "root"
  subnet_id            = "<your-subnet>"
}

build {
  sources = ["source.jdcloud.privatekey"]

  provisioner "shell" {
    inline = ["sleep 3", "echo 123", "pwd"]
  }

}
