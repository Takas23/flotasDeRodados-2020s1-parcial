
class Corsa {
	var property color
	
	method capacidad() { return 4 }
	method velocidadMax() { return 150 }
	method peso() { return 1300	}	
}

class Kwid {
//alternativamente se podria crear el objeto tanque, con peso
	var property tanqueAdicional 
	
	method capacidad() { 
		return if (tanqueAdicional) {3}
			else 4
	}
	method velocidadMax() { 
		return if (tanqueAdicional) {120}
			else 110
	}
	method peso() { 
		return if (tanqueAdicional) {1200 + 150}
			else 1200
	}	
	method color() { return "azul" }
}

class Especial {
	var property capacidad
	var property velocidadMax
	var property peso
	var property color
}