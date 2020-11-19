## 201951071 | Firman Adi Nur Fatin

main <-function(){
    presensi <-array(c(1,2,3,4,5,6,7,8,9,10))
    nilai1 <-array(c(90,93,82,85,96,78,98,78,67,100))
    nilai2 <-array(c(89,100,78,90,90,85,88,92,75,95))
    
    plot(presensi,nilai1, type="o", col="green", xlab="Presensi",ylab="Nilai",main="Data Nilai")
    lines(presensi,nilai2, type="o", col="blue")
}