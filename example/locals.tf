data "http" "my_ip" {
  url = "https://checkip.amazonaws.com"
}

locals {
  my_public_ip_cidr = "${trimspace(data.http.my_ip.response_body)}/32"
}
