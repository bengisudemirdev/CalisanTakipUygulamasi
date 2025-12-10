import SwiftUI

class EmployeeListViewModel: ObservableObject {
    @Published var employees: [Employee] = []

    init() {
        loadInitialData()
    }

    func loadInitialData() {
        employees = [
            Employee(name: "Bengisu", position: "iOS Developer", age: 25),
            Employee(name: "Bengi", position: "Flutter Developer", age: 23),
            Employee(name: "Beyso", position: "Frontend Developer", age: 28)
        ]
    }
    func updateEmployee(_ employee: Employee) {
        if let index = employees.firstIndex(where: { $0.id == employee.id }) {
            employees[index] = employee
        }
    }
}
