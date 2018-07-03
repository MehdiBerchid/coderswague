//
//  ProductsVC.swift
//  codeswague
//
//  Created by Ghoul Mehdi on 03/07/2018.
//  Copyright © 2018 Ghoul Mehdi. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource {
    
    
    @IBOutlet weak var productscollection : UICollectionView!

    private (set) public var prodects = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productscollection.dataSource = self
        productscollection.delegate = self
        
    }
    func initProdects( category : Category ){
        prodects = DataService.instance.getProducts(forCategoryTitle: category.title )
        navigationItem.title = category.title
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return prodects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Productcell", for: indexPath) as? ProductsCell {
            let product = prodects[indexPath.row]
            cell.updateviews(products: product)
            return cell
        }
        return ProductsCell()
    }
    
    

}
