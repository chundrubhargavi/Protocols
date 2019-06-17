//
//  ViewController.swift
//  Protocols and Delegates
//
//  Created by Amruta on 12/06/19.
//  Copyright © 2019 Bhargavi. All rights reserved.
//

import UIKit
// Mark:Protocol Access

class ViewController: UIViewController,UserInfo {
    func userDidEnterData(data: String) {
        userLbl.text=data
    }
    //Mark:Variable Initlization
    
    @IBOutlet weak var userLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Mark: Data Receiving Button
    
    @IBAction func receiveDataBtn(_ sender: Any) {
       
        let firstVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        firstVC.delegate=self
        
        //Mark:Move To Next VC
        self.present(firstVC, animated: true, completion: nil)
    }
}

