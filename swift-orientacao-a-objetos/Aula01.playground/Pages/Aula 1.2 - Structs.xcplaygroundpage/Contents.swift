struct ContaCorrente {
var saldo = 0.0
//var nome: String

mutating func sacar(_ valor: Double) {
saldo -= valor
}
mutating func depositar(_ valor: Double) {
saldo += valor
  }
}

var contaCorrenteAnna = ContaCorrente()
print(contaCorrenteAnna.saldo)
contaCorrenteAnna.depositar(1500)
print(contaCorrenteAnna.saldo)

var contaCorrenteCaio = ContaCorrente()
contaCorrenteCaio.depositar(200)
contaCorrenteCaio.sacar(100)
print(contaCorrenteCaio.saldo)


// No Swift, Structs 
// mutanting - diz para a função que pode ser modificado o atributo valor dentro de um metodo
