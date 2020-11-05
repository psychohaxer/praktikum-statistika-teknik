belanja <-function(a){
    print(paste("Total belanja  :",a))
    if(a > 100000){
        print(paste("Diskon         : 10%"))
        print(paste("Nominal Diskon :",a*0.1))
        a = a*0.9        
    }
    else{        
        print("Diskon         : 0%")        
        print("Nominal Diskon : 0")        
    }
    print(paste("Grand total    :",a))    
}

nilai <-function(){
    kelas <-array(c("31-40","41-50","51-60","61-70","71-80","81-90"))
    f <-array(c(3,5,10,11,8,3))
    F <-array(c(3,8,18,29,37,40))
    ## nilai tengah = (40.5+30.5)/2
    X <-array(c(35.5,45.5,55.5,65.5,75.5,85.5))
    fX = f*X
    
    sigmaf = sum(f)
    sigmaX = sum(X)
    sigmafX = sum(fX)
    
    v_mean = sigmafX/sigmaf
    ## nilai tengah = sigmaf+1/2 -> 20.5
    ## titik bawah + interval*(((sigmaf/2)-F)/f)
    ## interval 40.5-30.5 = 10
    v_median = 60.5 + 10*(((40/2)-18)/11)
    ## cari kelas dengan frekuensi terbanyak
    ## titik bawah + interval(selisih f dengan F sebelumnya (b1) dibagi selisih f dengan F sebelumnya (b1) ditambah selisih f dengan F sesudahnya (b2)
    v_modus = 60.5 + 10*(1/1+3)
    
    ## nilai q1 = sigmaf+1/4 -> 10.25
    ## titik bawah + interval*(((sigmaf/4)-F)/f)
    q1 = 50.5 + 10*(((40/4)-8/10))
    
    ## nilai d9 = 9*(sigmaf+1/10) -> 36.9
    ## titik bawah + interval*(((9*sigmaf/10)-F)/f)
    d9 = 70.5 + 10*((((9*40)/10)-29)/8)
    
    ## nilai p90 = 90*(sigmaf+1/100) -> 36.9
    ## titik bawah + interval*(((90*sigmaf/100)-F)/f)
    p90 = 70.5 + 10*((((90*40)/100)-29)/8)
    
    tabel1 = data.frame(kelas,f,F,X,fX)
    plot(tabel1$X,tabel1$f,xlab="Nilai",ylab="Frekuensi",main="Data Nilai",type="l")
}