import artefactos.*
import castillo.*

object rolando {

	var property capacidad = 2
	var property artefactos = #{}
	var property hogar = castilloDePiedra
	const property historialDeArtefactos = []
	var property poderBase = 5

	method encontrar(artefacto) {
		if (self.puedeAgregar()) {
			artefactos.add(artefacto)
		}
		historialDeArtefactos.add(artefacto)
	}

	method puedeAgregar() {
		return artefactos.size() < capacidad
	}

	method irAlHogar() {
		self.guardarArtefactosEnHogar()
		self.liberarEspacio()
	}

	method guardarArtefactosEnHogar() {
		hogar.guardarTodosLosArtefactos(artefactos)
	}

	method liberarEspacio() {
		artefactos.clear()
	}

	method posee(artefacto) {
		return self.todasLasPosesiones().contains(artefacto)
	}

	method todasLasPosesiones() {
		return artefactos.union(hogar.baul())
	}

	method poderPelea() {
		return self.poderBase() + self.poderDeArtefactos()
	}

	method poderDeArtefactos() {
		return artefactos.sum({ artefacto => artefacto.poder(self) }) // sum() -> Recibe un bloque y realiza una sumatoria
	}

	method batalla() {
		artefactos.forEach({ artefacto => artefacto.usar()})
		poderBase += 1
	}

}

