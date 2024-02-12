resource "local_file" "abc_file" {
    filename = var.filenm
    content = var.content
}

resource "random_pet""pet1" {
    prefix = "Mr"
    separator ="."
    length = 2
}


resource "random_pet""pet2" {
    prefix = "Mrs"
    separator ="."
    length = 1
}
