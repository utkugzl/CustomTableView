//
//  ViewController.swift
//  CustomTableView
//
//  Created by Utku Güzel on 30.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodTableView: UITableView!
    
    var foodList = [Food]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodTableView.delegate = self
        foodTableView.dataSource = self
        
        //Nesneleri Oluşturma
        let y1 = Food(foodID: 1, foodName: "Ayran", foodPictureName: "ayran", foodPrice: 3.0)
        let y2 = Food(foodID: 2, foodName: "Baklava", foodPictureName: "baklava", foodPrice: 20.0)
        let y3 = Food(foodID: 3, foodName: "Fanta", foodPictureName: "fanta", foodPrice: 5.0)
        let y4 = Food(foodID: 4, foodName: "Izgara Somon", foodPictureName: "izgarasomon", foodPrice: 25.0)
        let y5 = Food(foodID: 5, foodName: "Izgara Tavuk", foodPictureName: "izgaratavuk", foodPrice: 15.0)
        let y6 = Food(foodID: 6, foodName: "Kadayıf", foodPictureName: "kadayif", foodPrice: 16.0)
        let y7 = Food(foodID: 7, foodName: "Kahve", foodPictureName: "kahve", foodPrice: 6.0)
        let y8 = Food(foodID: 8, foodName: "Köfte", foodPictureName: "kofte", foodPrice: 15.0)
        let y9 = Food(foodID: 9, foodName: "Lazanya", foodPictureName: "lazanya", foodPrice: 21.0)
        let y10 = Food(foodID: 10, foodName: "Makarna", foodPictureName: "makarna", foodPrice: 13.0)
        let y11 = Food(foodID: 11, foodName: "Pizza", foodPictureName: "pizza", foodPrice: 18.0)
        let y12 = Food(foodID: 12, foodName: "Su", foodPictureName: "su", foodPrice: 1.0)
        let y13 = Food(foodID: 13, foodName: "Sütlaç", foodPictureName: "sutlac", foodPrice: 10.0)
        let y14 = Food(foodID: 14, foodName: "Tiramisu", foodPictureName: "tiramisu", foodPrice: 16.0)
        //Verilerin Listeye Eklenmesi
        foodList.append(y1)
        foodList.append(y2)
        foodList.append(y3)
        foodList.append(y4)
        foodList.append(y5)
        foodList.append(y6)
        foodList.append(y7)
        foodList.append(y8)
        foodList.append(y9)
        foodList.append(y10)
        foodList.append(y11)
        foodList.append(y12)
        foodList.append(y13)
        foodList.append(y14)
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource, FoodTableViewCellProtocol{
    
    
    func order(indexPath: IndexPath) {
        let FoodInfo = foodList[indexPath.row]
        
        print("\(FoodInfo.foodName!) siparişi verildi")
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let FoodInfo = foodList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell
        
        cell.foodImageView.image = UIImage(named: FoodInfo.foodPictureName!)
        cell.foodNameLabel.text = FoodInfo.foodName
        cell.foodPriceLabel.text = "\(FoodInfo.foodPrice!) TL"
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        
        return cell
    }
    
    
}



