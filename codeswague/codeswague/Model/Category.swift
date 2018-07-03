//
//  File.swift
//  codeswague
//
//  Created by Ghoul Mehdi on 03/07/2018.
//  Copyright © 2018 Ghoul Mehdi. All rights reserved.
//

import Foundation
struct Category {
    private (set) public var title : String
    private (set) public var imageName : String
    
    init(title:String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
