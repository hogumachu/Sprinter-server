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
            if let userID = try? req.query.decode(UserID.self) {
                return try await self.controller.missions(using: req, userID: userID)
            }
            
            if let categoryID = try? req.query.decode(CategoryID.self) {
                return try await self.controller.missions(using: req, categoryID: categoryID)
            }
            
            return try await self.controller.missions(using: req)
        }
        
        base.post("update") { req async throws in
            let update = try req.content.decode(MissionUpdate.self)
            try await self.controller.updateMission(using: req, update: update)
            return HTTPStatus.ok
        }
        
        base.post("create") { req async throws in
            try await self.controller.createMission(using: req)
            return HTTPStatus.ok
        }
        
        base.post("delete") { req async throws in
            let missionID = try req.content.decode(MissionID.self)
            try await self.controller.deleteMission(using: req, missionID: missionID)
            return HTTPStatus.ok
        }
    }
    
}
