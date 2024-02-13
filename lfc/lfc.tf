resource "local_file" "sample" {
    filename = "/home/kalyan/terra/lfc/newbad.txt"
    content = "Hello there, this is my new sisth updated \n updated content and file name. \n but \n ignore_changes activated for file name "
    lifecycle {
        create_before_destroy = true
        ignore_changes = [
            filename
        ]
    }
}
