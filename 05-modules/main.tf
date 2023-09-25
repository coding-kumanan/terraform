module "from_ec2" {
    source = "./ec2"
    module_sggroup_variable = module.sg.module_sggroup_output
}

module "sg" {
    source = "./sg"
}
