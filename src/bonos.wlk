import categorias.*

object  bonoPorcentaje {
	method monto(empleado){
		return empleado.neto() * 10 / 100 // o 0.1
	}
}


object bonoFijo {
	method monto(empleado){
		return 80
	}
}

object bonoDependeFaltas{
	method monto(empleado){
		const faltas = empleado.faltas()
		if (faltas == 0){
			return 100
		}
		else if (faltas == 1){
			return 50
		}
		else {
			return 0
		}
	}
}
object bonoNulo{
	method monto(empleado){
		return 0
	}
}