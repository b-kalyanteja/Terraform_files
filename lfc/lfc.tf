resource "local_file" "sample" {
    filename = "/home/kalyan/terra/lfc/newbad.txt"
    content = " NO NO NO - bad if u see this \n this is my new sisth updated \n updated content and file name. \n but \n ignore_changes activated for file name "
    lifecycle {
        create_before_destroy = true
        ignore_changes = [
            content
        ]
    }
}
