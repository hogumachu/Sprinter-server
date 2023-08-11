//
//  CompositionRoute.swift
//  
//
//  Created by 홍성준 on 2023/08/11.
//

import Vapor

public enum CompositionRoute {
    
    public static func routes(using app: Application) throws {
        try routeMission(using: app)
    }
    
    static func routeMission(using app: Application) throws {
        let controller: MissionController = MissionControllerImp()
        let router: MissionRouter = MissionRouterImp(controller: controller)
        try router.routes(using: app)
    }
    
}
