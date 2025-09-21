# variables define and use
# run if u dont want put values terraform plan -var "username=naveen"

variable username {}

output printname {
    value="Hellow , ${var.username}"
}