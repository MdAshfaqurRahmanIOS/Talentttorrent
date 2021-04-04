//
//  ExpertListingTableViewCell.swift
//  Talentttorrent
//
//  Created by Md Ashfaqur Rahman on 2/4/21.
//

import UIKit

class ExpertListingTableViewCell: UITableViewCell {
    //TODO: Connect all cell property
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
        //TODO: Profile picture Circle Design
        profile_picture.layer.masksToBounds = false
        profile_picture.layer.cornerRadius = profile_picture.frame.size.height/2
        profile_picture.clipsToBounds = true
        //TODO: Country Flag Circle Design
        flag_picture.layer.masksToBounds = false
        flag_picture.layer.cornerRadius = flag_picture.frame.size.height/2
        flag_picture.clipsToBounds = true
        //TODO: Skill Label Design
        skill_01.layer.cornerRadius = 2
        skill_01.layer.masksToBounds = true
        skill_02.layer.cornerRadius = 2
        skill_02.layer.masksToBounds = true
        skill_03.layer.cornerRadius = 2
        skill_03.layer.masksToBounds = true
        skill_04.layer.cornerRadius = 2
        skill_04.layer.masksToBounds = true
        skill_05.layer.cornerRadius = 2
        skill_05.layer.masksToBounds = true
        skill_06.layer.cornerRadius = 2
        skill_06.layer.masksToBounds = true
        skill_07.layer.cornerRadius = 2
        skill_07.layer.masksToBounds = true
        skill_08.layer.cornerRadius = 2
        skill_08.layer.masksToBounds = true
        skill_09.layer.cornerRadius = 2
        skill_09.layer.masksToBounds = true
        skill_10.layer.cornerRadius = 2
        skill_10.layer.masksToBounds = true
        skill_11.layer.cornerRadius = 2
        skill_11.layer.masksToBounds = true
        skill_12.layer.cornerRadius = 2
        skill_12.layer.masksToBounds = true
        skill_13.layer.cornerRadius = 2
        skill_13.layer.masksToBounds = true
        skill_14.layer.cornerRadius = 2
        skill_14.layer.masksToBounds = true
        skill_15.layer.cornerRadius = 2
        skill_15.layer.masksToBounds = true
        skill_16.layer.cornerRadius = 2
        skill_16.layer.masksToBounds = true
        skill_17.layer.cornerRadius = 2
        skill_17.layer.masksToBounds = true
        skill_18.layer.cornerRadius = 2
        skill_18.layer.masksToBounds = true
        skill_19.layer.cornerRadius = 2
        skill_19.layer.masksToBounds = true
        skill_20.layer.cornerRadius = 2
        skill_20.layer.masksToBounds = true
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
