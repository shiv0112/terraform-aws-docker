variable "aws_region"{
    default="ap-south-1"
}

variable "profile"{
    default="default"
}

variable "ami"{
    default="ami-011c99152163a87ae"
}

variable "ins_type" {
    default = "t2.micro"
}

variable "k_name" {
    default = "aws_putty"
}

variable "p_key" {
    default = "file('C:/Users/sriva/Downloads/aws_putty.pem')"
}
