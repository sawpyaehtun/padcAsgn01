//
//  InformationDetailViewController.swift
//  Assignment 1
//
//  Created by saw pyaehtun on 30/07/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class InformationDetailViewController: UIViewController {
    @IBOutlet weak var lblDOB: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    
    var student : Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblDOB.text = student?.dob
        lblGender.text = student?.gender
    }
    

}
