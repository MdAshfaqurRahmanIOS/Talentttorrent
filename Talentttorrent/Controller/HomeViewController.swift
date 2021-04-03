//
//  ViewController.swift
//  Talentttorrent
//
//  Created by Md Ashfaqur Rahman on 1/4/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
    
    var jsonManager = JSONManager()
    var dataContainerArray = [Datas]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        jsonManager.delegate = self
        jsonManager.addFullURL(lastPart: "experts")
    }
    

}
extension HomeViewController: DataTakenProtocol {
    func containDataFromAPI(jsonModel: JSONModel) {
        DispatchQueue.main.async {
            print("1111111111111111")
            print(jsonModel.data[0].first_name ?? "123")
            
            self.testLabel.text = jsonModel.data[0].first_name
            self.dataContainerArray = jsonModel.data
    
            //            self.articlesArray = jsonModel.articles
            //            self.newsTableView.reloadData()
        }
    }
}

extension HomeViewController {
    @IBAction func refreshButtonAction(_ sender: UIButton) {
        jsonManager.addFullURL(lastPart: "experts")
    }
    @IBAction func expertListingButton(_ sender: UIButton) {
        performSegue(withIdentifier: "homeToExpertListing", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "homeToExpertListing" {
            let expertListingVC = segue.destination as! ExpertListingViewController
            expertListingVC.dataContainerArray = dataContainerArray
        }
    }
}
