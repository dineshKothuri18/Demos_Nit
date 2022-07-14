//
//  StructDetailVCViewController.swift
//  tableViewDemo
//
//  Created by Kanna Dinesh on 7/14/22.
//

import UIKit

struct DetailsObject {
    var name : String!
    var email : String!
    var phoneNumber : String!
}
struct Option {
    let title: String
    let onClick: (() -> Void)
}

class StructDetailVCViewController: UIViewController {

    var tableView : UITableView!
//    var phoneDictArray = [[String:String]]()
    var phoneDictArray = [DetailsObject]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.initialSetup()
//        let d1 = ["name":"Nitisha","email":"nit@gmail.com","phoneNumber":"9876543211"]
//        let d2 = ["name":"Dinesh","email":"din@gmail.com","phoneNumber":"9876543221"]
//        let d3 = ["name":"ABC","email":"abc@gmail.com","phoneNumber":"9876543123"]
//        let d4 = ["name":"XYZ","email":"xyz@gmail.com","phoneNumber":"98765431312"]
        let d1 = DetailsObject.init(name: "Nitisha", email: "nit@gmail.com", phoneNumber: "9876543211")
        let d2 = DetailsObject.init(name: "Dinesh", email: "din@gmail.com", phoneNumber: "9876543221")
        let d3 = DetailsObject.init(name: "ABC", email: "abc@gmail.com", phoneNumber: "9876543123")
        let d4 = DetailsObject.init(name: "XYZ", email: "xyz@gmail.com", phoneNumber: "98765431312")
        phoneDictArray = [d1,d2,d3,d4]
        
    }
    
   
    
    func initialSetup()  {
        tableView = UITableView.init(frame: UIScreen.main.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
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

extension StructDetailVCViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneDictArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "Cell1")
//        cell.textLabel?.text = phoneDictArray[indexPath.row]["name"]
//        let finalStr = phoneDictArray[indexPath.row]["email"]! + " - " + phoneDictArray[indexPath.row]["phoneNumber"]!
//        cell.detailTextLabel?.text = finalStr
        
        cell.textLabel?.text = phoneDictArray[indexPath.row].name
        cell.detailTextLabel?.text = phoneDictArray[indexPath.row].email! + " " + phoneDictArray[indexPath.row].phoneNumber
        return cell
    }
}
