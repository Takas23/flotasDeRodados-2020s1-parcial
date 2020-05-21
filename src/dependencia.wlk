import trafic.*
import rodados.*

class Dependencia {
	const flota = []
	var property empleados
	
	method agregarAFlota(rodado) {
		flota.add(rodado)
	}
	method quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	method pesoTotalFlota() {
		return flota.sum({auto => auto.peso()})
	}
	method estaBienEquipada() {
		return flota.size() >= 3 and flota.all({auto => auto.velocidadMax() >= 100})
	}
	method capacidadTotalEnColor(color) {
		return flota.filter({auto => auto.color() == color}).sum({auto => auto.capacidad()})
	}
	method colorDelRodadoMasRapido() {
		return flota.max({auto => auto.velocidadMax()}).color()
	}
	method capacidadFaltante() {
		return (empleados - flota.sum({auto => auto.capacidad()})).max(0)
	}
	method esGrande() {
		return empleados >= 40 and flota.size() >= 5
	}
}
