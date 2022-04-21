object ballesta {
	var flechas = 10
	
	method flechas() = flechas
	
	method nivelDePotencia() = 4
	
	method estaCargada() = flechas >= 1
	
	method usar() {
		flechas -= 1
	}
}

object jabalina {
	var estaCargada = true
	
	method nivelDePotencia() = 30
	
	method estaCargada() = estaCargada
	
	method usar() {
		estaCargada = false
	}
	
}
