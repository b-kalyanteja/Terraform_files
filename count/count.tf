resource "local_file" "sample" {
    filename = [/home/kalyan/terra/lfc/aaa.txt, /home/kalyan/terra/lfc/bbb.txt, /home/kalyan/terra/lfc/ccc.txt ]
    content = data.local_file.beta.content
    
}
data "local_file" "beta"{
    filename = "/home/kalyan/aaa.txt"
    }
