//
//  MissionControllerImp.swift
//  
//
//  Created by 홍성준 on 2023/08/11.
//

import Vapor
import Fluent

final class MissionControllerImp: MissionController {
    
    func missions(using req: Request) async throws -> [Mission] {
        return try await Mission.query(on: req.db)
            .all()
    }
    
    func missions(using req: Request, userID: UserID) async throws -> [Mission] {
        return try await Mission.query(on: req.db)
            .filter(\.$userID == userID.id)
            .all()
    }
    
    func createMission(using req: Request) async throws {
        let mission = try req.content.decode(Mission.self)
        try await mission.create(on: req.db)
    }
    
}
