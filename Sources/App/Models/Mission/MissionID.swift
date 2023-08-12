//
//  MissionID.swift
//  
//
//  Created by 홍성준 on 2023/08/11.
//

import Vapor

struct MissionID: Content {
    
    let id: UUID
    
    enum CodingKeys: String, CodingKey {
        case id = "missionID"
    }
    
}
