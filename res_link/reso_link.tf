resource "local_file" "abc_file" {
  filename = var.filenm
  content  = " th first person name is ${random_pet.pet1.id}. and the second person code word is ${random_pet.pet2.id}"
}

resource "random_pet" "pet1" {
  prefix    = "Mr"
  separator = "."
  length    = 2
}


resource "random_pet" "pet2" {
  prefix    = "Mrs"
  separator = " "
  length    = 1
}

output "abc" {
  value       = random_pet.pet1.id
  description = "the name of pets is output"
}
