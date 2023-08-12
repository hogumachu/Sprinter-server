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
    
    @Field(key: "category_id")
    var categoryID: Int
    
    @Field(key: "is_completed")
    var isCompleted: Bool
    
    @Field(key: "is_succeeded")
    var isSucceeded: Bool
    
    @Field(key: "target_at")
    var targetAt: Date
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    
    @Timestamp(key: "updated_at", on: .update)
    var updatedAt: Date?
    
    init() { }
    
    init(
        id: UUID? = nil,
        userID: UUID,
        mission: String,
        categoryID: Int,
        isCompleted: Bool,
        isSucceeded: Bool,
        targetAt: Date
    ) {
        self.id = id
        self.userID = userID
        self.mission = mission
        self.categoryID = categoryID
        self.isCompleted = isCompleted
        self.isSucceeded = isSucceeded
        self.targetAt = targetAt
    }
    
}
