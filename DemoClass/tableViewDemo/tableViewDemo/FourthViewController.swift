//
//  FourthViewController.swift
//  tableViewDemo
//
//  Created by Aennam, Nithisha Reddy on 7/12/22.
//

import UIKit

class FourthViewController: UIViewController {

    let options : [[String]] = [["Launch Filter Details","Card Component Views Demo Catalog",
                    "Launch Offers List","Launch Offer Details","Launch Offers","Launch Service Area Selection"],
                   ["Substitute Block Demo"]
    ]

    private var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView.init(frame: UIScreen.main.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.backgroundColor = .clear
//        self.view.backgroundColor = UIColor.init(red: 161/255, green: 73/255, blue: 228/255, alpha: 1)
        view.addSubview(tableView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
//        tableView.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: 340)
//        tableView.center = view.center
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

extension FourthViewController : UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return options.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "OptionCell")
//        cell.contentView.backgroundColor = .clear
//        cell.backgroundColor = .clear
//        cell.textLabel?.textAlignment = .center
//        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont.init(name: "System-Bold", size: 22)
        cell.textLabel?.text = options[indexPath.section][indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 && indexPath.row == 0{
            launchFilterOtpionsClick()
        }
    }
    
    
    func launchFilterOtpionsClick()  {
        print("Launch Service Area Selection")
    }
    
}
