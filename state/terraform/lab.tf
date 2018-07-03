variable "internal_reserved_ips" {
  type="list"
}
variable "internal_static_ips" {
  type="list"
}

output "internal_reserved_ips" { 
  value = "${var.internal_reserved_ips}"
}

output "internal_static_ips" { 
  value = "${var.internal_static_ips}"
}
