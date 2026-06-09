
data "http" "my_ip" {
  url = "https://api.ipify.org"
}

locals {
  my_public_ip_cidr = "${trimspace(data.http.my_ip.response_body)}/32"
}
