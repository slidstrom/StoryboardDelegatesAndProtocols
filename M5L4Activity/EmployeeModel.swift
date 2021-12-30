//
//  EmployeeModel.swift
//  M5L4Activity
//
//  Created by DSIAdmin on 12/30/21.
//

import Foundation

// 1. Create the protocol
protocol EmployeeModelProtocol {
    
    func employeesReceived(_ employees: [Department])
    
}

class EmployeeModel {
    
    // 2. Create the delegate property
    var delegate:EmployeeModelProtocol?
    
    func getEmployees(){
        let path = Bundle.main.path(forResource: "M5L3Json", ofType: "json")
        
        guard path != nil else{
            print("Can't find the json file")
            return
        }
        
        let url = URL(fileURLWithPath: path!)
        
        do{
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            let array = try decoder.decode([Department].self, from: data)
            
            // 3. Pass the data back to the delegate -> go to view controller for 4.
            delegate?.employeesReceived(array)
            
        }
        catch{
            print("Couldn't create Data object from file")
        }
        
    }
    
    
}
