variable "region" {
    default = "us-east-1"
}

variable "ami" {
    default = "ami-04505e74c0741db8d"
}

variable "type-image" {
    default = "t2.micro"
}

variable "ssh-key" {
    default = "terraform"
}

variable "name-server" {
    default = "node" 
}