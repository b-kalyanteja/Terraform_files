resource "local_file" "sample" {
    filename = "/home/kalyan/terra/lfc/apc.txt"
    content = " NOPEEEE bow bow"
    lifecycle {
        create_before_destroy = true
        #ignore_changes = all
    }
}
