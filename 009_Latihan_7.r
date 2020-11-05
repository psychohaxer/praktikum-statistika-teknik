## 201951071 | FIRMAN ADI NUR FATIN
## MTI307A | PRAKTIKUM STATISTIKA TEKNIK A

kondisi <-function(nilai){
    if ((nilai>100) || (nilai<1)){
        print("Nilai harus 1-100!")
    }
    else if (nilai>80){
        print("Nilai A")
    }
    else if (nilai>70){
        print("Nilai B")
    }
    else if (nilai>60){
        print("Nilai C")
    }
    else if (nilai>50){
        print("Nilai D")
    }
    else{
        print("Nilai E")
    }
}

tabel <-function(){
    ## Array Tabel 1
    nilai <-array(c("31-40","41-50","51-60","61-70","71-80","81-90"))
    fi <-array(c(3,5,10,11,8,3))
    fk <-array(c(3,8,18,29,37,40))
    x <-array(c(35.5,45.5,55.5,65.5,75.5,85.5))
    fx = fi*x ## <- secara otomatis menjadi array
    
    ## Variabel Pendukung
    sigma_fi = sum(fi)
    sigma_x = sum(x)
    sigma_fx = sum(fx)
    
    ## Kalkulasi Tendensi
    v_mean = sigma_fx/sigma_f
    v_median = 60.5+10*(((40/2)-18)/11)
    v_modus = 60.5+10*(1/(1+(11-8)))
    
    ## Kalkulasi Perluasan Tendensi
    q1 = 50.5+10*(((40/4)-8)/10)
    q2 = 60.5+10*((((2*40)/4)-18)/11)
    q3 = 70.5+10*((((3*40)/4)-29)/8)
    d5 = 60.5+10*((((5*40)/10)-18)/11)
    d7 = 60.5+10*((((7*40)/10)-18)/11)
    p50 = 60.5+10*((((50*40)/100)-18)/11)
    p60 = 60.5+10*((((50*60)/100)-18)/11)
    
    ## Array Tabel 2
    ar1 <-array(c("Mean","Median","Modus","Quartil 1","Quartil 2","Quartil 3","Desil 5","Desil 7","Persentil 50","Persentil 60"))
    ar2 <-array(c(v_mean,v_median,v_modus,q1,q2,q3,d5,d7,p50,p60))    
    ara <-array(c(ar1,ar2),dim=c(10,2),dimnames=list(c(1,2,3,4,5,6,7,8,9,10),c("Nama","Output")))
    
    ## Pembuatan DataFrame
    tabel1 = data.frame(nilai,fi,fk,x,fx)    
    tabel2 = data.frame(ar1,ar2)
    
    ## Mengatur nama kolom DataFrame
    names(tabel1)[1] <- "Nilai"
    names(tabel1)[2] <- "f"
    names(tabel1)[3] <- "FK"
    names(tabel1)[4] <- "x"
    names(tabel1)[5] <- "fx"
    
    names(tabel2)[1] <- "Tendensi"
    names(tabel2)[2] <- "Nilai"
   
    ## Menampilkan tabel dalam format DataFrame
    print(tabel1)
    print(tabel2)
    
    ## Menampilkan grafik
    #plot(tabel$X,tabel$f,xlab="X",ylab="Frekuensi",main="Data Modal",type="l")        
    plot(tabel1$x,tabel1$f,xlab="Nilai",ylab="Frekuensi",main="Data Nilai",type="l")
    
}