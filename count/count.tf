resource "local_file" "sample" {
    filename = var.fn[count.index]
    content = data.local_file.beta.content
    count = 3
    
}
data "local_file" "beta"{
    filename = "/home/kalyan/aaa.txt"
    }

