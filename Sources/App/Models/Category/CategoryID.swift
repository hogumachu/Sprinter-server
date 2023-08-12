//
//  CategoryID.swift
//  
//
//  Created by 홍성준 on 2023/08/12.
//

import Vapor

struct CategoryID: Content {
    
    let id: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "categoryID"
    }
    
}
