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
    return unPaquete.puedeSerEntregado(self.primerMensajero())
  }
  method primerMensajero() {
    return mensajeros.first()
  }
  method ultimoMensajero(){
    return mensajeros.last()
  }
  method PesoUltimoEmpleado() {
    return self.ultimoMensajero().pesoTotal()
  }
  method pesoTotalDeTodosLosMensajeros() {
        mensajeros.sum({m => m.pesoTotal() }) //Lo utilizo para obtener el peso de todos, es decir, transformo mi lista de nombres en numeros
  }
}