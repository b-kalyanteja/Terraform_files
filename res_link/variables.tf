
variable "filenm" {
    default = "/home/kalyan/reso_lnk_2pets.txt"
    type = string
}

variable "content" {
    default = "The first person name is ${random_pet.pet1.id} and the seocnd person code name is ${random_pet.pet1.id}. \n  This file is saved in /home/kalyan/reso_lnk_2pets.txt"
    type = string
}
