resource "local_file" "abc_file" {
    filename = "/abc.txt"
    content = "Hello there, this is my new file !"
}

resource "random_pet""pet" {
    prefix = "Mr"
    separator ="."
    length = 2
}