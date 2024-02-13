resource "local_file" "sample" {
    filename = "/home/kalyan/terra/lfc/new.txt"
    content = "Hello there, this is my new fouth updated . to prevent destroy "
    lifecycle {
        #ignorechanges[]
    }
}
