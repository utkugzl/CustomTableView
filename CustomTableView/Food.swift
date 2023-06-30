//
//  Food.swift
//  CustomTableView
//
//  Created by Utku Güzel on 30.06.2023.
//

import Foundation

class Food {
    var foodID: Int?
    var foodName: String?
    var foodPictureName: String?
    var foodPrice: Double?
    
    init(foodID: Int? = nil, foodName: String? = nil, foodPictureName: String? = nil, foodPrice: Double? = nil) {
        self.foodID = foodID
        self.foodName = foodName
        self.foodPictureName = foodPictureName
        self.foodPrice = foodPrice
    }
}
