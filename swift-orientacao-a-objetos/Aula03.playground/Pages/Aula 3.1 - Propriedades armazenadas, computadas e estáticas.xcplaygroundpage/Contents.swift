class Conta {
    var saldo = 0.0
    var nome: String
    
    static var taxaTransferencia = 0.1
    
    var negativado: Bool {
        return saldo < 0
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

var contaAnna = Conta(nome: "Anna")
contaAnna.sacar(20)
contaAnna.negativado
contaAnna.depositar(100)
contaAnna.negativado

// print(contaAnna.taxaTransferencia) -> Erro!
print(Conta.taxaTransferencia)

