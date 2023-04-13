import categorias.*
import bonos.*

object pepe{
	var categoria
	var bonoPresentismo
	var bonoResultado
	var cantFaltas
	//SET y GET
	method getCategoria() = categoria
	method setCategoria(cat) {
		categoria = cat
	}
	method getBonoPresentismo() = bonoPresentismo
	method setBonoPresentismo(bono) {
		bonoPresentismo = bono
	}
	method getBonoResultado() = bonoResultado
	method setBonoResultado(bono) {
		if (bono != bonoDependeFaltas){
			bonoResultado = bono
		}
	}
	method getCantFaltas() = cantFaltas
	method setCantFaltas(faltas) {
		cantFaltas = faltas
	}
	//Otra maner sin return
	method sueldoNeto() = categoria.neto()
	/* 
	method sueldoNeto(){
		return categoria.neto()
	}
	* */
	
	
	method sueldo(){
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self)
	}
}