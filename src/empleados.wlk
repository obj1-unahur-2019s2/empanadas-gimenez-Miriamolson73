object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var resultado=0// variable gastar dinero
	//var filtro1=0
	//var filtro2=0
	method gastar(cuanto){ resultado-=cuanto}
	//TOTAL DEUDA
	method totalDeuda(){return resultado.min(0)}
		
//		if (resultado<0) {  filtro1= resultado}
		
//		else if (resultado>0){filtro1=0}
		
//	return filtro1
	
//	}
//TOTAL DE DINERO		
	method totalDinero(){return resultado.max(0)}
//		if (resultado>0) {  filtro2= resultado}
		
//		else if (resultado<0){filtro2=0}
		
//	return filtro2
		
//	}
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){resultado+=sueldo}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado=0
	
	method venderEmpanada() {cantidadEmpanadasVendidas += 1	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada// es equivalente el return

	method cobrarSueldo(){	totalCobrado+=self.sueldo()		}
	
	method totalCobrado() { return totalCobrado}//es equivalente al =
		
}
object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	//method pagarA( empleado ) { dinero -= empleado.sueldo() }
	
	method pagarA(empleado) {
    	dinero -= empleado.sueldo()
    	empleado.cobrarSueldo()
	}
}

