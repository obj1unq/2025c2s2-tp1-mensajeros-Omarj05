object paquete {
	var property destino = puenteDeBrooklyn
	var property pagado = true
	var property mensajero = jeanGray

	method sePuedeEntregar() {
		return self.pagado() && self.mensajeroPuedeLlegar()
	}

	method mensajeroPuedeLlegar() {
		return mensajero.puedeLlegarA(destino)
	}
}

object puenteDeBrooklyn {
	method permitido(mensajero) {
		return mensajero.peso() < 1000
	}
}

object laMatrix {
	method permitido(mensajero) {
		return mensajero.llamado()	//si el mensajero puede llamar, puede entrar a la Matrix
	}
}

object jeanGray {
	const property llamado = true
	const property peso = 65

	method puedeLlegarA(destino) {
		return destino.permitido(self)
	}
}

object neo {
	const property peso = 0

	method puedeLlegarA(destino) {
		return destino.permitido(self)
	}

	method llamado() {
		return true


	}
}

object saraConnor {
	var property pesoSara = 60
	var property vehiculo = moto
	const property llamado = false

	method peso() {
		return pesoSara + vehiculo.peso()
	}
	method puedeLlegarA(destino) {
		return destino.permitido(self)
	}
}

object moto {
	const property peso = 100
}

object camion {
	const property pesoBase = 500
	var property acoplados = false

	method peso() {
		return if (acoplados) {pesoBase +500} else { pesoBase }
	}
}