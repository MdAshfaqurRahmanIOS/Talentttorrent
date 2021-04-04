//
//  ExpertListingViewController.swift
//  Talentttorrent
//
//  Created by Md Ashfaqur Rahman on 2/4/21.
//

import UIKit

class ExpertListingViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    //TODO: Declear variable for storing data from HomeViewController
    var dataContainerArray = [Datas]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}
//MARK: - Table View
extension ExpertListingViewController: UITableViewDataSource, UITableViewDelegate {
    //TODO: Set Table Cell row height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    //TODO: Set How Many Cell/Row in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataContainerArray.count
    }
    //TODO: Set cell elements Data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expertListingTableViewCell", for: indexPath) as! ExpertListingTableViewCell
        //TODO: Set Profile Image
        if dataContainerArray[indexPath.row].profile.avatar_url != nil {
            if let imageURL = URL(string: dataContainerArray[indexPath.row].profile.avatar_url!) {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell.profile_picture.image = image
                        }
                    }
                }
            }
        }
        //TODO: Set Cell label property Full Name, Country ...
        cell.full_name.text = "\(dataContainerArray[indexPath.row].first_name ?? " ") \(dataContainerArray[indexPath.row].first_name ?? " ")"
        cell.country_name.text = dataContainerArray[indexPath.row].profile.country
        cell.type_about.text = dataContainerArray[indexPath.row].type
        cell.designation_qualification.text = dataContainerArray[indexPath.row].profile.qualification
        cell.flag_picture.image = UIImage(named:"\(dataContainerArray[indexPath.row].profile.country ?? "Bangladesh")")
        //TODO: Set Cell Label Skill and remove Extra Label
        //TODO: Need to focus this code later
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(0) {
            cell.skill_01.text = dataContainerArray[indexPath.row].profile.skills?[0] ?? ""
        } else {
            cell.skill_01.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(1) {
            cell.skill_02.text = dataContainerArray[indexPath.row].profile.skills?[1] 
        } else {
            cell.skill_02.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(2) {
            cell.skill_03.text = dataContainerArray[indexPath.row].profile.skills?[2]
        } else {
            cell.skill_03.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(3) {
            cell.skill_04.text = dataContainerArray[indexPath.row].profile.skills?[3]
        } else {
            cell.skill_04.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(4) {
            cell.skill_05.text = dataContainerArray[indexPath.row].profile.skills?[4]
        } else {
            cell.skill_05.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(5) {
            cell.skill_06.text = dataContainerArray[indexPath.row].profile.skills?[5]
        } else {
            cell.skill_06.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(6) {
            cell.skill_07.text = dataContainerArray[indexPath.row].profile.skills?[6]
        } else {
            cell.skill_07.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(7) {
            cell.skill_08.text = dataContainerArray[indexPath.row].profile.skills?[7]
        } else {
            cell.skill_08.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(8) {
            cell.skill_09.text = dataContainerArray[indexPath.row].profile.skills?[8]
        } else {
            cell.skill_09.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(9) {
            cell.skill_10.text = dataContainerArray[indexPath.row].profile.skills?[9]
        } else {
            cell.skill_10.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(10) {
            cell.skill_11.text = dataContainerArray[indexPath.row].profile.skills?[10]
        } else {
            cell.skill_11.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(11) {
            cell.skill_12.text = dataContainerArray[indexPath.row].profile.skills?[11]
        } else {
            cell.skill_12.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(12) {
            cell.skill_13.text = dataContainerArray[indexPath.row].profile.skills?[12]
        } else {
            cell.skill_13.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(13) {
            cell.skill_14.text = dataContainerArray[indexPath.row].profile.skills?[13]
        } else {
            cell.skill_14.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(14) {
            cell.skill_15.text = dataContainerArray[indexPath.row].profile.skills?[14]
        } else {
            cell.skill_15.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(15) {
            cell.skill_16.text = dataContainerArray[indexPath.row].profile.skills?[15]
        } else {
            cell.skill_16.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(16) {
            cell.skill_17.text = dataContainerArray[indexPath.row].profile.skills?[16]
        } else {
            cell.skill_17.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(17) {
            cell.skill_18.text = dataContainerArray[indexPath.row].profile.skills?[17]
        } else {
            cell.skill_18.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(18) {
            cell.skill_19.text = dataContainerArray[indexPath.row].profile.skills?[18]
        } else {
            cell.skill_19.isHidden = true
        }
        if dataContainerArray[indexPath.row].profile.skills!.indices.contains(19) {
            cell.skill_20.text = dataContainerArray[indexPath.row].profile.skills?[19]
        } else {
            cell.skill_20.isHidden = true
        }
        return cell
    }
    
    
}
