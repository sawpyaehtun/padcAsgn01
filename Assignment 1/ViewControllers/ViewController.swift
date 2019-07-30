//
//  ViewController.swift
//  Assignment 1
//
//  Created by saw pyaehtun on 30/07/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfDOB: UITextField!
    @IBOutlet weak var sgmGender: UISegmentedControl!
    var datePicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        
        // create a custom toolbar
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        toolBar.sizeToFit()
        
        // create custom buttons
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: #selector(selectData))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        
        // Adding custom buttons to the tool bar
        toolBar.setItems([spaceButton,doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
 
        //Setup inputView to textField
        tfDOB.inputView = datePicker
        //setup inputAccessoryView with toolbar
        tfDOB.inputAccessoryView = toolBar
    }
    
    @objc func selectData(){
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        tfDOB.text = formatter.string(from: datePicker?.date ?? Date())
        view.endEditing(true)
    }


    @IBAction func btnRegister(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: InformationDetailViewController.self)) as! InformationDetailViewController
        let student = Student(dob: tfDOB.text, geneder: sgmGender.selectedSegmentIndex)
        vc.student = student
        self.present(vc, animated: true, completion: nil)
    }
    
}

