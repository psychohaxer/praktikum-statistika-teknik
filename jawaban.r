belanja <-function(nominal){
    print(paste("Total belanja:",nominal))
    
    if(nominal > 100000){
        print("Diskon: 10%")
        print(paste("Potongan:", nominal*0.1))
        nominal = nominal*0.9
    }
    else{
        print("Diskon: 0%")
        print("Potongan: 0")
    }
    
    print(paste("Grand total:",nominal))
}

statistik <-function(){
    nilai <-array(c("31-40","41-50","51-60","61-70","71-80","81-90"))
    f <-array(c(3,5,10,11,8,3))
    F <-array(c(3,8,18,29,37,40))
    X <-array(c(35.5,45.5,55.5,65.5,75.5,85.5))
    fX = f*X
    
    sigma_f = sum(f)
    sigma_X = sum(X)
    sigma_fX = sum(fX)
    
    v_mean  = sigma_fX/sigma_f
    v_median = 60.5 + 10*(((40/2)-18)/11)
    v_modus = 60.5 + 10*(1/(1+3))
    
    q1 = 50.5 + 10*(((40/4)-8)/10)
    d9 = 70.5 + 10*(((9*40/10)-29)/8)
    p90 = 70.5 + 10*(((90*40/100)-29)/8)
    
    tabel1 = data.frame(nilai,f,F,X,fX)
    print(tabel1)
    
    print(paste("Mean:",v_mean))
    print(paste("Median:",v_median))
    print(paste("Modus:",v_modus))
    
    print(paste("Q1:",q1))
    print(paste("D9:",d9))
    print(paste("P90:",p90))
    
    plot(tabel1$X,tabel1$f,xlab="Nilai",ylab="Frekuensi",main="Data Nilai",type="l")
}
    