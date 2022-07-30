//
//  ViewController.swift
//  APIDemo
//
//  Created by Kanna Dinesh on 7/30/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchContactDetails()
    }
    
    func fetchContactDetails()  {

        
        let url = URL.init(string: "https://reqres.in/api/unknown")
        let request = URLRequest.init(url: url!)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request) { dataaa, responseee, err in
            let dataObject = try! JSONSerialization.jsonObject(with: dataaa!) as! [String:Any]
            let array = dataObject["data"] as! [Any]
            print(array.count)
        }
        
        dataTask.resume()

    }


}

