//
//  ProductCollectionViewCell.swift
//  Shop Now !
//
//  Created by AsMaa on 6/3/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
     @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: productModel){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
        
    }
}
