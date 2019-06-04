//
//  CartVC.swift
//  Shop Now !
//
//  Created by AsMaa on 6/4/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class CartVC: UIViewController {

    @IBOutlet weak var selectedItemImage: UIImageView!
    @IBOutlet weak var selectedItemTitle: UILabel!

    @IBOutlet weak var selectedItemPrice: UILabel!
    
    @IBOutlet weak var quantityLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func changeQuantityOfItem(_ sender: UIButton) {
    }
    
    
    @IBAction func checkoutBtnTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func removeBtnTapped(_ sender: UIButton) {
    }
    
    
}
