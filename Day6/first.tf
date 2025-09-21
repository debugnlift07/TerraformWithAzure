variable username{
    type = string
}

variable age {
    type = number  
}

output hello{
    value = "Hello ${var.username} and ${var.age}"
}