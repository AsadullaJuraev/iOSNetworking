//
//  ContentView.swift
//  iOSNetworking
//
//  Created by Asadulla Juraev on 11.02.2021.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    @ObservedObject var viewModel = PostViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                List(self.viewModel.employees, id: \.id) { emplo in
                    VStack(alignment: .leading){
                        Text(emplo.employee_name!).bold()
                        HStack{
                            Text("Age: ").font(.subheadline)
                            Text(emplo.employee_age!).font(.subheadline)
                            Text("| Salary: ").font(.subheadline)
                            Text(emplo.employee_salary!).font(.subheadline)
                        }
                    }
                    
                }
            }
            .navigationBarTitle("Employees")
            
        }.onAppear{
            self.viewModel.apiEmployeeList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
