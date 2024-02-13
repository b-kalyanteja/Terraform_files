resource "local_file" "sample" {
    filename = "/home/kalyan/terra/lfc/newbadd.txt"
    content = " NOPEEEE "
    lifecycle {
        create_before_destroy = true
        ignore_changes = [
            filename, content
        ]
    }
}
