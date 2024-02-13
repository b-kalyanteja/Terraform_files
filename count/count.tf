resource "local_file" "sample" {
    filename = [/home/kalyan/terra/lfc/aaa.txt, /home/kalyan/terra/lfc/bbb.txt, /home/kalyan/terra/lfc/ccc.txt ]
    content = data.local_file.beta.content
    count = 3
    
}
data "local_file" "beta"{
    filename = "/home/kalyan/aaa.txt"
    }

# #filename  = "/home/kalyan/terra/lfc/${element(["aaa.txt", "bbb.txt", "ccc.txt"], count.index)}"
