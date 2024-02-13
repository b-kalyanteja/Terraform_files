resource "local_file" "sample" {
    filename = "/home/kalyan/terra/lfc/apc.txt"
    content = data.local_file.beta.content
    lifecycle {
        create_before_destroy = true
        ignore_changes = all
    }
}
data "local_file" "beta"{
    filename = "/home/kalyan/aaa.txt"
    }
