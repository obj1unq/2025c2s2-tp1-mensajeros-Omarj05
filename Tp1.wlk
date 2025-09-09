object paquete {
	var property estaPagado = true

	method puedeMensajeroEntregarEnDestino(mensajero, destino) {
		return self.estaPagado() && mensajero.puedeLlegarADestino(destino)
	}
}

//destinos
object puenteDeBrooklyn {
	method puedePasarMensajero(mensajero) {
		return mensajero.peso() <= 1000 //si el mensajero pesa hasta 1000 kilos, puede pasar por el puente
	}
}

object laMatrix {
	method puedePasarMensajero(mensajero) {
		return mensajero.puedeLlamar()	//si el mensajero puede llamar, puede entrar a la Matrix
	}
}

//mensajeros
object jeanGray {
	method peso() { return 65 }
	method puedeLlamar() { return true }

	method puedeLlegarADestino(destino) {
		return destino.puedePasarMensajero(self)
	}
}

object neo {
	const property peso = 0 // cuando se puede poner un const y si no es mejor poner un getter peso()
	var property tieneCredito = true

	method puedeLlegar(destino) {
		return destino.puedePasarMensajero(self)
	}

	method puedeLlamar() {
		return self.tieneCredito()
	}
}

object saraConnor {
	var property pesoSara = 60
	var property vehiculo = moto

	method peso() {
		return pesoSara + vehiculo.peso()
	}
	
	method puedeLlegarADestino(destino) {
		return destino.puedePasarMensajero(self)
	}

	method puedeLlamar() { return false }
}

//vehículos
object moto {
	const property peso = 100 // esta bien esto o es mejor simplemente poner getter?
}

object camion {
	var property cantidadDeAcoplados = 0

	method peso() {
		return 500 + (cantidadDeAcoplados * 500)
	}
}