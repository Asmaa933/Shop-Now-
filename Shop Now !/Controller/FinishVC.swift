//
//  FinishVC.swift
//  Shop Now !
//
//  Created by AsMaa on 6/4/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class FinishVC: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var finishImage: UIImageView!
  var segueID = ""
    override func viewDidLoad() {
        super.viewDidLoad()
            navigationItem.hidesBackButton = true
        checkSegue(segue: segueID)
    }
    func checkSegue (segue: String){
        switch segue {
        case checkOutSegueID:
            checkOut()
        case removeSegueID:
            remove()
        default:
            print("error")
        }
    }
    func checkOut(){
        navigationItem.title = "Done"
        messageLabel.text = "Thanks for shopping, Hope See you soon"
        finishImage.image = UIImage(named: "done")
        navigationItem.backBarButtonItem?.isEnabled = false
    }
    func remove(){
        navigationItem.title = "Empty Cart"
         messageLabel.text = "You have no items in the cart"
        
        
    }
    @IBAction func continueShoppingBtnTapped(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
