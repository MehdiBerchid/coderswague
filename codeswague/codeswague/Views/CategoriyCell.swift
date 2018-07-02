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
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
