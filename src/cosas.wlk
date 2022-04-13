object castillo {
	var nivelDeDefensa = 150
	
	method altura() = 20
	method nivelDeDefensa() = nivelDeDefensa
	
	method recibirAtaque(unValor) {
		nivelDeDefensa = 0.max(nivelDeDefensa - unValor) 
	}	
	
	method valorQueOtorga() = nivelDeDefensa / 5
	
	method recibirTrabajo() {
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
	}
}

object aurora {
	var estaViva = true
	
	method altura() = 1
	method estaViva() = estaViva
	
	method recibirAtaque(unValor) {
		estaViva = not (unValor >= 10)
	}
	
	method valorQueOtorga() = 15
	
	method recibirTrabajo(){}
}

object tipa {
	var altura = 8
	
	method altura() = altura
	
	method recibirAtaque(unValor){}
	
	method valorQueOtorga() = altura * 2
	
	method recibirTrabajo() {
		altura++
	}	

}
