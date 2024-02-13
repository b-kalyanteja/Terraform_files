variables "fn" {
  type = list
  default = [/home/kalyan/terra/lfc/xxx.txt, /home/kalyan/terra/lfc/yyy.txt, /home/kalyan/terra/lfc/zzz.txt]
  conut = 3
}

#filename  = "/home/kalyan/terra/lfc/${element(["aaa.txt", "bbb.txt", "ccc.txt"], count.index)}"
