//
//  ExpertListingViewController.swift
//  Talentttorrent
//
//  Created by Md Ashfaqur Rahman on 2/4/21.
//

import UIKit

class ExpertListingViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataContainerArray = [Datas]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
    }

}

extension ExpertListingViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataContainerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expertListingTableViewCell", for: indexPath) as! ExpertListingTableViewCell
        
        cell.full_name.text = "\(dataContainerArray[indexPath.row].first_name ?? " ") \(dataContainerArray[indexPath.row].first_name ?? " ")"
        cell.country_name.text = dataContainerArray[indexPath.row].profile.country
        cell.type_about.text = dataContainerArray[indexPath.row].type
        cell.designation_qualification.text = dataContainerArray[indexPath.row].profile.qualification
        
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
        
        cell.flag_picture.image = UIImage(named:"\(dataContainerArray[indexPath.row].profile.country ?? "Bangladesh")")
        
        
        
        
        return cell
    }
    
    
}
