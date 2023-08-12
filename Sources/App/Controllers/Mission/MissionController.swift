//
//  MissionController.swift
//  
//
//  Created by 홍성준 on 2023/08/11.
//

import Vapor

protocol MissionController: AnyObject {
    
    func missions(using req: Request) async throws -> [Mission]
    func missions(using req: Request, userID: UserID) async throws -> [Mission]
    func missions(using req: Request, categoryID: CategoryID) async throws -> [Mission]
    func updateMission(using req: Request, update: MissionUpdate) async throws
    func createMission(using req: Request) async throws
    func deleteMission(using req: Request, missionID: MissionID) async throws
    
}
