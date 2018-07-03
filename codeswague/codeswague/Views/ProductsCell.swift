//
//  Products.swift
//  codeswague
//
//  Created by Ghoul Mehdi on 03/07/2018.
//  Copyright © 2018 Ghoul Mehdi. All rights reserved.
//

import UIKit

class ProductsCell: UICollectionViewCell {
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productsName : UILabel!
    @IBOutlet weak var poructsPrice : UILabel!
    
    
    func updateviews( products : Product){
        productImage.image = UIImage(named: products.imageName)
        productsName.text = products.title
        poructsPrice.text = products.price
    }
    
    
    
}
