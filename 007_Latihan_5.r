## Inisialisasi Variabel Data
data1 = c(0,1,2,3,4,5,6,7,8,9)
data2 = c(10,11,12,13,14,15,16,17,18,19)
data3 = c(20,21,22,23,24,25,26,27,28,29)
data4 = c(30,31,32,33,34,35,36,37,38,39)
data5 = c(40,41,42,43,44,45,46,47,48,49)
data6 = c(50,51,52,53,54,55,56,57,58,59)
data7 = c(60,61,62,63,64,65,66,67,68,69)

## Inisialisasi Variabel Frekuensi
f1 = 5
f2 = 7
f3 = 3
f4 = 16
f5 = 2
f6 = 4
f7 = 5

execute <- function(){    
    ## Mencari X
    x1 = sum(data1)
    x2 = sum(data2)
    x3 = sum(data3)
    x4 = sum(data4)
    x5 = sum(data5)
    x6 = sum(data6)
    x7 = sum(data7)
    
    ## Mencari fX
    fx1 = f1 * x1
    fx2 = f2 * x2
    fx3 = f3 * x3
    fx4 = f4 * x4
    fx5 = f5 * x5
    fx6 = f6 * x6
    fx7 = f7 * x7
       
    ## Membuat Array
    dataname <- array(c("0-9","10-19","20-29","30-39","40-49","50-59","60-69"))
    arf <- array(c(f1,f2,f3,f4,f5,f6,f7))
    arx <- array(c(x1,x2,x3,x4,x5,x6,x7))
    arfx <- array(c(fx1,fx2,fx3,fx4,fx5,fx6,fx7))
    
    ## Mencari Mean
    p_mean = sum(arfx)/sum(arf)
    
    ## Mencari Median
    p_median = 19.5 + 10 * (((sum(arf)/2)-12)/3)
    
    ## Mencari Modus
    p_modus = 29.5 + 10 * (13/(13+14))
    
    tabel = array(c(arf,arx,arfx),
        dim = c(7,3),
        dimnames = list(
            c(dataname),
            c("f","X","fX")            
        )
    ) 
    
    print(tabel)
    print(paste0("Mean   : ",p_mean))
    print(paste0("Median : ",p_median))
    print(paste0("Modus  : ",p_modus))
}