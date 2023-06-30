//
//  FoodTableViewCell.swift
//  CustomTableView
//
//  Created by Utku Güzel on 30.06.2023.
//

import UIKit

protocol FoodTableViewCellProtocol {
    func order(indexPath: IndexPath)
}

class FoodTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodPriceLabel: UILabel!
    
    var cellProtocol: FoodTableViewCellProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func orderButton(_ sender: UIButton) {
        
        cellProtocol?.order(indexPath: indexPath!)
    }
    

}
