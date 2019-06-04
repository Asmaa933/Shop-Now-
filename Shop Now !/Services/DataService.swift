//
//  DataService.swift
//  Shop Now !
//
//  Created by AsMaa on 6/3/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
        CategoryModel(title: "SHIRTS", imageName: "shirts.png"),
        CategoryModel(title: "HOODIES", imageName: "hoodies.png"),
        CategoryModel(title: "HATS", imageName: "hats.png"),
        CategoryModel(title: "DIGITAL", imageName: "digital.png")
                              ]
    
    private let hats = [
        productModel(title: "Devslopes Logo Graphic Beanie", price: "18", imageName: "hat01.png"),
        productModel(title: "Devslopes Logo Hat Black", price: "23", imageName: "hat02.png"),
        productModel(title: "Devslopes Logo Hat White", price: "30", imageName: "hat03.png"),
        productModel(title: "Devslopes Logo Snapback", price: "25", imageName: "hat04.png")
                        ]
    
    private let hoodies = [
        productModel(title: "Devslopes Logo Hoodie Grey", price: "32", imageName: "hoodie01.png"),
        productModel(title: "Devslopes Logo Hoodie Red", price: "32", imageName: "hoodie02.png"),
        productModel(title: "Devslopes Hoodie Grey", price: "40", imageName: "hoodie03.png"),
        productModel(title: "Devslopes Hoodie Black", price: "45", imageName: "hoodie04.png"),
                          ]
    
    private let shirts = [
        productModel(title:"Devslopes Logo Shirt Black" , price: "45", imageName: "shirt01.png"),
        productModel(title:"Devslopes Badge Shirt Light Grey" , price: "38", imageName: "shirt02.png"),
        productModel(title:"Devslopes Logo Shirt Red" , price: "19", imageName: "shirt03.png"),
        productModel(title:"Hustle Delegate Grey" , price: "27", imageName: "shirt04.png"),
        productModel(title:"Kickflip Studios Black" , price: "19", imageName: "shirt05.png"),
                          ]
    private let digitalGoods = [productModel]()
    
    func getCategory() ->  [CategoryModel] {
        return categories
    }
    func getShirts() -> [productModel]{
        return shirts
    }
    func getHoodies() -> [productModel]{
        return hoodies
    }
    func getHats() -> [productModel]{
        return hats
    }
    func getDigitalGoods() -> [productModel]{
        return digitalGoods
    }
    
    func getProduct(ForCategoryTitle title:String) -> [productModel] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
}
