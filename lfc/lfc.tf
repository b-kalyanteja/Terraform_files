resource "local_file" "sample" {
    filename = "/home/kalyan/terra/lfc/new.txt"
    content = "Hello there, this is my new fifth updated . \n ignore_changes activated. no its not to done  "
    lifecycle {
        create_before_destroy = true
        ignore_changes = [
            content
        ]
    }
}
