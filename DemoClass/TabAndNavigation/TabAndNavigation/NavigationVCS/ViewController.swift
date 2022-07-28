//
//  ViewController.swift
//  TabAndNavigation
//
//  Created by Kanna Dinesh on 7/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoClick(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
//        vc.modalPresentationStyle = .overFullScreen
//        self.present(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

