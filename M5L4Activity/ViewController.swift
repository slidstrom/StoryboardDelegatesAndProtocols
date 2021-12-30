//
//  ViewController.swift
//  M5L4Activity
//
//  Created by DSIAdmin on 12/30/21.
//

import UIKit

class ViewController: UIViewController {

    var model = EmployeeModel()
    var departments = [Department]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 4. Make the view controller the delegate
        model.delegate = self
        model.getEmployees()
        
    }
    
    


}

// 5. Make ViewController conform to the protocol
extension ViewController: EmployeeModelProtocol {
    
    // 6. Implement required protocol methods
    func employeesReceived(_ employees: [Department]) {
        self.departments = employees
        print(self.departments)
        print("Departments received")
    }
    
    
}
