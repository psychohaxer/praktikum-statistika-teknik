## 201951071 | FIRMAN ADI NUR FATIN
## MTI307A | PRAKTIKUM STATISTIKA TEKNIK A

main <-function(){
    ## Membuat Array
    Modal = array(c("112-120","121-129","130-138","139-147","148-156","157-165","166-174"))
    f = array(c(4,5,8,12,5,4,2))
    X = array(c(116,125,134,143,152,161,170))
    fX = array(f * X)
    
    ## Membuat Total f dan fX
    sigmaf = sum(f)
    sigmafX = sum(fX)
    
    ## Membuat DataFrame dari Array dan menampilkannya
    tabel = data.frame(Modal,f,X,fX)
    print(tabel)
    
    ## Mencari Q1, Q2, Q3    
    q1 = 129.5 + 9 * (((1*sigmaf/4)-9)/f[3])
    q2 = 138.5 + 17 * (((2*sigmaf/4)-17)/f[4])
    q3 = 147.5 + 29 * (((3*sigmaf/4)-29)/f[5])
    
    ## Mencari D3 dan D8
    d3 = 129.5 + 9 * (((3*sigmaf/10)-9)/f[3])
    d8 = 147.5 + 29 * (((8*sigmaf/10)-5)/f[5])
    
    ## Mencari P20 dan P80
    p20 = 111.5 + 0 * (((20*sigmaf/100)-0)/f[1])
    p80 = d8
    
    ## Membuat Array Output
    kuartil = array(c(q1,q2,q3), dimnames = list(c("Quartil 1","Quartil 2","Quartil 3")))    
    desil = array(c(d3,d8), dimnames = list(c("Desil 3","Desil 8")))    
    persentil = array(c(p20,p80), dimnames = list(c("Persentil 20","Persentil 80")))

    ## Menampilkan Output
    print("")
    print(kuartil)
    print("")
    print(desil)
    print("")
    print(persentil)
    
    ## Plot    
    plot(tabel$X,tabel$f,xlab="X",ylab="Frekuensi",main="Data Modal",type="l")        
}