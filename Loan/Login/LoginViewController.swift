//
//  LoginViewController.swift
//  Loan
//
//  Created by Pruthvi  on 29/10/18.
//  Copyright © 2018 Fanruan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    
    @IBOutlet weak var radioBtn: UIButton!
    @IBOutlet weak var termsCondition: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var codeBtn: UIButton!
    @IBOutlet weak var codeField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        createGradientLayer()
        // Do any additional setup after loading the view.
    }
    
    func createGradientLayer(){ 
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = submitButton.bounds
        gradient.colors = [
            UIColor(red: 255, green: 164, blue: 65, alpha: 1).cgColor,
            UIColor(red: 238, green: 136, blue: 51, alpha: 1).cgColor
        ]
        
        /* repeat the central location to have solid colors */
        gradient.locations = [0, 0.5, 0.5, 1.0]
        
        /* make it horizontal */
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        submitButton.layer.insertSublayer(gradient, at: 0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
