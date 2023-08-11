//
//  Mission.swift
//  
//
//  Created by 홍성준 on 2023/08/11.
//

import Fluent
import Vapor

final class Mission: Model, Content {
    
    static let schema = "missions"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "user_id")
    var userID: UUID
    
    @Field(key: "mission")
    var mission: String
    
    @Field(key: "category")
    var category: String
    
    @Field(key: "is_completed")
    var isCompleted: Bool
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    
    @Timestamp(key: "updated_at", on: .update)
    var updatedAt: Date?
    
    
    init() { }
    
    init(id: UUID? = nil, userID: UUID, mission: String, category: String, isCompleted: Bool) {
        self.id = id
        self.userID = userID
        self.mission = mission
        self.category = category
        self.isCompleted = isCompleted
    }
    
}
