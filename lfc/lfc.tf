resource "local_file" "sample" {
    filename = "/home/kalyan/new.txt"
    content = "Hello there, this is my new second updated in linux and pushed to git ! "
    lifecycle {
        create_before_destroy = true
    }
}
