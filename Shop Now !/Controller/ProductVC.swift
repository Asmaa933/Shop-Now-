//
//  ProductVC.swift
//  Shop Now !
//
//  Created by AsMaa on 6/3/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {
var products = [productModel]()
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
productCollectionView.delegate = self
        productCollectionView.dataSource = self
        
    }
    
    func initProduct(category: CategoryModel){
        products = DataService.instance.getProduct(ForCategoryTitle: category.title)
        navigationItem.title = category.title
    }


}
extension ProductVC : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: productCellID, for: indexPath) as? ProductCollectionViewCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
        return cell
        }else {
        return ProductCollectionViewCell()
        }
    }
    
    
}
