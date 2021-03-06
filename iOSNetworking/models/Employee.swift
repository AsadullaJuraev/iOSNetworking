
import Foundation

struct Employee: Decodable {

    var status: String?
    var data: [Data]
}

struct Data: Decodable {

    var employee_age: String?
    var employee_name: String?
    var employee_salary: String?
    var id: String?
    var profile_image: String?
    
    init(){
        
    }
    
    init(age: String, name: String, salary: String, id: String, image: String){
        self.employee_name = name
        self.employee_age = age
        self.employee_salary = salary
        self.id = id
        self.profile_image = image
        
    }
}
