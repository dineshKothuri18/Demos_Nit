//
//  ProgramaticalTVCell.swift
//  CustomTVCellDemo
//
//  Created by Kanna Dinesh on 7/25/22.
//

import UIKit

class ProgramaticalTVCell: UITableViewCell {
    var nameLable : UILabel!
    var emailLabel : UILabel!
    var phoneLabel : UILabel!
    var profileImageView : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.initialUI()
    }
    func initialUI()  {
       
        nameLable = UILabel.init(frame: CGRect.init(x: 30, y: 40, width: 200, height: 30))
        nameLable.backgroundColor = .cyan
        nameLable.text = "Name Label"
        self.contentView.addSubview(nameLable)
        
        emailLabel = UILabel.init(frame: CGRect.init(x: 30, y: 80, width: 200, height: 30))
        emailLabel.text = "Email Label"
        emailLabel.backgroundColor = .cyan
        self.contentView.addSubview(emailLabel)
        
        phoneLabel = UILabel.init(frame: CGRect.init(x: 30, y: 120, width: 200, height: 30))
        phoneLabel.text = "Phone Label"
        phoneLabel.backgroundColor = .cyan
        self.contentView.addSubview(phoneLabel)
        
        let image = UIImage.init(named: "goImage")
        profileImageView = UIImageView.init(image: image)
        profileImageView.highlightedImage = UIImage.init(named: "image1")
        profileImageView.isHighlighted = true
        contentView.addSubview(profileImageView)
        
                
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        let frame  = self.contentView.bounds
        let x = frame.width/2 - 100
        nameLable.frame = CGRect.init(x: x, y: 40, width: 200, height: 30)
        emailLabel.frame = CGRect.init(x: x, y: 80, width: 200, height: 30)
        phoneLabel.frame = CGRect.init(x: x, y: 120, width: 200, height: 30)
        
        profileImageView.frame = CGRect.init(x: 10, y: 40, width: 80, height: 80)
    }
    
    
    func setUI(dataObj:Contacts) {
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
