resource "local_file" "sample" {
    filename = "/home/kalyan/terra/lfc/apc.txt"
    content = data.local_file.beta.content
    lifecycle {
        ignore_changes = []
    }
}
data "local_file" "beta"{
    filename = "/home/kalyan/aaa.txt"
    }
