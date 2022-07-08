//
//  VariableViewController.swift
//  DemoClass
//
//  Created by Kanna Dinesh on 7/8/22.
//

import UIKit

class VariableViewController: UIViewController, UITableViewDelegate {
    
    var myNumber : Double!
    var nextNumber : Int!
    var name : String!
    var array1 : [Int]!
    var array2 : [String]!
    var array3 : [Double]!
    var arrayDict : [[String:String]]!
    var phoneArray : [[String:Any]]!
    var myOptionalValue : Int?
    var myDefiniteValue : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        var myArray = [1,2,3,4,5,5,6]
//        var array2 = ["One","Two","Three",1,4,5,67]
//        var array3 = [10.0,23.1,45.45]        
        arrayDict = [["key":"Nitisha","value":"Student"],
                ["key":"Dinesh","value":"Student"],
                ["key":"Mahesh","value":"Student"],
                ["key":"Suresh","value":"Student"]]        
        print(arrayDict[0]["key"],arrayDict[0]["value"])
        print(arrayDict[0]["key"]!,arrayDict[0]["value"]!)
        
        //        let finalValue = (myOptionalValue ?? 10) + myDefiniteValue
        //        let finalValue = myOptionalValue! + myDefiniteValue
        
        var indiaDict  = ["name":"India",
                          "area":"10000sqkm",
                          "population":"103023044",
                          "seas":"4",
                          "neighbours":"5"]
//        print(indiaDict)
//        print(indiaDict["neighbours"])
//        print(indiaDict["name"])
//        print(indiaDict["population"])
        
//        print(indiaDict.keys)
//        print(indiaDict.values)
        
        phoneArray = [["name":"Nithisha","phoneNumber":"3io213232134","fName":"reddy","age":25],
                      ["name":"Dinesh","phoneNumber":"21321oi3829013","fName":"kothuri","age":31],
                      ["name":"suresh","phoneNumber":"23412o423","fName":"xyz" ,"age":23],
                      ["name":"Mahesh","phoneNumber":"2314124","fName":"abc","age":48]
        ]
        
//        filter, map, reduce, floatmap
        
        for dict in phoneArray {
            print(dict)
        }
        
        for i in 0..<phoneArray.count {
            var fullName = (phoneArray[i]["name"] as! String) + " : " + (phoneArray[i]["fName"] as! String)
            print(fullName)
        }
        
        
        phoneArray.append(["name":"suhas","phoneNumber":"3213","fName":"yyy","age":70])
        indiaDict["states"] = "28"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
