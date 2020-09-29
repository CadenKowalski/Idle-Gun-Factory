//
//  Store.swift
//  Idle Factory
//
//  Created by Caden Kowalski on 12/25/18.
//  Copyright © 2018 Caden Kowalski. All rights reserved.
//

import UIKit

var NextLvlGunCost = "100"

class Store: UIViewController {

    @IBOutlet weak var MoneyValue: UILabel!
    @IBOutlet weak var NextGun: UIButton!
    @IBOutlet weak var Price: UILabel!
    @IBOutlet weak var NotEnoughCoins: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotEnoughCoins.isHidden = true
        MoneyValue.text = String(Money)
        Price.text = NextLvlGunCost
        if Gun_Lvl == 1 {
            NextGun.setTitle("Level 2 Gun:", for: .normal)
        } else if Gun_Lvl == 2 {
            NextGun.setTitle("level 3 Gun:", for: .normal)
        } else if Gun_Lvl == 3 {
            NextGun.setTitle("Level 4 Gun:", for: .normal)
        } else if Gun_Lvl == 4 {
            NextGun.setTitle("Level 5 Gun:", for: .normal)
        } else if Gun_Lvl == 5 {
            NextGun.setTitle("Level 6 Gun:", for: .normal)
        } else if Gun_Lvl == 6 {
            NextGun.setTitle("Level 7 Gun:", for: .normal)
        } else if Gun_Lvl == 7 {
            NextGun.setTitle("Level 8 Gun:", for: .normal)
        } else if Gun_Lvl == 8 {
            NextGun.setTitle("Level 9 Gun:", for: .normal)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        MoneyValue.text = String(Money)
    }
    
    @IBAction func BackBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func NextGunPressed(_ sender: Any) {
        switch Gun_Lvl {
        case 1:
            if Money >= 100 {
                Gun_Lvl = 2
                Money -= 100
                NextLvlGunCost = "500"
                MoneyValue.text = String(Money)
                Price.text = NextLvlGunCost
                if DismissInStoreState == true {
                    dismiss(animated: true, completion: nil)
                } else {
                    NextGun.setTitle("Level 3 Gun:", for: .normal)
                }
            } else {
                NotEnoughCoins.isHidden = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                    self.NotEnoughCoins.isHidden = true
                })
            }
        case 2:
            if Money >= 500 {
                Gun_Lvl = 3
                Money -= 500
                NextLvlGunCost = "5,000"
                MoneyValue.text = String(Money)
                Price.text = NextLvlGunCost
                if DismissInStoreState == true {
                    dismiss(animated: true, completion: nil)
                } else {
                    NextGun.setTitle("Level 4 Gun:", for: .normal)
                }
            } else {
                NotEnoughCoins.isHidden = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                    self.NotEnoughCoins.isHidden = true
                })
            }
        case 3:
            if Money >= 5000 {
                Gun_Lvl = 4
                Money -= 5000
                NextLvlGunCost = "50,000"
                MoneyValue.text = String(Money)
                Price.text = NextLvlGunCost
                if DismissInStoreState == true {
                    dismiss(animated: true, completion: nil)
                } else {
                    NextGun.setTitle("Level 5 Gun:", for: .normal)
                }
            } else {
                NotEnoughCoins.isHidden = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                    self.NotEnoughCoins.isHidden = true
                })
            }
        case 4:
            if Money >= 50000 {
                Gun_Lvl = 5
                Money -= 50000
                NextLvlGunCost = "1M"
                MoneyValue.text = String(Money)
                Price.text = NextLvlGunCost
                if DismissInStoreState == true {
                    dismiss(animated: true, completion: nil)
                } else {
                    NextGun.setTitle("Level 6 Gun:", for: .normal)
                }
            } else {
                NotEnoughCoins.isHidden = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                    self.NotEnoughCoins.isHidden = true
                })
            }
        case 5:
            if Money >= 1000000 {
                Gun_Lvl = 6
                Money -= 1000000
                NextLvlGunCost = "100M"
                MoneyValue.text = String(Money)
                Price.text = NextLvlGunCost
                if DismissInStoreState == true {
                    dismiss(animated: true, completion: nil)
                } else {
                    NextGun.setTitle("Level 7 Gun:", for: .normal)
                }
            } else {
                NotEnoughCoins.isHidden = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                    self.NotEnoughCoins.isHidden = true
                })
            }
        case 6:
            if Money >= 100000000 {
                Gun_Lvl = 7
                Money -= 100000000
                NextLvlGunCost = "10B"
                MoneyValue.text = String(Money)
                Price.text = NextLvlGunCost
                if DismissInStoreState == true {
                    dismiss(animated: true, completion: nil)
                } else {
                    NextGun.setTitle("Level 8 Gun:", for: .normal)
                }
            } else {
                NotEnoughCoins.isHidden = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                    self.NotEnoughCoins.isHidden = true
                })
            }
        case 7:
            if Money >= 10000000000 {
                Gun_Lvl = 8
                Money -= 10000000000
                NextLvlGunCost = "1T"
                MoneyValue.text = String(Money)
                Price.text = NextLvlGunCost
                if DismissInStoreState == true {
                    dismiss(animated: true, completion: nil)
                } else {
                    NextGun.setTitle("Level 9 Gun:", for: .normal)
                }
            } else {
                NotEnoughCoins.isHidden = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                    self.NotEnoughCoins.isHidden = true
                })
            }
        default: break
        }
    }
    
    @IBAction func Cheat(_ sender: Any) {
        Money += 100000000000
        MoneyValue.text = String(Money)
    }
}
