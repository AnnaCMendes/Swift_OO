struct Pessoa {
  let nome: String
  let idade: Int
  let altura: Double
  let peso: Double

  var imc: Double {
    return peso / (altura * altura)
  }

  var adulto: Bool {
    return idade >= 18
  }
}