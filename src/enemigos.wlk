object erethia {

	var property enemigos = #{ archibaldo, caterina, astra }

	method vencibles(capo) {
		return enemigos.filter({ enemigo => capo.vencible(enemigo) })
	}

	method hogaresConquistables(capo) {
		return self.vencibles(capo).map({ enemigo => enemigo.hogar() })
	}

	method esPoderoso(capo) {
		return enemigos.all({ enemigo => capo.vencible(enemigo) })
	}

}

object archibaldo {

	var property hogar = palacioDeMarmol

	method poderPelea() {
		return 16
	}

	method hogar() {
	}

}

object caterina {

	var property hogar = fortalezaDeAcero

	method poderPelea() {
		return 28
	}

	method hogar() {
	}

}

object astra {

	var property hogar = torreDeMarfil

	method poderPelea() {
		return 14
	}

	method hogar() {
	}

}

object palacioDeMarmol {

}

object fortalezaDeAcero {

}

object torreDeMarfil {

}

