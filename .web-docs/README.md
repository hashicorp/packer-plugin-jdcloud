The jdcloud Packer builder helps you to build instance images based on an existing image in [JDCloud](https://www.jdcloud.com/).

### Installation

To install this plugin, copy and paste this code into your Packer configuration, then run [`packer init`](https://www.packer.io/docs/commands/init).

```hcl
packer {
  required_plugins {
    jdcloud = {
      source  = "github.com/hashicorp/jdcloud"
      version = "~> 1"
    }
  }
}
```

Alternatively, you can use `packer plugins install` to manage installation of this plugin.

```sh
$ packer plugins install github.com/hashicorp/jdcloud
```

### Components

#### Builders

- [jdcloud](/packer/integrations/hashicorp/jdcloud/latest/components/builder/jdcloud) - The `jdcloud` Packer builder helps you to build instance images
based on an existing image
