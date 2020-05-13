
variable "domain" { default = "konado.com" }
variable "memoryMB" { default = 1024 }
variable "cpu" { default = 1 }
variable "nodes" {
  type = "list"
  default = [ ]
}