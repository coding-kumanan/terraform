// declaring the variable
variable "sample" {
    default = "hello world"
  
} 
// Sting data type variable 
variable "sample1" {
    default = "variable 2"
  
}
// number data type variable 
variable "number" {
    default = 100
}
// Boolen Data Type Variable 
variable "boolen" {
    default = true
}
// List variable 
variable "list" {
    default = ["Devops", "Linux", "Terraform", "Ansible", "Aws"]
  
}
// Map Variable
variable "maps" {
    default = {
        Domain = "Devops"
        OS = "Linux"
        Provider = "AWS"
        
    }
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

output "fromlist"{
    value = "${var.list[0]} is becoming famous now ${var.list[1]} is most used operating system in the it world./
             now i am learning ${var.list[2]}"
}

output "frommaps" {
    value = "${var.maps["Domain"]}, ${var.maps["provider"]}"
}
