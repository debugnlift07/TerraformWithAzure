#multiple variable

variable username {
    default = "Naveen"
}

variable age{
    default = 26
}

output hello{
    value="Hellow ${var.username} and age is ${var.age}"
}