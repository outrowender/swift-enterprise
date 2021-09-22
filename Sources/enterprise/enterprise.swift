import Foundation

class Enterprise {
    private(set) var id, nome, cnpj: String
    private var _internalId: String = "valor privado"

    private init(nome: String, cnpj: String){
        self.id = "\(nome)-\(cnpj)"
        self.nome = nome
        self.cnpj = cnpj
    }

    static func createNew(nome: String, cnpj: String) throws -> Enterprise {
        let validation = Enterprise.validateEnterprise(nome: nome, cnpj: cnpj)

        // Enterprise must be valid
        guard validation else {
            throw EnterpriseErrors.invalidParameters
        }

        return Enterprise(nome: nome, cnpj: cnpj)
    }

    private static func validateEnterprise(nome: String, cnpj: String) -> Bool {
        if(nome.count < 4 || nome.count > 16) { return false }
        if(cnpj.count != 15 ) { return false }

        return true
    }
}

enum EnterpriseErrors: Error {
    case invalidParameters
}
