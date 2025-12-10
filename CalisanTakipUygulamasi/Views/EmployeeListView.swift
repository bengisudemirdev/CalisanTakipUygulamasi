import SwiftUI

struct EmployeeListView: View {
    
    @StateObject var vm = EmployeeListViewModel()
    
    @State private var showAddEmployee = false
    @State private var showEditEmployee = false
    @State private var selectedEmployee: Employee? = nil
    
    
    
    var body: some View {
        NavigationStack{
        List{
            ForEach(vm.employees){ emp in
                NavigationLink(destination: EmployeeDetailView(employee: emp, viewModel: vm)){
                    HStack(spacing: 20.0){
                        Image(systemName: "person.circle.fill")
                            .foregroundColor(.black)
                            
                        
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text(emp.name)
                                .foregroundColor(Color.purple)
                                .font(.headline)
                            
                            Text(emp.position)
                                .font(.subheadline)
                        }.swipeActions {
                            Button("Düzenle") {
                                selectedEmployee = emp
                                showEditEmployee = true
                            }
                            
                            .tint(.pink)
                        }
                    }
                }
            }
           
            
        }.navigationTitle("Çalışanlar").safeAreaPadding(.top, 8.0)
        
            
    }
    
    }
}






#Preview {
    EmployeeListView()
}
