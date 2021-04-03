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
    
    
    @IBOutlet weak var skill_01: UILabel!
    @IBOutlet weak var skill_02: UILabel!
    @IBOutlet weak var skill_03: UILabel!
    @IBOutlet weak var skill_04: UILabel!
    @IBOutlet weak var skill_05: UILabel!
    @IBOutlet weak var skill_06: UILabel!
    @IBOutlet weak var skill_07: UILabel!
    @IBOutlet weak var skill_08: UILabel!
    @IBOutlet weak var skill_09: UILabel!
    @IBOutlet weak var skill_10: UILabel!
    @IBOutlet weak var skill_11: UILabel!
    @IBOutlet weak var skill_12: UILabel!
    @IBOutlet weak var skill_13: UILabel!
    @IBOutlet weak var skill_14: UILabel!
    @IBOutlet weak var skill_15: UILabel!
    @IBOutlet weak var skill_16: UILabel!
    @IBOutlet weak var skill_17: UILabel!
    @IBOutlet weak var skill_18: UILabel!
    @IBOutlet weak var skill_19: UILabel!
    @IBOutlet weak var skill_20: UILabel!
    
    
    
    
    
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
