import cosas.*
import armas.*

object luisa {
	var jugadorActivo
	
	method jugadorActivo(unJugador) {
		jugadorActivo = unJugador
	}
	
	method jugadorActivo() = jugadorActivo
}


object floki {
	var arma = ballesta
	
	method cambiarArma(unArma) {
		arma = unArma
	}
	
	method encontrar(elemento) {
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.nivelDePotencia())
			arma.usar()
		}
	}
	
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado
	
	method encontrar(elemento) {
		ultimoElementoEncontrado = elemento
		valorRecolectado += elemento.valorQueOtorga()
		elemento.recibirTrabajo()
	}
	
	method valorRecolectado() = valorRecolectado
	
	method esFeliz() = valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10
}