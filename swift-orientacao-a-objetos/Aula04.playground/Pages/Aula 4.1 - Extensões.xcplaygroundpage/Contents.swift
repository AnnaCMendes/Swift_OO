class Conta {
    var saldo = 0.0
    var nome: String
    
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

extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaAnna = Conta(nome: "Anna")
contaAnna.depositar(200)

var contaThayane = Conta(nome: "Thayane")
contaAnna.transferir(contaThayane, 50)

print(contaAnna.saldo)
print(contaThayane.saldo)

func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}

let texto = "Anna"
contaCaracteresString(texto)

extension String {
    func contaCaracteresString() -> Int {
        return self.count
    }
}

print(texto.contaCaracteresString())
