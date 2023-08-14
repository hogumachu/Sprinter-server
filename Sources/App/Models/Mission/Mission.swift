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
    
    @Field(key: "is_succeeded")
    var isSucceeded: Bool
    
    @Field(key: "start_at")
    var startAt: Date
    
    @Field(key: "end_at")
    var endAt: Date
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    
    @Timestamp(key: "updated_at", on: .update)
    var updatedAt: Date?
    
    init() { }
    
    init(
        id: UUID? = nil,
        userID: UUID,
        mission: String,
        category: String,
        isCompleted: Bool,
        isSucceeded: Bool,
        startAt: Date,
        endAt: Date
    ) {
        self.id = id
        self.userID = userID
        self.mission = mission
        self.category = category
        self.isCompleted = isCompleted
        self.isSucceeded = isSucceeded
        self.startAt = startAt
        self.endAt = endAt
    }
    
}
