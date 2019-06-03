//
//  ProductModel.swift
//  Shop Now !
//
//  Created by AsMaa on 6/3/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import Foundation
struct productModel {
    var imageName : String
    var price : String
    var title : String
    
    init(title:String, price: String, imageName:String){
        self.title = title
         self.price = price
        self.imageName = imageName
       
        
    }
}
