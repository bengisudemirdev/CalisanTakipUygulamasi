import SwiftUI

struct EmployeeDetailView: View {
    
    @State private var selectedTab = "Bilgiler"
    
    var employee: Employee
    @ObservedObject var viewModel: EmployeeListViewModel
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 24) {
                
                // MARK: Avatar ve İsim Kartı
                VStack(spacing: 16) {
                    ZStack {
                        Circle()
                            .fill(Color.blue.opacity(0.2))
                            .frame(width: 350, height: 120)
                        
                        Text(String(employee.name.prefix(1)))
                            .font(.system(size: 48, weight: .bold))
                            .foregroundColor(.blue)
                    }
                    
                    Text(employee.name)
                        .font(.largeTitle)
                        .bold()
                    
                    Text(employee.position)
                        .font(.title3)
                        .foregroundColor(.gray)
                }
                .padding()
                .background(.thinMaterial)
                .cornerRadius(16)
                .shadow(color: .black.opacity(0.05), radius: 5)
                .padding(.horizontal)
                
                
                // MARK: Tab Picker
                Picker("Tabs", selection: $selectedTab) {
                    Text("Bilgiler").tag("Bilgiler")
                    Text("Notlar").tag("Notlar")
                    Text("Görevler").tag("Görevler")
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                
                // MARK: Tab İçerikleri
                Group {
                    switch selectedTab {
                    case "Bilgiler":
                        infoCard
                        
                    case "Notlar":
                        Text("Henüz not yok")
                            .foregroundColor(.gray)
                            .padding()
                        
                    case "Görevler":
                        Text("Görev bulunmuyor")
                            .foregroundColor(.gray)
                            .padding()
                        
                    default:
                        EmptyView()
                    }
                }
                .animation(.easeInOut, value: selectedTab)
                
            }
            .padding(.top)
            
        }
    }
    
    
    // MARK: Info Kartı
    var infoCard: some View {
        VStack(spacing: 10) {
            Text(employee.name)
                .font(.title3)
                .fontWeight(.semibold)
            
            Text(employee.position)
                .font(.headline)
                .foregroundColor(.gray)
            
            
            
            HStack(alignment: .bottom) {
                    Image(systemName: "envelope")
                        .foregroundColor(.blue)
                   
                }
                .foregroundColor(.gray)
            
        }
        .padding()
        .frame(width: 380.0)
        .background(.thinMaterial)
        .cornerRadius(16)
        
        .shadow(color: .black.opacity(0.05), radius: 5)
        
        
    }
}

#Preview {
    EmployeeDetailView(
        employee: Employee(id: UUID(), name: "Test", position: "Developer", age: 23),
        viewModel: EmployeeListViewModel()
    )
}
