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
    
}
