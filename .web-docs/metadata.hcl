# For full specification on the configuration of this file visit:
# https://github.com/hashicorp/integration-template#metadata-configuration
integration {
  name = "JD Cloud"
  description = "The JD Cloud plugin can be used with HashiCorp Packer to create custom images on JDCloud."
  identifier = "packer/hashicorp/jdcloud"
  component {
    type = "builder"
    name = "JDCloud Image Builder"
    slug = "jdcloud"
  }
}
