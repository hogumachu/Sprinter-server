//
//  File.swift
//  
//
//  Created by 홍성준 on 2023/08/12.
//

import Fluent
import Vapor

final class Category: Model, Content {
    
    typealias IDValue = Int
    
    static let schema = "categories"
    
    @ID(custom: "category_id")
    var id: IDValue?
    
    @Field(key: "category")
    var category: String
    
    init() { }
    
    init(
        id: IDValue? = nil,
        category: String
    ) {
        self.id = id
        self.category = category
    }
    
}
