import XCTest
@testable import enterprise

final class enterpriseTests: XCTestCase {
    func enterprise_sould_be_valid_when_ok() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let ent = try? Enterprise.createNew(nome: "Monster Inc", cnpj: "APOK73JFO06BFIS")
        XCTAssertEqual(ent!.id, "Monster Inc-APOK73JFO06BFIS")
    }

    static var allTests = [
        ("enterprise_sould_be_valid_when_ok", enterprise_sould_be_valid_when_ok),
    ]
}
