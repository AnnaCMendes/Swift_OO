class Conta {
    var saldo = 0.0 {
        willSet(novoValor) { //willSet - Novo valor
            print("O saldo está sendo alterado! O seu novo valor será de \(novoValor)")
        }
        
        didSet(valorAntigo) { // didSet: Valor antigo
            print("O saldo foi alterado! O seu valor antigo era de \(valorAntigo)")
        }
    }
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

var contaGiovanna = Conta(nome: "Anna")
contaGiovanna.depositar(20)
contaGiovanna.sacar(10)


