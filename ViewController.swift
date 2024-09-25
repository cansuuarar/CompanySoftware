//
//  ViewController.swift
//  CompanySoftware
//
//  Created by CANSU ARAR on 19.09.2024.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var employeeName: UITextField!
    @IBOutlet weak var employeeAge: UITextField!
    @IBOutlet weak var employeeMaritalStatus: UITextField!
    @IBOutlet weak var employeeType: UISegmentedControl!
    @IBOutlet weak var messageLabel: UILabel!
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    @IBOutlet weak var companyBudget: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var companyLaunchYear: UITextField!
    @IBOutlet weak var messageLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        employeeName.placeholder = "Enter your name"
        employeeAge.placeholder = "Enter your age"
        employeeMaritalStatus.placeholder = "Enter your marital status"
        
        companyName.placeholder = "Enter company name"
        companyBudget.placeholder = "Enter company budget"
        companyLaunchYear.placeholder = "Enter launching year"
        
        
        messageLabel.isHidden = true
        messageLabel2.isHidden = true
        
        employeeType.selectedSegmentIndex = 0
       
        employeeType.removeAllSegments()
        employeeType.insertSegment(withTitle: EmployeeTypes.jrEmployee.rawValue, at: 0, animated: false)
        employeeType.insertSegment(withTitle: EmployeeTypes.midEmployee.rawValue, at: 1, animated: false)
        employeeType.insertSegment(withTitle: EmployeeTypes.srEmployee.rawValue, at: 2,  animated: false)
        employeeType.selectedSegmentIndex = 0
        
        
        
    }
    

    @IBAction func createEmployee(_ sender: Any) {
        let employeeName = employeeName.text ?? ""
        let employeeAge = Int(employeeAge.text ?? "") ?? 0
        let employeeMaritalStatus = employeeMaritalStatus.text ?? ""
        let employeeType = getEmployeeTypeIndex()
        
        let employee = Employee(name: employeeName, age: employeeAge, maritalStatus: employeeMaritalStatus, type: employeeType)
        
        if let appDelegate {
            appDelegate.employees.append(employee)
        }
        messageLabel.isHidden = false
        messageLabel.text = "\(employeeName) is created!"
    
    }
    
    func getEmployeeTypeIndex() -> EmployeeTypes {
        switch employeeType.selectedSegmentIndex {
        case 0:
            return .jrEmployee
        case 1:
            return .midEmployee
        case 2:
            return .srEmployee
        default:
            return .jrEmployee
        }
    }
    
    
    
    @IBAction func createCompany(_ sender: Any) {
        let companyName = companyName.text ?? ""
        let companyEmployees = appDelegate!.employees.first!
        let companyBudget = Int(companyBudget.text ?? "") ?? 0
        let companyLaunchYear = companyLaunchYear.text ?? ""
        
        var companyA = Company(name: companyName, employees: [companyEmployees], budget: companyBudget, launchYear: companyLaunchYear)
        
        if let appDelegate {
            appDelegate.companies.append(companyA)
        }
        
        messageLabel2.isHidden = false
        messageLabel2.text = "\(companyA.name)  \(companyA.employees.first!.name) is created!"

    }
}

