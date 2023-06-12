provider "aws" {
    region "us-east-1"   
}
resources "aws_instance" {
    ami = ""
    subnet_id = ""
    instance_type = ""
    tags = {
        Name = "sample-Name"
    }
}
variable "my-var" {
    type = string
    default = "hello"
    description = "my-var"
    validation {
        condition = length (var.my-var) > 4
        error_message = "some error"
    }
}
variable "list-object" {
    type = list(object ({
        internal = number
        external = number
        protocol = string
    }))
    defult = [
        {
            internal = 8080
            external = 8080
            protocol = "tcp"
        }
    ]
}
variable "list-string" {
    type = list(string)
    default = ["us-east-1"]
}
variable "list-object" {
    type = list(object({
        internal = string
        external =
    }))
}