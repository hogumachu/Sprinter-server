//
//  MissionUpdate.swift
//  
//
//  Created by 홍성준 on 2023/08/11.
//

import Vapor

struct MissionUpdate: Content {
    
    let id: UUID
    let mission: String?
    let categoryID: Int?
    let isCompleted: Bool?
    let isSucceeded: Bool?
    let startAt: Date?
    let endAt: Date?
    
}

// MARK: - Mission+Update

extension Mission {
    
    func updating(_ updateModel: MissionUpdate) {
        mission = updateModel.mission ?? mission
        categoryID = updateModel.categoryID ?? categoryID
        isCompleted = updateModel.isCompleted ?? isCompleted
        isSucceeded = updateModel.isSucceeded ?? isSucceeded
        startAt = updateModel.startAt ?? startAt
        endAt = updateModel.endAt ?? endAt
    }
    
}
