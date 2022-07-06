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
        
        
        
    }
    
    @objc func myNewButtonClickFunction()  {
        
    }

    @IBAction func nextClick(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        self.present(vc, animated: true)
        
    }
    
}

