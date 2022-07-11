//
//  MyContactsVC.swift
//  DemoClass
//
//  Created by Kanna Dinesh on 7/11/22.
//

import UIKit

class MyContactsVC: UIViewController{
    
    
    var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView = UITableView.init(frame: UIScreen.main.bounds, style: .insetGrouped)
        tableView.backgroundColor = .red
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        tableView.register(UINib.init(nibName: "MyCustomTVCell", bundle: nil), forCellReuseIdentifier: "MyCustomTVCell")
    }
    
    func sampleFunction(indexpath:IndexPath)  {
        print("Total value",indexpath.row + indexpath.section)
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
extension MyContactsVC : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print()

        var cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomTVCell") as! MyCustomTVCell
        cell.rowLabel.text = "\(indexPath.row)"
        cell.sectionLabel.text = "\(indexPath.section)"
        cell.contentView.backgroundColor = .gray
//        if(cell == nil){
//            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "ContactCell")
//        }
//        cell?.textLabel?.text = "row - \(indexPath.row) section- \(indexPath.section)"
//        cell?.backgroundColor = .white
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row,indexPath.section)
        self.sampleFunction(indexpath: indexPath)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
