object pepe {
	var categoria = gerente
    var bonoPorResultados = bonoPorResultadoMontoFijo
    var bonoPresentismo = bonoPresentismoNormal
    var faltas = 0

    method sueldo() {
      return self.neto() + self.extraBonoPorResultados() + self.extraBonoPresentismo()
    }

    method faltas(_faltas) {
      faltas = _faltas
    }

    method faltas() {
      return faltas
    }
    
    method bonoPresentismo(_bonoPresentismo) {
      bonoPresentismo = _bonoPresentismo
    }

    method bonoPorResultados(_bonoPorResultados) {
      bonoPorResultados = _bonoPorResultados
    }

    method categoria(_categoria) {
      categoria = _categoria
    }
   
    method extraBonoPresentismo() {
      return bonoPresentismo.valor(self)
    }

    method extraBonoPorResultados() {
      return bonoPorResultados.valor(self)
    }

    method neto() {
      return categoria.sueldo()
    }

}

object bonoPresentimoNulo {
  method valor(empleado) {
    return 0
  }
}

object bonoPresentismoDemagogico {
  method valor(empleado) {
    return if (empleado.neto() < 18000){
        500
    } else {
        300
    }
  }
}

object bonoPresentismoAjuste {
  method valor(empleado) {
    return if (empleado.faltas() == 0) {
        100
    } else {
        0
    }
  }
}

object bonoPresentismoNormal {
  method valor(empleado) {
    return if (empleado.faltas() == 0) {
        2000
    } else if (empleado.faltas() == 1){
        1000
    } else {
        0
    }
  }
}

object bonoPorResultadoMontoFijo {
  method valor(empleado) {
    return 800
  }
}

object bonoPorResultadoNulo {
  method valor(empleado) {
    return 0
  }
}

object bonoPorResultadoPorcentaje {
  method valor(empleado) {
    return empleado.neto() * 0.1
  }
}

object gerente {
  method sueldo() {
    return 15000
  }
}

object cadete {
  method sueldo() {
    return 20000
  }
}
