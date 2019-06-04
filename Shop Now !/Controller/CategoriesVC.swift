//
//  ViewController.swift
//  Shop Now !
//
//  Created by AsMaa on 6/3/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {
    @IBOutlet weak var categoryTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        categoryTableView.tableFooterView = UIView()
    }
}

extension CategoriesVC : UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: categoryCellID) as? CategoryTableViewCell{
            let category = DataService.instance.getCategory()[indexPath.row]
            cell.updateView(category: category)
            return cell
        }else{
            return CategoryTableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategory()[indexPath.row]
        performSegue(withIdentifier: productSegueID, sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //remove title of button of navigation controller
        if let productVC = segue.destination as? ProductVC{
            let barbtn = UIBarButtonItem()
            barbtn.title = ""
            navigationItem.backBarButtonItem = barbtn
            assert(sender as? CategoryModel != nil )
            productVC.initProduct(category: sender as! CategoryModel)
        }
    }
}
