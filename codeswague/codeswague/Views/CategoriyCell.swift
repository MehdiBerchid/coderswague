//
//  CategoriyCell.swift
//  codeswague
//
//  Created by Ghoul Mehdi on 02/07/2018.
//  Copyright © 2018 Ghoul Mehdi. All rights reserved.
//

import UIKit

class CategoriyCell: UITableViewCell {
    
    @IBOutlet weak var CategoryImage : UIImageView!
    @IBOutlet weak var CategoryTitle : UILabel!
    
    func updateViews(category : Category) {
        CategoryImage.image = UIImage(named: category.imageName)
        CategoryTitle.text = category.title
        
    }
}
