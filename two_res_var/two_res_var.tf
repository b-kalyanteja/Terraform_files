resource "local_file" "abc_file" {
    filename = "/home/kalyan/var_abc.txt"
    content = var.content
}

resource "random_pet""pet" {
    prefix = "Mr"
    separator ="."
    length = 2
}
