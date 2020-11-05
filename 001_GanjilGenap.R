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