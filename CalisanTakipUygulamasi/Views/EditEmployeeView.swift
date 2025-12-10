import SwiftUI

struct EditEmployeeView: View {
    @ObservedObject var viewModel: EmployeeListViewModel
    @Environment(\.dismiss) var dismiss

    var employee: Employee

    @State private var name: String
    @State private var position: String
    @State private var age: String

    init(viewModel: EmployeeListViewModel, employee: Employee) {
        self.viewModel = viewModel
        self.employee = employee

        _name = State(initialValue: employee.name)
        _position = State(initialValue: employee.position)
        _age = State(initialValue: "\(employee.age)")
    }

    var body: some View {
        Form {
            Section(header: Text("Çalışan Bilgileri")) {
                TextField("Ad Soyad", text: $name)
                TextField("Pozisyon", text: $position)
                TextField("Yaş", text: $age)
                    .keyboardType(.numberPad)
            }

            Button("Kaydet") {
                guard let ageInt = Int(age) else { return }

                let updatedEmployee = Employee(
                    id: employee.id,
                    name: name,
                    position: position,
                    age: ageInt
                )

                viewModel.updateEmployee(updatedEmployee)
                dismiss()
            }
        }
        .navigationTitle("Çalışanı Düzenle")
    }
}

#Preview {
    EditEmployeeView(
        viewModel: EmployeeListViewModel(),
        employee: Employee(name: "Test", position: "iOS", age: 25)
    )
}
