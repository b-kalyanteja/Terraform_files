resource "local_file" "sample" {
    filename = each.value
    for_each = var.fn
    content = data.local_file.beta.content
    
    lifecycle {
    create_before_destroy = true
    }
    
}
data "local_file" "beta"{
    filename = "/home/kalyan/aaa.txt"
    }

