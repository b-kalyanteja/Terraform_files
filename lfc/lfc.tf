resource "local_file" "sample" {
    filename = "/home/kalyan/terra/lfc/new.txt"
    content = "Hello there, this is my new third updated in linux and pushed to git ! it will destroy foirst and then create as no life cyle given \n hi \n hi "
    #lifecycle {
        #create_before_destroy = true
        #ignorechanges[]
    #}
}
