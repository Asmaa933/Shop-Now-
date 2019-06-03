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
    func getCategory() ->  [CategoryModel] {
        return categories
    }
    
}
