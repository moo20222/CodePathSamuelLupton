//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Samuel Lupton on 1/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextFeild: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextFeild: UITextField!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var introButton: UIButton!
    @IBOutlet weak var numberOfSiblingsTextFeild: UILabel!
    @IBOutlet weak var moreSiblingStepper: UIStepper!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 200/255, green: 100/255, blue: 100/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
       
       numberOfPetsLabel.text = "\(Int(sender.value))"
   }
    
    @IBAction func siblingstepperdidchange (_ sender: UIStepper) {
        
        numberOfSiblingsTextFeild.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
            // Let's us chose the title we have selected from the segmented control
            let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
            
            // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
            // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
            let introduction1 = "Hey :) My name is \(firstNameTextFeild.text!) \(lastNameTextField.text!). "
            let introduction2 = "I am in my \(year!) year in computer science and my fourth year in electrical engineering at the \(schoolNameTextFeild.text!). "
            let introduction3 = "I have \(numberOfPetsLabel.text!) pets. However, I think cats are cute! "
            let introduction4 = "It is \(morePetsSwitch.isOn) that I want a pet at this time. "
            let introduction5 = "Something interesting about me is that I have \(numberOfSiblingsTextFeild.text!) siblings. "
            let introduction = introduction1 + introduction2 + introduction3 + introduction4 + introduction5
          
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Pleased to meet you!", style: .default, handler: nil)
            
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
        }

}

