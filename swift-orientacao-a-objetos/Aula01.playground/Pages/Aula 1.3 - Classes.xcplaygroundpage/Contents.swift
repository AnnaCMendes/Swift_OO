class ContaCorrente {
    var saldo: Double
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        saldo = 0.0
        self.nome = nome // self para passar o parametro do init
    } // necessário inicializar todos os atributos da classe.
}

var contaCorrenteAnna = ContaCorrente(nome: "Anna")
print(contaCorrenteAnna.saldo)
contaCorrenteAnna.depositar(1500)
print(contaCorrenteAnna.saldo)

var contaCorrenteCaio = ContaCorrente(nome: "Caio")
contaCorrenteCaio.depositar(200)
contaCorrenteCaio.sacar(100)
print(contaCorrenteCaio.saldo)

// class não é necessário utilizar o mutating.


