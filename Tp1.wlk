object paquete {
	var property destino = puenteDeBrooklyn
	var property pagado = true
	var property mensajero = jeanGray

	method sePuedeEntregar() {
		return self.pagado() && self.mensajeroPuedeLlegar()
	}

	method mensajeroPuedeLlegar() {
		return mensajero.puedeLlegar(destino)
	}
}

//destinos
object puenteDeBrooklyn {
	method permitido(mensajero) {
		return mensajero.peso() <= 1000 //si el mensajero pesa hasta 1000 kilos, puede pasar por el puente
	}
}

object laMatrix {
	method permitido(mensajero) {
		return mensajero.llamado()	//si el mensajero puede llamar, puede entrar a la Matrix
	}
}

//mensajeros
object jeanGray {
	const property llamado = true
	const property peso = 65

	method puedeLlegar(destino) {
		return destino.permitido(self)
	}
}

object neo {
	const property peso = 0
	var property tieneCredito = true

	method puedeLlegar(destino) {
		return destino.permitido(self)
	}

	method llamado() {
		return self.tieneCredito()
	}
}

object saraConnor {
	var property pesoSara = 60
	var property vehiculo = moto
	const property llamado = false

	method peso() {
		return pesoSara + vehiculo.peso()
	}
	method puedeLlegar(destino) {
		return destino.permitido(self)
	}
}

//vehículos
object moto {
	const property peso = 100
}

object camion {
	var property acoplados = false

	method peso() {
		return if (acoplados) {1000} else { 500 }
	}
}