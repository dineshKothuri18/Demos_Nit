//
//  SecondViewController.swift
//  tableViewDemo
//
//  Created by Aennam, Nithisha Reddy on 7/7/22.
//

import UIKit

class SecondViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    
    private let contacts : [[String : String]] = [["Contact": "nithisha", "phoneNumber" : "123455"], ["Contact" : "sai", "phoneNumber" : "746873"], ["Contact" : "mommy", "phoneNumber" : "6348732"], ["Contact" : "anusha", "phoneNumber" : "6346786" ]]
//    var fullcontact : [String] = ["","","",""]
    var fullcontact = ["","","",""]

    
    private let tableView: UITableView = {
    let table = UITableView()
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell2")
        return table
    }()
    var secondButton : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        cont()
        //secondButton = UIButton.init(type: .custom)
        setupSecondButton()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    func setupSecondButton()
    {   secondButton = UIButton.init(type: .custom)
        secondButton.frame = CGRect.init(x: 100, y: 400, width: 100, height: 30)
        secondButton.backgroundColor = .gray
        secondButton.translatesAutoresizingMaskIntoConstraints = true
        secondButton.setTitle("Button2", for: .normal)
        secondButton.setTitleColor(.red, for: .normal)
        secondButton.addTarget(self, action: #selector(secondButtonTapped), for: .touchUpInside)
        self.view.addSubview(secondButton)
    }
    @objc func secondButtonTapped()
        {
          let vc = storyboard?.instantiateViewController(withIdentifier: "third") as! ThirdViewController
            vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
            
        }
    func cont()
    {for i in 0 ..< contacts.count
        {
            fullcontact[i] = ((contacts[i]["Contact"]!) + " : " + (contacts[i]["phoneNumber"]!))
           print(fullcontact[i])
        }
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Contacts Fetched")
        if indexPath.row==0
        {
            
        }
        
            
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//       var cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? UITableViewCell
//        if(cell2 == nil){
        let cell2 = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell2")
//        }
        cell2.imageView?.image = UIImage.init(named: "sample")
        cell2.detailTextLabel?.text = contacts[indexPath.row]["phoneNumber"]
       cell2.textLabel?.text = contacts[indexPath.row]["Contact"]
       
         return cell2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}
