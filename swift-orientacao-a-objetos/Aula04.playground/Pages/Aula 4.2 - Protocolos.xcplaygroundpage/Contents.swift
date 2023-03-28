protocol Conta {
    var saldo: Double { get set }
    
    func sacar(_ valor: Double)
    func depositar(_ valor: Double)
}

class ContaCorrente: Conta { // ou struct
    var saldo: Double = 0.0
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
}

//O que significa esse { get set }? Significa que essa propriedade pode ser 
//lida e alterada. Com o get pegamos a informação; com o set nós setamos uma 
//informação. Assim essa propriedade pode ser tanto de leitura quanto de escrita.