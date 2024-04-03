variable "instances_names" {
    type = map 
    # default = {
    #     mongodb = "t3.small"
    #     redis = "t2.micro"
    #     web = "t2.micro"
    # }
}

variable "zone_id" {
    type = string
    default = "Z02357183AC34D1F7B6MH"
}

variable "domain_name" {
    type = string
    default = "learndevops.space"
}

