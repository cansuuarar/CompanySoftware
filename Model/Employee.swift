//
//  Employee.swift
//  CompanySoftware
//
//  Created by CANSU ARAR on 19.09.2024.
//

import Foundation

class Employee {
    var name: String
    var age: Int
    var maritalStatus: String
    //private var salary : Int?
    private(set) var salary: Int? // get aktif, seti private olur.
    var type: EmployeeTypes
    
    /*var salary : Int {
        return _salary
    }
     */
    
    
    init(name: String, age: Int, maritalStatus: String, type: EmployeeTypes) {
        self.name = name
        self.age = age
        self.maritalStatus = maritalStatus
        self.type = type
        calculateSalary()
    }
        
    
    func calculateSalary() {
        switch type {
        case .jrEmployee:
            salary = age * 2 * 1000
        case .midEmployee:
            salary = age * 3 * 1000
        case .srEmployee:
            salary = age * 4 * 1000
        }
        
    }
}



