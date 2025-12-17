terraform {
  required_version = ">= 1.0"
  required_providers {
    render = {
      source  = "registry.terraform.io/render-oss/render"
      version = "~> 1.0"
    }
  }
}

provider "render" {
}

resource "render_static_site" "example" {
  name          = "render-terraform-example"
  repo_url      = "https://github.com/ahmedsmaali5/render-terraform-example"
  branch        = "main"
  build_command = "" # no build needed for html file
  publish_path  = "."

}

output "site_url" {
  value = render_static_site.example.url
}
