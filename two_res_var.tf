resource "local_file" "abc_file" {
    filename = "/home/kalyan/var_abc.txt"
    content = "Hello there, this is my new file !"
}

resource "random_pet""pet" {
    prefix = "Mr"
    separator ="."
    length = 2
}
