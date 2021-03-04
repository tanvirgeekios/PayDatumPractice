//
//  ViewController.swift
//  PayDatumPractice
//
//  Created by MD Tanvir Alam on 4/3/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var foodDetailArray = [FoodDetails]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        foodDetailArray.append(FoodDetails(foodName: "Avacado", foodImage: UIImage(named: "1")!, foodPrice: "$12.3", foodDate: "12/3/21"))
        foodDetailArray.append(FoodDetails(foodName: "Avacado", foodImage: UIImage(named: "2")!, foodPrice: "$12.3", foodDate: "12/3/21"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodDetailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PeopleTableViewCell
        cell.cellImage.image = foodDetailArray[indexPath.row].foodImage
        cell.foodNameLabel.text = foodDetailArray[indexPath.row].foodName
        cell.priceLabel.text = foodDetailArray[indexPath.row].foodPrice
        cell.dateLabel.text = foodDetailArray[indexPath.row].foodDate
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor.veryLightPink
//        UINavigationBar.appearance().tintColor = .veryLightPink
//        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//        UINavigationBar.appearance().isTranslucent = false
    }
}

struct FoodDetails {
    var foodName:String
    var foodImage: UIImage
    var foodPrice: String
    var foodDate:String
}

extension UIColor {

  @nonobjc class var white: UIColor {
    return UIColor(white: 1.0, alpha: 1.0)
  }

  @nonobjc class var brownGrey: UIColor {
    return UIColor(white: 157.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var coolBlue: UIColor {
    return UIColor(red: 60.0 / 255.0, green: 149.0 / 255.0, blue: 210.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var veryLightPink: UIColor {
    return UIColor(white: 241.0 / 255.0, alpha: 1.0)
  }

}

