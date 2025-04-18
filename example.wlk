object tito {
  var dosis = 0
  var ultimaBebidaConsumida = null

  method peso() = 70
  method consumir(cantidad, bebida) {
    dosis = cantidad
    ultimaBebidaConsumida = bebida
  }
  method dosisConsumida() = dosis
  method ultimaBebida() = ultimaBebidaConsumida
  method velocidad(sustancia) {
    return sustancia.rendimiento() * self.inercia() / self.peso()
  }
  method inercia() = 490 
}

object whisky {
  method rendimiento() = 0.9 ** tito.dosisConsumida()
}

object terere {
  method rendimiento() = (0.1 * tito.dosisConsumida()).max(1)
}

object cianuro {
  method rendimiento() = 0 
}