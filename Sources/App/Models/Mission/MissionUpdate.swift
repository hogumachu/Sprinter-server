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
    let category: String?
    let isCompleted: Bool?
    let isSucceeded: Bool?
    let targetAt: Date?
    
}

// MARK: - Mission+Update

extension Mission {
    
    func updating(_ updateModel: MissionUpdate) {
        mission = updateModel.mission ?? mission
        category = updateModel.category ?? category
        isCompleted = updateModel.isCompleted ?? isCompleted
        isSucceeded = updateModel.isSucceeded ?? isSucceeded
        targetAt = updateModel.targetAt ?? targetAt
    }
    
}
