//
//  Forgery.swift
//  Idle Factory
//
//  Created by Caden Kowalski on 12/25/18.
//  Copyright © 2018 Caden Kowalski. All rights reserved.
//

import UIKit

class Forgery: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ChooseFirstGun(sender: Any) {
        performSegue(withIdentifier: "Choose Gun", sender: sender)
        print("Caden")
    }
    
    @IBAction func ChooseSecondGun(sender: Any) {
        performSegue(withIdentifier: "Choose Gun", sender: sender)
        print("Gavin")
    }
}
