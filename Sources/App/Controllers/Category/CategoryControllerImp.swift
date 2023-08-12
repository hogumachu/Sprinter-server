//
//  CategoryControllerImp.swift
//  
//
//  Created by 홍성준 on 2023/08/12.
//

import Fluent
import Vapor

final class CategoryControllerImp: CategoryController {
    
    func categories(using req: Request) async throws -> [Category] {
        return try await Category.query(on: req.db)
            .all()
    }
    
}
