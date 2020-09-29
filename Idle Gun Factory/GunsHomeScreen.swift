//
//  ViewController.swift
//  Idle Factory
//
//  Created by Caden Kowalski on 12/24/18.
//  Copyright © 2018 Caden Kowalski. All rights reserved.
//

import UIKit

var Money = 0
var Gun_Lvl = 1
var DidUnlock2 = false
var DidUnlock3 = false
var DidUnlock4 = false
var DidUnlock5 = false
var DidUnlock6 = false
var DidUnlock7 = false
var DidUnlock8 = false

class GunsHomeScreen: UIViewController {
    
    @IBOutlet weak var GunLvl1: UIImageView!
    @IBOutlet weak var Coin1: UIImageView!
    @IBOutlet weak var CokeCans1: UIImageView!
    @IBOutlet weak var Lock1: UIImageView!
    @IBOutlet weak var Coin2: UIImageView!
    @IBOutlet weak var CokeCans2: UIImageView!
    @IBOutlet weak var Lock2: UIImageView!
    @IBOutlet weak var Coin3: UIImageView!
    @IBOutlet weak var CokeCans3: UIImageView!
    @IBOutlet weak var Lock3: UIImageView!
    @IBOutlet weak var Coin4: UIImageView!
    @IBOutlet weak var CokeCans4: UIImageView!
    @IBOutlet weak var Lock4: UIImageView!
    @IBOutlet weak var Coin5: UIImageView!
    @IBOutlet weak var CokeCans5: UIImageView!
    @IBOutlet weak var Lock5: UIImageView!
    @IBOutlet weak var Coin6: UIImageView!
    @IBOutlet weak var CokeCans6: UIImageView!
    @IBOutlet weak var Lock6: UIImageView!
    @IBOutlet weak var Coin7: UIImageView!
    @IBOutlet weak var CokeCans7: UIImageView!
    @IBOutlet weak var Lock7: UIImageView!
    @IBOutlet weak var Coin8: UIImageView!
    @IBOutlet weak var CokeCans8: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GunLvl1.isUserInteractionEnabled = true
        Coin1.isHidden = true
        Coin2.isHidden = true
        Coin3.isHidden = true
        Coin4.isHidden = true
        Coin5.isHidden = true
        Coin6.isHidden = true
        Coin7.isHidden = true
        Coin8.isHidden = true
    }
        
    override func viewDidAppear(_ animated: Bool) {
        if Gun_Lvl == 2 && DidUnlock2 == false {
            Lock1.image = UIImage(named: "Lock_Unlock.png")
            Lock1.isUserInteractionEnabled = true
        } else if DidUnlock2 == true {
            Lock1.image = UIImage(named: "Gun_Lvl_2")
            Lock1.isUserInteractionEnabled = true
        }
        if Gun_Lvl == 3 && DidUnlock3 == false {
            Lock2.image = UIImage(named: "Lock_Unlock.png")
            Lock2.isUserInteractionEnabled = true
        } else if DidUnlock3 == true {
            Lock2.image = UIImage(named: "Gun_Lvl_3")
            Lock2.isUserInteractionEnabled = true
        }
        if Gun_Lvl == 4 && DidUnlock4 == false {
            Lock3.image = UIImage(named: "Lock_Unlock.png")
            Lock3.isUserInteractionEnabled = true
        } else if DidUnlock4 == true {
            Lock3.image = UIImage(named: "Gun_Lvl_4")
            Lock3.isUserInteractionEnabled = true
        }
        if Gun_Lvl == 5 && DidUnlock5 == false {
            Lock4.image = UIImage(named: "Lock_Unlock.png")
            Lock4.isUserInteractionEnabled = true
        } else if DidUnlock5 == true {
            Lock4.image = UIImage(named: "Gun_Lvl_5")
            Lock4.isUserInteractionEnabled = true
        }
        if Gun_Lvl == 6 && DidUnlock6 == false {
            Lock5.image = UIImage(named: "Lock_Unlock.png")
            Lock5.isUserInteractionEnabled = true
        } else if DidUnlock6 == true {
            Lock5.image = UIImage(named: "Gun_Lvl_6")
            Lock5.isUserInteractionEnabled = true
        }
        if Gun_Lvl == 7 && DidUnlock7 == false {
            Lock6.image = UIImage(named: "Lock_Unlock.png")
            Lock6.isUserInteractionEnabled = true
        } else if DidUnlock7 == true {
            Lock6.image = UIImage(named: "Gun_Lvl_7")
            Lock6.isUserInteractionEnabled = true
        }
        if Gun_Lvl == 8 && DidUnlock8 == false {
            Lock7.image = UIImage(named: "Lock_Unlock.png")
            Lock7.isUserInteractionEnabled = true
        } else if DidUnlock8 == true {
            Lock7.image = UIImage(named: "Gun_Lvl_8")
            Lock7.isUserInteractionEnabled = true
        }
    }
    
    func Setup(Gun: UIImageView, Coin: UIImageView, Coke: UIImageView) {
        Gun.isUserInteractionEnabled = false
        Coin.isHidden = false
        Coke.isHidden = true
    }
    
    func Shoot(Gun: UIImageView, Gun_Tag: String, Gun_Tag_Shot: String, Coin: UIImageView, Coke: UIImageView, CoinyStarting: Int, CoinyFinish: Int, CoinxPosition: Int, GunXStarting: Int, GunYStarting: Int, CoinValue: Int) {
        Gun.image = UIImage(named: Gun_Tag_Shot)
        Money += CoinValue
        if CoinxPosition > 303 || CoinyStarting > 190 {
            Gun.image = UIImage(named: Gun_Tag_Shot)
            UIView.animate(withDuration: 0.025, animations: {Gun.frame = CGRect(x: GunXStarting - 20, y: GunYStarting, width: 182, height: 77)})
        } else {
            Gun.image = UIImage(named: Gun_Tag_Shot)
            UIView.animate(withDuration: 0.1, animations: {Gun.transform = Gun.transform.rotated(by: -70)})
        }
        UIView.animate(withDuration: 0.05, animations: {Coin.frame = CGRect(x: CoinxPosition, y: CoinyFinish, width: 99, height: 82)})
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            Coin.isHidden = true
            Coin.frame = CGRect(x: CoinxPosition, y: CoinyStarting, width: 99, height: 82)
            if CoinxPosition > 303 || CoinyStarting > 190 {
                Gun.image = UIImage(named: Gun_Tag)
                UIView.animate(withDuration: 0.1, animations: {Gun.frame = CGRect(x: GunXStarting, y: GunYStarting, width: 182, height: 77)})
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    Gun.image = UIImage(named: Gun_Tag)
                    Gun.transform = Gun.transform.rotated(by: 70)
                })
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3, execute: {
                Coke.isHidden = false
                Gun.isUserInteractionEnabled = true
            })
        })
    }

    @IBAction func Gun_Lvl_1_Tapped(_ sender: Any) {
        Setup(Gun: GunLvl1, Coin: Coin1, Coke: CokeCans1)
        Shoot(Gun: GunLvl1, Gun_Tag: "Gun_Lvl_1.png", Gun_Tag_Shot: "Gun_Lvl_1_Shot", Coin: Coin1, Coke: CokeCans1, CoinyStarting: 20, CoinyFinish: -30, CoinxPosition: 303, GunXStarting: 64, GunYStarting: 20, CoinValue: 1)
    }
    
    @IBAction func Gun_lvl_2_Tapped(_ sender: Any) {
        if Lock1.image == UIImage(named: "Lock_Unlock.png") {
            Lock1.image = UIImage(named: "Lock_Unlocked.png")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                self.Lock1.image = UIImage(named: "Gun_Lvl_2.png")
                DidUnlock2 = true
            })
        } else {
            Setup(Gun: Lock1, Coin: Coin2, Coke: CokeCans2)
            Shoot(Gun: Lock1, Gun_Tag: "Gun_Lvl_2.png", Gun_Tag_Shot: "Gun_Lvl_2_Shot.png", Coin: Coin2, Coke: CokeCans2, CoinyStarting: 105, CoinyFinish: 72, CoinxPosition: 303, GunXStarting: 64, GunYStarting: 105, CoinValue: 5)
        }
    }
    
    @IBAction func Gun_Lvl_3_Tapped(_ sender: Any) {
        if Lock2.image == UIImage(named: "Lock_Unlock.png") {
            Lock2.image = UIImage(named: "Lock_Unlocked.png")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                self.Lock2.image = UIImage(named: "Gun_Lvl_3.png")
                DidUnlock3 = true
            })
        } else {
            Setup(Gun: Lock2, Coin: Coin3, Coke: CokeCans3)
            Shoot(Gun: Lock2, Gun_Tag: "Gun_Lvl_3.png", Gun_Tag_Shot: "Gun_Lvl_3_Shot.png", Coin: Coin3, Coke: CokeCans3, CoinyStarting: 190, CoinyFinish: 156, CoinxPosition: 303, GunXStarting: 64, GunYStarting: 190, CoinValue: 50)
        }
    }
    
    @IBAction func Gun_Lvl_4_Tapped(_ sender: Any) {
        if Lock3.image == UIImage(named: "Lock_Unlock.png") {
            Lock3.image = UIImage(named: "Lock_Unlocked.png")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                self.Lock3.image = UIImage(named: "Gun_Lvl_4.png")
                DidUnlock4 = true
            })
        } else {
            Setup(Gun: Lock3, Coin: Coin4, Coke: CokeCans4)
            Shoot(Gun: Lock3, Gun_Tag: "Gun_Lvl_4.png", Gun_Tag_Shot: "Gun_Lvl_4_Shot.png", Coin: Coin4, Coke: CokeCans4, CoinyStarting: 275, CoinyFinish: 242, CoinxPosition: 303, GunXStarting: 64, GunYStarting: 275, CoinValue: 500)
        }
    }
    
    @IBAction func Gun_Lvl_5_Tapped(_ sender: Any) {
        if Lock4.image == UIImage(named: "Lock_Unlock.png") {
            Lock4.image = UIImage(named: "Lock_Unlocked.png")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                self.Lock4.image = UIImage(named: "Gun_Lvl_5.png")
                DidUnlock5 = true
            })
        } else {
            Setup(Gun: Lock4, Coin: Coin5, Coke: CokeCans5)
            Shoot(Gun: Lock4, Gun_Tag: "Gun_Lvl_5.png", Gun_Tag_Shot: "Gun_Lvl_5_Shot.png", Coin: Coin5, Coke: CokeCans5, CoinyStarting: 20, CoinyFinish: -30, CoinxPosition: 680, GunXStarting: 406, GunYStarting: 20, CoinValue: 1000)
        }
    }
    
    
    @IBAction func Gun_Lvl_6_Tapped(_ sender: Any) {
        if Lock5.image == UIImage(named: "Lock_Unlock.png") {
            Lock5.image = UIImage(named: "Lock_Unlocked.png")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                self.Lock5.image = UIImage(named: "Gun_Lvl_6.png")
                DidUnlock6 = true
            })
        } else {
            Setup(Gun: Lock5, Coin: Coin6, Coke: CokeCans6)
            Shoot(Gun: Lock5, Gun_Tag: "Gun_Lvl_6.png", Gun_Tag_Shot: "Gun_Lvl_6_Shot.png", Coin: Coin6, Coke: CokeCans6, CoinyStarting: 102, CoinyFinish: 71, CoinxPosition: 680, GunXStarting: 406, GunYStarting: 105, CoinValue: 10000)
        }
    }
    
    @IBAction func Gun_Lvl_7_Tapped(_ sender: Any) {
        if Lock6.image == UIImage(named: "Lock_Unlock.png") {
            Lock6.image = UIImage(named: "Lock_Unlocked.png")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                self.Lock6.image = UIImage(named: "Gun_Lvl_7.png")
                DidUnlock7 = true
            })
        } else {
            Setup(Gun: Lock6, Coin: Coin7, Coke: CokeCans7)
            Shoot(Gun: Lock6, Gun_Tag: "Gun_Lvl_7.png", Gun_Tag_Shot: "Gun_Lvl_7_Shot.png", Coin: Coin7, Coke: CokeCans7, CoinyStarting: 190, CoinyFinish: 156, CoinxPosition: 680, GunXStarting: 406, GunYStarting: 190, CoinValue: 100000)
        }
    }
    
    @IBAction func Gun_Lvl_8_Tapped(_ sender: Any) {
        if Lock7.image == UIImage(named: "Lock_Unlock.png") {
            Lock7.image = UIImage(named: "Lock_Unlocked.png")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                self.Lock7.image = UIImage(named: "Gun_Lvl_8.png")
                DidUnlock8 = true
            })
        } else {
            Setup(Gun: Lock7, Coin: Coin8, Coke: CokeCans8)
            Shoot(Gun: Lock7, Gun_Tag: "Gun_Lvl_8.png", Gun_Tag_Shot: "Gun_Lvl_8_Shot.png", Coin: Coin8, Coke: CokeCans8, CoinyStarting: 275, CoinyFinish: 242, CoinxPosition: 680, GunXStarting: 406, GunYStarting: 277, CoinValue: 10000000)
        }
    }
}
