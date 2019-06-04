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
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    var selectedItem = productModel(title: "", price: "", imageName: "")
    var quantity = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSelectedItemData()
    }
    
    func getSelectedItem(selected: productModel)  {
        selectedItem = selected
    }
    
    func updateSelectedItemData() {
        selectedItemImage.image = UIImage(named: selectedItem.imageName)
        selectedItemTitle.text = selectedItem.title
        selectedItemPrice.text = "$ \(selectedItem.price)"
        priceLabel.text = "$ \(selectedItem.price)"
    }
    
    @IBAction func changeQuantityOfItem(_ sender: UIButton) {
        quantity += sender.tag
        if quantity  < 1 {
            quantity = 1
        }
        if quantity == 1 {
            minusBtn.isEnabled = false
        }else if quantity > 1 {
            minusBtn.isEnabled = true
        }
        quantityLabel.text = "\(quantity)"
        totalPayment()
    }
    
    func totalPayment(){
        var total = 1
        total = quantity * Int(selectedItem.price)!
        priceLabel.text = "$ \(total)"
    }
    
    @IBAction func checkoutBtnTapped(_ sender: UIButton) {
        performSegue(withIdentifier: checkOutSegueID, sender: nil)
    }

    @IBAction func removeBtnTapped(_ sender: UIButton) {
        performSegue(withIdentifier: removeSegueID, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == checkOutSegueID{
            if let finishVC = segue.destination as? FinishVC{
                finishVC.segueID = segue.identifier ?? ""
            }
        }else if segue.identifier == removeSegueID {
            if let finishVC = segue.destination as? FinishVC{
                finishVC.segueID = segue.identifier ?? ""
            }
        }
    }
}
