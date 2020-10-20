gjgn <-function (bil){
	if(bil == 0){
		sprintf("Nol")
	}
	else if((bil %% 2) == 0){
		sprintf("Genap")
	}
	else{
		sprintf("Ganjil")
	}
}

hitung <-function (num){
	if(num >= 86){
		sprintf("A")
	}
	else if(num >= 70){
		sprintf("B")
	}
	else if(num >= 50){
		sprintf("C")
	}
}

variabel <-function(x,y,z){
    print(c("Var 1: ",x))
    print(c("Var 2: ",y))
    print(c("Var 3: ",z))
}

perulangan <-function(){
    for(i in 1:10){
        for(j in 1:1){
            print(i)            
        }        
    }
}