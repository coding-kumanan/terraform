module "from_ec2" {
    source = "./ec2"
    module_sggroup_variable = module.sg.module_sggroup_output
    //from sg module output to sg module to ec2 module variable. 
}

module "sg" {
    source = "./sg"
}
