//
//  ViewController.swift
//  codeswague
//
//  Created by Ghoul Mehdi on 02/07/2018.
//  Copyright © 2018 Ghoul Mehdi. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var CategoryTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        CategoryTable.dataSource = self
        CategoryTable.delegate = self
        }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryC") as? CategoriyCell {
            let Category =  DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: Category)
            return cell
            
        } else {
            return CategoriyCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category )
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            assert(sender as? Category != nil)  
            productVC.initProdects(category: sender as! Category)
            let backbtn = UIBarButtonItem()
            backbtn.title = ""
            navigationItem.backBarButtonItem = backbtn   
            
            
            
        }
    }
    


}

















