//
//  CategoryRouterImp.swift
//  
//
//  Created by 홍성준 on 2023/08/12.
//

import Vapor

final class CategoryRouterImp: CategoryRouter {
    
    private let controller: CategoryController
    
    init(controller: some CategoryController) {
        self.controller = controller
    }
    
    func routes(using app: Application) throws {
        app.get("category") { req async throws -> [Category] in
            return try await self.controller.categories(using: req)
        }
    }
    
}
