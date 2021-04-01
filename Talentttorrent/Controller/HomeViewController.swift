//
//  ViewController.swift
//  Talentttorrent
//
//  Created by Md Ashfaqur Rahman on 1/4/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func expertListingButton(_ sender: UIButton) {
        performSegue(withIdentifier: "homeToExpertListing", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "homeToExpertListing" {
            let expertListingVC = segue.destination as! ExpertListingViewController
            
            expertListingVC.stringContainer = "123"
        }
    }
    
}

