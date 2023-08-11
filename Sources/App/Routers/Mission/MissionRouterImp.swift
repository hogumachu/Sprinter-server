//
//  MissionRouterImp.swift
//  
//
//  Created by 홍성준 on 2023/08/11.
//

import Vapor

final class MissionRouterImp: MissionRouter {
    
    private let controller: MissionController
    
    init(controller: some MissionController) {
        self.controller = controller
    }
    
    func routes(using app: Vapor.Application) throws {
        let base = app.grouped("mission")
        
        base.get { req async throws -> [Mission] in
            guard let userID = try? req.query.decode(UserID.self) else {
                return try await self.controller.missions(using: req)
            }
            return try await self.controller.missions(using: req, userID: userID)
        }
        
        base.post("create") { req async throws in
            try await self.controller.createMission(using: req)
            return HTTPStatus.ok
        }
    }
    
}
