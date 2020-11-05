# Menampilkan nilai 1-5 sebanyak 5 kali
nilai <-function(){
    rep(c(1,2,3,4,5),5)
}

# Simulasi tos dadu genap
dadu <-function(){
    sample(c("Ganjil","Genap"),30,replace=T)
}

# Menampilkan nama Muhammad dan Faisal
nama <-function(){
    vecChar = c("Muhammad","Reza","Faisal")
    vecBool = c(TRUE,FALSE,TRUE)
    vecChar[vecBool]
}

angka <-function(){
    vecNumb <- c(1,2,-5.13,6,-2,4)
    vecNumb[6]
}