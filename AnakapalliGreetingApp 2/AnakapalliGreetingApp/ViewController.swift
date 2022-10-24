//
//  ViewController.swift
//  AnakapalliGreetingApp
//
//  Created by Anakapalli,Kanaka Venkata Phaneendrababu on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var greetingLBL: UILabel!
    
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    
    
    @IBOutlet weak var gpaSLDR: UISlider!
    
    @IBAction func submit(_ sender: UIButton) {
        guard let firstName = firstNameTF.text else{
            return
            
        }
        let fName = firstName
        guard let lastName = lastNameTF.text
        else{
            return
        }
        
        let lName = lastName
        var currentValue = 0.0
        currentValue = Double(gpaSLDR.value)
        currentValue = round(currentValue*10)/10.0
        var text = "Howdy \(fName),\(lName)\n"
        if(currentValue >= 3.0 && currentValue <= 4.0){
    text = text + "your GPA is \(currentValue) - Good Job"
        }
        else if (currentValue >= 2.0 && currentValue <= 3.0){
            text = text + "your GPA is \(currentValue) - It can be improved."
        }
        else {
            text = text + "Your GPA is \(currentValue)- see your acedemic advisor immediately"
        }
        self.greetingLBL.text = text
    }
    @IBAction func reset(_ sender: UIButton) {
        
        gpaSLDR.value = 0.0
        firstNameTF.text = ""
        lastNameTF.text = ""
        greetingLBL.text = ""
    }
    
    
}

