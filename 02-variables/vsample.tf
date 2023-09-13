// declaring the variable
variable "sample" {
    default = "hello world"
  
} 

variable "sample1" {
    default = "variable 2"
  
}

variable "number" {
    default = 100
}

variable "boolen" {
    default = true
}
// Printing the variable 
output "op" {
    value = var.sample
  
}
// want to print the variable along with string use bash representation for vriable. 
output "op1" {
  value = "This is the second variable value ${var.sample1}"
}

output "number" {
    value = var.number
}

output "boolen" {
    value = var.boolen
  
}
