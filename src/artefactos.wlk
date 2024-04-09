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

object libroDeHechizos {

	var property hechizos = []

	method poder(personaje) {
		return if (not hechizos.isEmpty()) {
			hechizos.first().poder()
		} else {
			0
		}
	}

	method usar() {
		if (not hechizos.isEmpty()) {
			hechizos.remove(hechizos.first())
		}
	}

}

// Hechizos
object bendicion {

	method poder(personaje) {
		return 4
	}

}

object invisibilidad {

	method poder(personaje) {
		return personaje.poderBase()
	}

}

object invocacion {

	method poder(personaje) {
		return personaje.poderInvocacion()
	}

}

