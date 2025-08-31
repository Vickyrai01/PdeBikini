object bobEsponja{

	var energia = 1000
	var dinero = 10000
	var nivelDeFelicidad = 100

	method estaListo() =  true

	method comerCangreburguer(){
		energia =+ 1000 * nivelDeFelicidad
  }

  method propina() = 1000 * nivelDeFelicidad

}

object patricio {
	var energia = 300
  var dinero = 0
  var masaMuscular = 40
	
  method comerCargreburger() {
		masaMuscular += 10
  }

  method propina() = dinero
}

object calamardo {

	const energia = 10
	var dinero = 5000
	var horasDeSuenio = 5
	
  method estaListo() = horasDeSuenio.even() 
  method comerCangreburguer(){}

  method propina() = 0

}

object DonCangrejo{
  var dinero = 1000000
  var dineroGastadoEnPerlita = 500000

  method llevarseComision(tarifa){
    const mitadDeTarifa = tarifa.div(2)
    dinero += mitadDeTarifa
    dineroGastadoEnPerlita += mitadDeTarifa
  }


}

object crustaceoCascarudo{
	var empleado = calamardo
	const precioCangreburger = 1000
	var nivelDeLimpieza = 100
  var cajaFuerte = 0

	method  estaListoParaAbrir(){
		return empleado.estaListo() && self.estaLimpio()
  }

  method estaLimpio() = nivelDeLimpieza.between(50, 95)

  method cobrarCangreburger(personaje){
    DonCangrejo.llevarseComision(self.tarifa(personaje))
    empleado.bonusPorVeuertnder(self.tarifa(personaje))
    self.guardarEnCaja(self.tarifa(personaje))
    personaje.comerCangreburger()
  }
  method tarifa(personaje){
    return  precioCangreburger + personaje.propina()
  }


  method guardarEnCaja(dinero) {

    if(self.estaLimpio()){
      cajaFuerte += dinero
    }
    
  }
}

