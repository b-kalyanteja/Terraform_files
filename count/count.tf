resource "local_file" "sample" {
    filename = var.fn
    content = data.local_file.beta.content
    count = 3
    
}
data "local_file" "beta"{
    filename = "/home/kalyan/aaa.txt"
    }

# #filename  = "/home/kalyan/terra/lfc/${element(["aaa.txt", "bbb.txt", "ccc.txt"], count.index)}"
