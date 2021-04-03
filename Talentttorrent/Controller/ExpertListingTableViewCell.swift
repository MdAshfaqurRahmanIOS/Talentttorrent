//
//  ExpertListingTableViewCell.swift
//  Talentttorrent
//
//  Created by Md Ashfaqur Rahman on 2/4/21.
//

import UIKit

class ExpertListingTableViewCell: UITableViewCell {
    @IBOutlet weak var profile_picture: UIImageView!
    @IBOutlet weak var full_name: UILabel!
    @IBOutlet weak var flag_picture: UIImageView!
    @IBOutlet weak var country_name: UILabel!
    @IBOutlet weak var type_about: UILabel!
    @IBOutlet weak var designation_qualification: UILabel!
    @IBOutlet weak var skills: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        profile_picture.layer.borderWidth=1.0
        profile_picture.layer.masksToBounds = false
        profile_picture.layer.cornerRadius = profile_picture.frame.size.height/2
        profile_picture.clipsToBounds = true
        
//        flag_picture.layer.borderWidth=1.0
        flag_picture.layer.masksToBounds = false
        flag_picture.layer.cornerRadius = flag_picture.frame.size.height/2
        flag_picture.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
