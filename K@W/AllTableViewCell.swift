//
//  AllTableViewCell.swift
//  kaw_new1
//
//  Created by Vishal Bharam on 2/24/16.
//  Copyright © 2016 CODECOOP. All rights reserved.
//

import UIKit

class AllTableViewCell: UITableViewCell {
    
    //ProfileImage:
    @IBOutlet weak var profileImage: UIImageView!
    
    //Toolbar:
    @IBOutlet weak var titleButton: UILabel!
    @IBOutlet weak var carouselPublishDate: UILabel!
    @IBOutlet weak var carouselReadTime: UILabel!
    @IBOutlet weak var carouselArticleType: UIImageView!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
