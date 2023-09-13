// declaring the variable
variable "sample" {
    default = "hello world"
  
} 

variable "sample1" {
    default = "variable 2"
  
}

output "op" {
    value = var.sample
  
}

output "op1" {
  value = "This is the second variable value ${var.sample}"
}