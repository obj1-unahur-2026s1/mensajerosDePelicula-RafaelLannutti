import paquetes.*
import mensajeros.*
object mensajeria {
  const mensajeros = []
  method contratarUnMensajero(unMensajero) {
    mensajeros.add(unMensajero)
  }
  method despedirUnMensajero(unMensajero) {
    mensajeros.remove(unMensajero)
  }
  method despedirATodosLosMensajeros() {
    mensajeros.clear()
  }
  method esGrande() { //Method de consulta
    return mensajeros.size() > 2
  }
  method elPrimerEmpleadoPuedeEntregar(unPaquete) {
    return unPaquete.puedeSerEntregado(self.primerEmpleado())
  }
  method primerEmpleado() {
    return mensajeros.first()
  }
  
}