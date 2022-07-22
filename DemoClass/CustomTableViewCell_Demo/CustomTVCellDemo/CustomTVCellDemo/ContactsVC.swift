//
//  ContactsVC.swift
//  CustomTVCellDemo
//
//  Created by Kanna Dinesh on 7/22/22.
//

import UIKit

class ContactsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        
        let nib = UINib.init(nibName: "ContactTVCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: String.init(describing: ContactTVCell.self))
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

extension ContactsVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTVCell") as! ContactTVCell
        cell.emailLable.text = "Nitisha@gmail.com"
        cell.nameLable.text = "Nitisha"
        cell.phoneNumLable.text = "092179862387"
        cell.profileImageView.image = UIImage.init(named: "goImage")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
}
