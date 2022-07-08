//
//  ViewController.swift
//  DemoClass
//
//  Created by Kanna Dinesh on 7/5/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nextBtn: UIButton!
    var myNewButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myNewButton = UIButton.init(type: .custom)
        myNewButton.frame = CGRect.init(x: 100, y: 200, width: 100, height: 70)
        myNewButton.backgroundColor = .gray
        myNewButton.setTitle("I'm New", for: .normal)
        myNewButton.setTitleColor(.red, for: .normal)
        myNewButton.addTarget(self, action: #selector(myNewButtonClickFunction), for: .touchUpInside)
        self.view.addSubview(myNewButton)

//        let a1 = Address.init()
//        let prof1 = ProfessionalDetails.init()
        let p1 = Person.init()
        p1.firstName = "Nitisha"
//        let p1 = Person.init(firstName: "Nitisha", lastName: "Reddy", height: 60, address: a1, professional: prof1)
        
        var p2 = p1
        p2.firstName = "Dinesh"
        
        print(p1.firstName,p2.firstName)
        
        
        
        var e1 = Employee.init()
        e1.firstName = "NItisha Employe"
        
        var e2 = e1
        e2.firstName = "Dinesh Employe"
        
        print(e1.firstName,e2.firstName)
        let name = "iOS Class"
        print(name.countTheLetter(cha: "s"))
    }
    
    @objc func myNewButtonClickFunction()  {
        
    }

    @IBAction func nextClick(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        self.present(vc, animated: true)
        
    }
    
    
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ABC") as! UITableViewCell
        
        return cell
        
    }
    
    
    
}

extension String {
    func countTheLetter(cha:Character) -> Int {
        var count = 0
        for c in self{
            if(c == cha){
                count = count + 1
            }
        }
        return count
    }
}
