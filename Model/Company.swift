//
//  Company.swift
//  CompanySoftware
//
//  Created by CANSU ARAR on 19.09.2024.
//

import Foundation

class Company {
    var name: String
    var employees: [Employee]
    var budget: Int
    var launchYear: String
    
    init(name: String, employees: [Employee], budget: Int, launchYear: String) {
        self.name = name
        self.employees = employees
        self.budget = budget
        self.launchYear = launchYear
    }
    
    func budgetCalculation (income: Int) -> Int{
        budget += income
        return budget
    }
    
    func budgetCalculation (expense: Int) -> Int{
        budget -= expense
        return budget
    }
    
    /*
    func paySalary(employeeName: String){
        for employee in employees {
            if employeeName == employee.name {
                budget -= employee.salary
            }
            break
        }
    }
    */
    
    func paySalary(employeeName: String) {
        for employee in employees {
            if employeeName == employee.name {
                
            }
        }
    }
}

