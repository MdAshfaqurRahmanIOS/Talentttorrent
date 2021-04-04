//
//  ViewController.swift
//  Talentttorrent
//
//  Created by Md Ashfaqur Rahman on 1/4/21.
//

import UIKit

class HomeViewController: UIViewController {
    //TODO: Declear Variable for storing data from Delegation Method
    var dataContainerArray = [Datas]()
    var jsonManager = JSONManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        jsonManager.delegate = self
        jsonManager.addFullURL(lastPart: "experts")
    }
}
//MARK: - Get Data & Set Home Array
extension HomeViewController: DataTakenProtocol {
    //TODO: Delegation mathod get data from JSONManager
    func containDataFromAPI(jsonModel: JSONModel) {
        DispatchQueue.main.async {
            print(jsonModel.data[0].first_name ?? "123")
            self.dataContainerArray = jsonModel.data
        }
    }
}
//MARK: - Button Action
extension HomeViewController {
    //TODO: Go to ExpertListing Screen Button Action
    @IBAction func expertListingButton(_ sender: UIButton) {
        performSegue(withIdentifier: "homeToExpertListing", sender: self)
    }
    //TODO: Before go ExpertListing Screen send Data there
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "homeToExpertListing" {
            let expertListingVC = segue.destination as! ExpertListingViewController
            expertListingVC.dataContainerArray = dataContainerArray
        }
    }
}
