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
// printing from the list variable
output "fromlist"{
    value = "${var.list[0]} is becoming famous now ${var.list[1]} is most used operating system in the it world now i am learning ${var.list[2]}"
}
// printing from the maps variable 
output "frommaps" {
    value = "${var.maps["Domain"]}, ${var.maps["Provider"]}"
}
// Declaring the variable which is in the sperate variable file 
variable "city" {}

output "from_terraformtfvar_file" {
    value = "my fav city is ${var.city}"
}

variable "state" {}

output "from_terraformtfvar_file_state" {
  value = "my fav state is ${var.state}"
}

variable "country" {}

output "from_devtfvar_file_" {
 value = "my fav country is ${var.country}"
}
// if we declare the variable with out value it will ask for value in the cmd line
variable "total_number_of_state" {}

output "from_cmd_terminal" {
    value = "total no of states are ${var.total_number_of_state}"
  
}