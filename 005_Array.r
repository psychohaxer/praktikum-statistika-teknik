main <-function(){
    # Soal 1
    vc1 <- c("Nindi","Rika","Tina")
    result1 <- array(c(vc1))
    
    # Soal 2
    vc2a <- c("Lita","Lina","Tia")
    vc2b <- c(089899,80799,085443)
    result2 <- array(c(vc2a,vc2b),dim=c(3,2,1))
    
    # Soal 3    
    result3 = array(c("B1,C1","B1,C2","B2,C1","B2,C2","B3,C1","B3,C2"),
        dim = c(2,3,1),
        dimnames = list(
            c("Celana 1","Celana 2"),
            c("Baju 1","Baju 2","Baju 3"),
            c("milih baju sama celana")
        )
    )
           
    print(result1)
    print(result2)
    print(result3)
}