
//
//  Student.swift
//  Assignment 1
//
//  Created by saw pyaehtun on 30/07/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import Foundation

class Student {
    var dob : String?
    var gender : String?
    
    init(dob : String?,geneder : Int) {
        self.dob = dob
        switch geneder {
        case 0:
            self.gender = "Male"
        case 1 :
            self.gender = "Female"
        default:
            self.gender = "Male"
        }
    }
}
