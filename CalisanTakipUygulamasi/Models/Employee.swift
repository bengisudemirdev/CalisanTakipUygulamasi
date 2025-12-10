import Foundation

struct Employee: Identifiable, Codable {
    let id: UUID
    var name: String
    var position: String
    var age: Int

    init(id: UUID = UUID(), name: String, position: String, age: Int) {
        self.id = id
        self.name = name
        self.position = position
        self.age = age
    }
}
