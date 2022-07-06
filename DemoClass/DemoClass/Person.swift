//
//  File.swift
//  DemoClass
//
//  Created by Kanna Dinesh on 7/6/22.
//

import Foundation

class Person {
    var firstName : String?
    var lastName : String?
    var height : Int?
    var address : Address?
    var professional : ProfessionalDetails?
//    init(firstName:String,lastName:String,height:Int,address:Address,professional:ProfessionalDetails) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.height = height
//        self.address = address
//        self.professional = professional
//        
//    }
    
}

class Address {
    var street : String?
    var state : String?
    var zipCode : String?
}

class ProfessionalDetails {
    var jobType : String?
    var salary : Double?
    var designation : String?

}

struct Employee {
    var firstName : String?
    var lastName : String?
}
