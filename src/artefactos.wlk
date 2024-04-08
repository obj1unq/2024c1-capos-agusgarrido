object espadaDelDestino {

	var primerUso = true

	method poder(personaje) {
		return personaje.poderBase() * self.coeficiente()
	}

	method usar() {
		primerUso = false
	}

	method coeficiente() {
		return if (primerUso) {
			1
		} else {
			0.5
		}
	}

}

object libroDeHechizos {

}

object collarDivino {

	var usos = 0

	method poder(personaje) {
		return 3 + self.extra(personaje)
	}

	method extra(personaje) {
		return if (personaje.poderBase() > 6) {
			usos
		} else {
			0
		}
	}

	method usar() {
		usos += 1
	}

}

object armaduraDeAceroValyrio {

	method poder(personaje) {
		return 6
	}

	method usar() {
		
	}

}

