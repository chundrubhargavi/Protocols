//
//  SecondViewController.swift
//  Protocols and Delegates
//
//  Created by Amruta on 12/06/19.
//  Copyright © 2019 Bhargavi. All rights reserved.
//

import UIKit
//Mark:Data passing using Protocol

protocol UserInfo {
    func userDidEnterData(data:String)
}
class SecondViewController: UIViewController {
    //Mark:Variable initilazation
    
    @IBOutlet weak var userTF: UITextField!
    //Mark: Delegate As Reference
    
    var delegate:UserInfo?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //Mark:Data Sending Button
    
    @IBAction func sendDataBtn(_ sender: Any) {
        if delegate != nil&&userTF.text != nil{
            let userDetails=userTF.text!
            delegate?.userDidEnterData(data: userDetails)
        }
        
        //Mark: Remove Second VC in Screen
        dismiss(animated: true, completion: nil)
    }
    

}
