import SwiftUI

struct AddEmployeeView: View {
    @ObservedObject var viewModel: EmployeeListViewModel
    @Environment(\.dismiss) var dismiss

    @State private var name = ""
    @State private var position = ""
    @State private var age = ""

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
                let newEmployee = Employee(name: name, position: position, age: ageInt)
                viewModel.employees.append(newEmployee)
                dismiss()
            }
        }
        .navigationTitle("Yeni Çalışan Ekle")
    }
}

// Preview
#Preview {
    AddEmployeeView(viewModel: EmployeeListViewModel())
}
