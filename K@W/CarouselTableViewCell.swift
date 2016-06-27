//
//  CarouselTableViewCell.swift
//  K@W
//
//  Created by Vishal Bharam on 2/26/16.
//  Copyright © 2016 Nurture Networks. All rights reserved.
//

import UIKit

class CarouselTableViewCell: UITableViewCell {

    //ProfileImage:
    @IBOutlet weak var profileImage: UIImageView!
    
    //Swipe Left & Right:
    @IBOutlet weak var navigateToLeftCaret: UIButton!
    @IBOutlet weak var navigateToRightCaret: UIButton!
    
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
