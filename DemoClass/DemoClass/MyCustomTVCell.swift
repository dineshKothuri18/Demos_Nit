//
//  MyCustomTVCell.swift
//  DemoClass
//
//  Created by Kanna Dinesh on 7/11/22.
//

import UIKit

class MyCustomTVCell: UITableViewCell {
   
    
    @IBOutlet weak var rowLabel: UILabel!
    @IBOutlet weak var sectionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func buttonClick2(_ sender: Any) {
    }
    
    
    @IBAction func buttonClick1(_ sender: Any) {
    }
}
